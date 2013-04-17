package com.srnpr.zyou.init;

import com.srnpr.zcom.base.BaseInit;
import com.srnpr.zcom.helper.HashHelper;
import com.srnpr.zcom.i.IBaseInit;
import com.srnpr.zcom.manager.ConfigCacheManager;
import com.srnpr.zcom.model.MPropertiesHash;
import com.srnpr.zweb.common.WebConst;
import com.srnpr.zweb.model.MWebConfig;
import com.srnpr.zyou.page.PageProcess;

public class InitZyou extends BaseInit implements IBaseInit {

	public void Init() {




		MWebConfig mConfig=new MWebConfig();

		ConfigCacheManager cManager=new ConfigCacheManager();
		mConfig.setPageInclude(cManager.GetHash("zyou.admin_include"));

		String sAdminTheamsPath =BConfig("zyou.path_themes_admin_config");

		HashHelper hashHelper=new HashHelper();


		MPropertiesHash mTheamsHash = hashHelper.upMPropertiesHash(
				sAdminTheamsPath, "");

		for (String s : hashHelper.upStringFromCurrentHash(mTheamsHash
				.getChild().get("admin_css"))) {
			mConfig.getSrcCss().add(BConfig("zweb.url_themes_admin") + s);
		}

		for (String s : cManager.GetStrings("zweb.lib_bootstrap_css")) {
			mConfig.getSrcCss().add(s);
		}


		for (String s : cManager.GetStrings(
				"zweb.lib_jquery_js",
				"zyou.lib_jquery_pluging_js",
				"zweb.lib_bootstrap_js",
				"zweb.lib_zen_js"
				)) {
			mConfig.getSrcJs().add(s);
		}



		mConfig.setBaseInclude(BConfig("zyou.base_include"));



		WebConst.PutWebCnfig("zyou", mConfig);



		WebConst.PutWebProcess("zyou", new PageProcess());



	}






}
