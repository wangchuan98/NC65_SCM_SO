package nc.bs.so.m33.biz.m32.rule.toar;

import nc.impl.pubapp.pattern.rule.IRule;
import nc.itf.so.m33.ref.so.m30.SOSaleOrderServicesUtil;
import nc.pubitf.so.m30.balend.BalEndPara;
import nc.vo.pub.BusinessException;
import nc.vo.pubapp.pattern.exception.ExceptionUtils;
import nc.vo.so.m30.balend.enumeration.BalEndTrigger;
import nc.vo.so.m33.m32.entity.SquareInvBVO;
import nc.vo.so.m33.m32.entity.SquareInvVO;
import nc.vo.so.pub.util.AggVOUtil;

/**
 * @description
 * 销售发票应收结算关闭处理规则
 * 此规则一定是在结算最后调用（各种上游回写都已经完成）
 * @scene
 * 销售发票应收结算关闭后
 * @param
 * 无
 * @since 6.0
 * @version 2011-7-23 下午01:11:53
 * @author zhangcheng
 */
public class SquareARCloseFor32Rule implements IRule<SquareInvVO> {

  @Override
  public void process(SquareInvVO[] vos) {
    // 源头销售订单表体id
    String[] orderbids =
        AggVOUtil.getDistinctItemFieldArray(vos, SquareInvBVO.CFIRSTBID,
            String.class);
    BalEndTrigger trigger = BalEndTrigger.VOICE_INCOME;
    BalEndPara para = new BalEndPara(orderbids, trigger);
    try {
      SOSaleOrderServicesUtil.processAutoBalEnd(para);
    }
    catch (BusinessException e) {
      ExceptionUtils.wrappException(e);
    }
  }

}
