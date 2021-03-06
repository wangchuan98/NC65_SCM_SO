package nc.bs.so.depmatrel.rule;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import nc.bs.ml.NCLangResOnserver;
import nc.impl.pubapp.pattern.rule.IRule;
import nc.itf.scmpub.reference.uap.bd.material.MaterialPubService;
import nc.vo.bd.material.MaterialVO;
import nc.vo.bd.material.sale.MaterialSaleVO;
import nc.vo.pub.BusinessException;
import nc.vo.pub.VOStatus;
import nc.vo.pubapp.pattern.exception.ExceptionUtils;
import nc.vo.pubapp.pattern.pub.PubAppTool;
import nc.vo.so.depmatrel.entity.DepMatRelBVO;
import nc.vo.so.depmatrel.entity.DepMatRelHVO;
import nc.vo.so.depmatrel.entity.DepMatRelVO;

/**
 * @description
 * 销售部门物料关系保存前检查物料是否分配到销售组织
 * @scene
 * 销售部门物料关系新增、修改保存前
 * @param
 * 无
 * @author gdsjw
 */
public class CheckInvSaleorgRule implements IRule<DepMatRelVO> {
  public CheckInvSaleorgRule() {
    //
  }

  @Override
  public void process(DepMatRelVO[] vos) {
    for (DepMatRelVO vo : vos) {
      // 这个是补全VO，校验时可能需要区分行状态
      this.checkInvSaleorg(vo);
    }
  }

  private void checkInvSaleorg(DepMatRelVO bill) {
    DepMatRelHVO header = bill.getParentVO();
    String pk_saleorg = header.getPk_org();

    List<String> materialvids = new ArrayList<String>();
    DepMatRelBVO[] items = bill.getChildrenVO();
    if ((items != null) && (items.length > 0)) {
      for (DepMatRelBVO item : items) {
        int vostatus = item.getStatus();
        if ((vostatus == VOStatus.DELETED) || (vostatus == VOStatus.UNCHANGED)) {
          // 不检查删除、没变化的行
          continue;
        }
        String material_v = item.getPk_material_v();
        if (!(PubAppTool.isNull(material_v))) {
          materialvids.add(material_v);
        }
      }
    }
    if (materialvids.size() == 0) {
      return;
    }
    String[] fields = new String[] {
      "pk_materialsale", "pk_material", "pk_group", "pk_org"
    };
    try {
      List<String> notsaleorgmaterialvids = new ArrayList<String>();
      Map<String, MaterialSaleVO> matsalMap =
          MaterialPubService.queryMaterialSaleInfoByPks(
              materialvids.toArray(new String[0]), pk_saleorg, fields);
      for (String materialvid : materialvids) {
        if ((matsalMap == null) || (!matsalMap.containsKey(materialvid))) {
          notsaleorgmaterialvids.add(materialvid);
        }
      }
      if (notsaleorgmaterialvids.size() > 0) {
        fields = new String[] {
          "code", "name"
        };
        MaterialVO[] materialvos =
            MaterialPubService.queryMaterialBaseInfoByPks(
                notsaleorgmaterialvids.toArray(new String[0]), fields);
        StringBuilder errmessage = new StringBuilder();
        /*errmessage.append("所选物料[");*//*多语修改*/
        for (MaterialVO materialvo : materialvos) {
          errmessage.append(materialvo.getCode()).append("(")
              .append(materialvo.getName()).append("),");
        }
        errmessage.deleteCharAt(errmessage.length() - 1);
        /* errmessage.append("]尚未分配到销售组织，不允许定义部门物料关系。");*//*多语修改*/
        /*throw new BusinessException(errmessage.toString());*//*多语修改*/
        throw new BusinessException(NCLangResOnserver.getInstance().getStrByID("4006007_0", "04006007-0015", null, new String[]{errmessage.toString()})/*所选物料[{0}]尚未分配到销售组织，不允许定义部门物料关系。*/); /*多语修改*/
      }
    }
    catch (BusinessException e) {
      ExceptionUtils.wrappException(e);
    }
  }

}
