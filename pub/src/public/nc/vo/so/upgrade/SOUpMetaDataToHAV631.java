package nc.vo.so.upgrade;

import java.io.File;

import nc.bs.framework.common.NCLocator;
import nc.bs.framework.common.RuntimeEnv;
import nc.bs.logging.Logger;
import nc.bs.sm.accountmanage.AbstractPatchInstall;
import nc.bs.sm.accountmanage.PatchInstallContext;
import nc.md.persist.designer.service.IPublishService;
import nc.vo.pub.BusinessException;

/**
 * 恒安补丁元数据升级类
 * 
 * @since 6.31
 * @version 2013-10-29 16:55:25
 * @author 刘景
 */
public class SOUpMetaDataToHAV631 extends AbstractPatchInstall {

  private IPublishService service;

  private final String[] bmfpath;

  /**
   * 构造子
   */
  public SOUpMetaDataToHAV631()

  {
    this.bmfpath =
        new String[] {
          "/modules/so/METADATA/enum/so_enum.bmf".replace('/',
            File.separatorChar),
          "/modules/so/METADATA/ardeduction/ardeduction.bmf".replace('/',
              File.separatorChar),
          "/modules/so/METADATA/m35trantype/m35trantype.bmf".replace('/',
              File.separatorChar),
          "/modules/so/METADATA/m30trantype/m30trantype.bmf".replace('/',
              File.separatorChar),
          "/modules/so/METADATA/SO_SaleOrder/saleorder.bmf".replace('/',
              File.separatorChar)
        };
  }

  @Override
  public void pulishMetaData(PatchInstallContext context)
      throws BusinessException {
    String path;
    StringBuilder destPath;
    String nchome = RuntimeEnv.getInstance().getNCHome();
    String[] arr = this.bmfpath;
    int len = arr.length;
    for (int i = 0; i < len; ++i) {
      path = arr[i];
      destPath = new StringBuilder(nchome);
      destPath.append(path);

      Logger.info(new StringBuilder().append("发布元数据：")
          .append(destPath.toString()).toString());/*-=notranslate=-*/
      this.getPublishService().publishMetaDataForBMF(destPath.toString());
    }
  }

  /**
   * 
   * @return IPublishService
   */
  public IPublishService getPublishService() {
    if (this.service == null) {
      this.service = NCLocator.getInstance().lookup(IPublishService.class);
    }
    return this.service;
  }

}
