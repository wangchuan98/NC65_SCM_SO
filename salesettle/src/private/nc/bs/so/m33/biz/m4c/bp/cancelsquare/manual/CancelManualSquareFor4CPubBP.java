package nc.bs.so.m33.biz.m4c.bp.cancelsquare.manual;

import nc.bs.so.m33.biz.m4c.bp.cancelsquare.CancelSquareFor4CPubBP;
import nc.bs.so.m33.maintain.m4c.query.QuerySquare4CVOBizBP;
import nc.vo.so.m33.enumeration.SquareType;
import nc.vo.so.m33.m4c.entity.SquareOutBVO;
import nc.vo.so.m33.m4c.entity.SquareOutDetailVO;
import nc.vo.so.m33.m4c.entity.SquareOutVO;
import nc.vo.so.m33.m4c.entity.SquareOutVOUtils;
import nc.vo.so.m33.m4c.entity.SquareOutViewVO;
import nc.vo.so.pub.util.AggVOUtil;

public class CancelManualSquareFor4CPubBP {
  /**
   * 根据出库单结算类型取消出库单结算
   * 
   * @param vos -- 待取消结算的销售出库待结算view，并不一一对应明细记录的view
   */
  public void unSquare(SquareOutViewVO[] vos) {

    // 补充数据
    SquareOutVOUtils.getInstance().fill4CIDPkOrgToHead(vos);

    // 待结算单
    SquareOutVO[] sqvos = SquareOutVOUtils.getInstance().combineBill(vos);

    // 2.手工收入成本结算明细表vo
    String[] processeids =
        AggVOUtil.getDistinctItemFieldArray(sqvos, SquareOutBVO.PROCESSEID,
            String.class);
    String[] bids =
        AggVOUtil.getDistinctItemFieldArray(sqvos, SquareOutBVO.CSALESQUAREBID,
            String.class);
    QuerySquare4CVOBizBP qry = new QuerySquare4CVOBizBP();
    SquareOutDetailVO[] sqdvos =
        qry.queryManualDetailVOBySQType(processeids, bids, new SquareType[] {
          SquareType.SQUARETYPE_AR, SquareType.SQUARETYPE_IA
        });

    // 取消结算明细
    new CancelSquareFor4CPubBP().cancelSquare(sqdvos, sqvos);

  }
}
