package nc.ui.so.m32.billref.it01;


import nc.bs.framework.common.NCLocator;
import nc.itf.lm.IUpRefQueyServiceJgqsbgb;
import nc.itf.so.m32.ISaleInvoiceMaintain;
import nc.ui.pubapp.uif2app.query2.model.IRefQueryService;
import nc.ui.querytemplate.querytree.IQueryScheme;
import nc.vo.it.ctjsd.AggCtjsdHeadVO;
import nc.vo.it.yljsd.AggYljsd;
import nc.vo.lm.ysjh.AggYsjhHeadVO;
import nc.vo.pub.BusinessException;
import nc.vo.pubapp.pattern.exception.ExceptionUtils;

public class IT01QueryServiceForM32 implements IRefQueryService{
	
	@Override
	public Object[] queryByQueryScheme(IQueryScheme queryScheme)
			throws Exception {
		AggCtjsdHeadVO[] retbills = null;
		ISaleInvoiceMaintain service = NCLocator.getInstance().lookup(
				ISaleInvoiceMaintain.class);
		try {
			retbills = service.queryIT01ForM32(queryScheme);
		} catch (BusinessException e) {
			ExceptionUtils.wrappException(e);
		}
		return retbills;
	}

	// IRefQueryService不集成IQueryService时可以删除
	@Override
	public Object[] queryByWhereSql(String whereSql) throws Exception {
		return null;
	}

}
