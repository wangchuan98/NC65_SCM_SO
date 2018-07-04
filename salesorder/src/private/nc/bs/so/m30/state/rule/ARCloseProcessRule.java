package nc.bs.so.m30.state.rule;

import nc.vo.pub.BusinessException;
import nc.vo.so.m30.entity.SaleOrderBVO;
import nc.vo.so.m30.entity.SaleOrderViewVO;
import nc.vo.so.pub.votools.SoVoTools;

import nc.itf.so.m30.ref.so.m33.SOm33ServicesUtil;

import nc.pub.templet.converter.util.helper.ExceptionUtils;

import nc.pubitf.so.m4331.so.m30.IDeliveryFor30;

import nc.bs.framework.common.NCLocator;

import nc.impl.pubapp.pattern.rule.IRule;

/**
 * @description
 * 应收结算关闭后的处理
 * 1、订单结算关闭后出库单做过暂估应收需要生成对应的回冲应收单
 * 2、回写发货单的收入结算关闭状态
 * @scene
 * 应收结算关闭后
 * @param 
 * 无
 * @since 6.3
 * @version 2013-1-8 下午02:40:03
 * @author yaogj
 */
public class ARCloseProcessRule implements IRule<SaleOrderViewVO> {

  @Override
  public void process(SaleOrderViewVO[] vos) {
    String[] ordBids =
        SoVoTools.getVOsOnlyValues(vos, SaleOrderBVO.CSALEORDERBID);
    SOm33ServicesUtil.process4CAdjust(ordBids);

    IDeliveryFor30 srv = NCLocator.getInstance().lookup(IDeliveryFor30.class);
    try {
      srv.rewriteArSettle(vos);
    }
    catch (BusinessException ex) {
      ExceptionUtils.wrapException(ex);
    }
  }
}
