package nc.itf.so.m30;

import java.util.Map;

import nc.vo.pub.BusinessException;

/**
 * 销售订单等需要根据客户、销售组织及物料获取行上的发货库存组织、结算财务组织ID、应收组织ID、利润中心ID—功能/算法概述
 * <ol>
 * <li>调用公共服务获取发货库存组织
 * <li>调用公共服务获取结算财务组织ID、应收组织ID、利润中心ID
 * <li>--调用公共服务获取默认物流组织--modify by zhangby5 取默认物流组织要放在取仓库后做
 * </ol>
 * 
 * @since 6.0
 * @version 2011-7-29 下午15:05:00
 * @author 旷宗义
 * @see
 */
public interface IQueryRelationOrg {

  /**
   * 根据客户、销售组织及物料获取行上的发货库存组织、结算财务组织ID、应收组织ID、利润中心ID
   * 根据交易类型是否直运获取直运仓
   * 
   * @param transtypeID 交易类型ID
   * @param customerID 客户ID
   * @param saleOrg 销售组织
   * @param materialIDS 物料ID数组
   * @param sendStordocIDS 仓库所属库存组织数组
   * @return
   *         Map<Key：物料，Value：String[]{发货库存组织、结算财务组织ID、应收组织ID、利润中心ID、直运仓}
   *         >
   * @throws BusinessException
   * @see
   */
  Map<String, String[]> querySaleRelationOrg(String transtypeID,
      String customerID, String saleOrg, String[] materialIDS)
      throws BusinessException;

}
