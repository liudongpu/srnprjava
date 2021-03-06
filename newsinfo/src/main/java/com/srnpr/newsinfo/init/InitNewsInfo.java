package com.srnpr.newsinfo.init;

import com.srnpr.newsinfo.page.PageProcess;
import com.srnpr.zcom.base.BaseInit;
import com.srnpr.zcom.helper.HashHelper;
import com.srnpr.zcom.i.IBaseInit;
import com.srnpr.zcom.manager.ConfigCacheManager;
import com.srnpr.zcom.model.MPropertiesHash;
import com.srnpr.zweb.common.WebConst;
import com.srnpr.zweb.model.MWebConfig;


public class InitNewsInfo extends BaseInit implements IBaseInit {

	public void Init() {




		MWebConfig mConfig=new MWebConfig();

		ConfigCacheManager cManager=new ConfigCacheManager();
		mConfig.setPageInclude(cManager.GetHash("zyou.admin_include"));

		String sAdminTheamsPath =BConfig("newsinfo.newsinfo_css_config");

		HashHelper hashHelper=new HashHelper();


		MPropertiesHash mTheamsHash = hashHelper.upMPropertiesHash(
				sAdminTheamsPath, "");

		for (String s : hashHelper.upStringFromCurrentHash(mTheamsHash
				.getChild().get("site_css"))) {
			mConfig.getSrcCss().add(BConfig("zweb.url_themes_site") + s);
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



		mConfig.setBaseInclude(BConfig("newsinfo.base_include"));



		WebConst.PutWebCnfig("newsinfo", mConfig);



		WebConst.PutWebProcess("newsinfo", new PageProcess());



	}






}
