package com.srnpr.yinfo.init;

import com.srnpr.yinfo.page.PageMethod;
import com.srnpr.yinfo.page.PageProcess;
import com.srnpr.zcom.base.BaseInit;
import com.srnpr.zcom.helper.HashHelper;
import com.srnpr.zcom.i.IBaseInit;
import com.srnpr.zcom.manager.ConfigCacheManager;
import com.srnpr.zcom.model.MPropertiesHash;
import com.srnpr.zweb.common.WebConst;
import com.srnpr.zweb.model.MWebConfig;

public class InitYinfo extends BaseInit implements IBaseInit {

	public void Init() {
		BDebug(967912002, this.getClass().getName());
		try {

			MWebConfig mConfig = new MWebConfig();

			ConfigCacheManager cManager = new ConfigCacheManager();

			for (String s : cManager.GetStrings("zweb.lib_bootstrap_css")) {
				mConfig.getSrcCss().add(s);
			}
			String sAdminTheamsPath = BConfig("yinfo.yinfo_css_config");

			HashHelper hashHelper = new HashHelper();

			MPropertiesHash mTheamsHash = hashHelper.upMPropertiesHash(
					sAdminTheamsPath, "");

			for (String s : hashHelper.upStringFromCurrentHash(mTheamsHash
					.getChild().get("site_css"))) {
				mConfig.getSrcCss().add(BConfig("yinfo.url_themes_site") + s);
			}

			

			for (String s : cManager.GetStrings("zweb.lib_jquery_js",
					"zyou.lib_jquery_pluging_js", "zweb.lib_bootstrap_js",
					"yinfo.lib_zen_js")) {
				mConfig.getSrcJs().add(s);
			}

			mConfig.setBaseInclude(BConfig("yinfo.base_include"));
			
			
			mConfig.setPageMethod(new PageMethod());

			WebConst.PutWebCnfig("yinfo", mConfig);

			WebConst.PutWebProcess("yinfo", new PageProcess());

		} catch (Exception e) {
			BError(e, 967901001, e.getMessage());
		}

	}

}
