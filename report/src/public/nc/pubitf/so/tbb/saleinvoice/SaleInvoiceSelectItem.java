package nc.pubitf.so.tbb.saleinvoice;

import java.util.HashMap;
import java.util.Map;

import nc.itf.scmpub.tbb.ITbbSelectItem;
import nc.vo.so.m32.entity.SaleInvoiceBVO;

public class SaleInvoiceSelectItem implements ITbbSelectItem {

  private String getTaxMnyKey(String currtype) {

    int type = Integer.valueOf(currtype).intValue();
    if (type == 0) {
      return SaleInvoiceBVO.NGLOBALTAXMNY;
    }
    else if (type == 1) {
      return SaleInvoiceBVO.NGROUPTAXMNY;
    }
    else if (type == 2) {
      return SaleInvoiceBVO.NTAXMNY;
    }
    else {
      return SaleInvoiceBVO.NORIGTAXMNY;
    }
  }

  private String getMnyKey(String currtype) {

    int type = Integer.valueOf(currtype).intValue();
    if (type == 0) {
      return SaleInvoiceBVO.NGLOBALMNY;
    }
    else if (type == 1) {
      return SaleInvoiceBVO.NGROUPMNY;
    }
    else if (type == 2) {
      return SaleInvoiceBVO.NMNY;
    }
    else {
      return SaleInvoiceBVO.NORIGMNY;
    }

  }

  @Override
  public int[] getSumKeyIndex(String controlobj, String currtype) {
    int[] index = new int[1];
    index[0] = Integer.valueOf(currtype).intValue();
    return index;
  }

  @Override
  public String[] getSumKey(String controlobj, String currtype) {

    String[] metapath = new String[1];
    if (SaleInvoiceBVO.NORIGMNY.equals(controlobj)) {
      metapath[0] = this.getMnyKey(currtype);
    }
    else if (SaleInvoiceBVO.NORIGTAXMNY.equals(controlobj)) {
      metapath[0] = this.getTaxMnyKey(currtype);
    }
    else {
      metapath[0] = SaleInvoiceBVO.NNUM;
    }
    return metapath;

  }

  @Override
  public String[] getGroupKey(String controlobj, String currtype) {
    return null;
  }

  @Override
  public Map<String, String> getSelectItemMetaPathMap(String controlobj,
      String currtype) {
    Map<String, String> mapmaetpath = new HashMap<String, String>();
    String[] sumkey = this.getSumKey(controlobj, currtype);
    for (String key : sumkey) {
      mapmaetpath.put(key, SaleInvoiceBVO.MAINMETAPATH + key);
    }
    return mapmaetpath;
  }
}
