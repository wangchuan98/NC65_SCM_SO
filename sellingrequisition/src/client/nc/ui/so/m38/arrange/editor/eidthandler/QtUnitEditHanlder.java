package nc.ui.so.m38.arrange.editor.eidthandler;

import nc.ui.pub.bill.BillItem;
import nc.ui.pub.bill.BillListPanel;
import nc.ui.pubapp.billref.push.PushBillEvent;
import nc.ui.scmpub.ref.FilterMeasdocRefUtils;
import nc.ui.so.m38.arrange.pub.M38ArrangeModelCalculator;
import nc.ui.so.pub.keyvalue.ListKeyValue;
import nc.vo.pubapp.pattern.pub.PubAppTool;
import nc.vo.so.m30.entity.SaleOrderBVO;
import nc.vo.so.pub.enumeration.ListTemplateType;
import nc.vo.so.pub.keyvalue.IKeyValue;
import nc.vo.so.pub.rule.SOUnitChangeRateRule;

public class QtUnitEditHanlder {

  public void beforeEdit(BillListPanel listPanel, PushBillEvent e) {

    int row = e.getEditEvent().getRow();
    IKeyValue keyValue = new ListKeyValue(listPanel, row, ListTemplateType.SUB);
    String material =
        keyValue.getBodyStringValue(row, SaleOrderBVO.CMATERIALVID);
    if (!PubAppTool.isNull(material)) {
      // 物料不为空，只能参照物料对应的计量单位
      BillItem qtunititem = listPanel.getBodyItem(SaleOrderBVO.CQTUNITID);
      FilterMeasdocRefUtils astunitFilter =
          new FilterMeasdocRefUtils(qtunititem);
      astunitFilter.setMaterialPk(material);
      e.setEditable(Boolean.TRUE);
    }
    else {
      e.setEditable(Boolean.FALSE);
    }
  }

  public void afterEdit(BillListPanel listPanel, PushBillEvent e) {

    int row = e.getEditEvent().getRow();
    IKeyValue keyValue = new ListKeyValue(listPanel, row, ListTemplateType.SUB);

    int[] rows = new int[] {
      row
    };
    // 1.换算率
    SOUnitChangeRateRule raterule = new SOUnitChangeRateRule(keyValue);
    raterule.calcQtChangeRate(row);

    // 2.数量单价金额运算
    M38ArrangeModelCalculator calculator =
        new M38ArrangeModelCalculator(listPanel);
    calculator.calculate(rows, SaleOrderBVO.VQTUNITRATE);

  }
}
