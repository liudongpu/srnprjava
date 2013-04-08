package com.srnpr.zweb.init;

import java.io.IOException;
import java.util.ArrayList;

import com.srnpr.zcom.base.BaseClass;
import com.srnpr.zcom.common.ComFunction;
import com.srnpr.zcom.helper.HashHelper;
import com.srnpr.zcom.i.IBaseInit;
import com.srnpr.zcom.manager.ConfigCacheManager;
import com.srnpr.zcom.model.MPropertiesHash;
import com.srnpr.zweb.common.WebConst;
import com.srnpr.zweb.enumer.EWebConst;

public class InitWeb extends BaseClass implements IBaseInit {

	public synchronized void Init() {


		BDebug(967912002,this.getClass().getName());
		

		try {

			InitTemplete(BConfig("zweb.templeteclaspath"));

			InitPageConfig();

		} catch (Exception e) {
			BError(e,967901001);
		}

	}

	
	private void InitPageConfig() {

		ConfigCacheManager cManager=new ConfigCacheManager();
		
		WebConst.PageConfig().put("admin_include",
				cManager.GetHash("zweb.admin_include"));

		String sAdminTheamsPath =BConfig("zweb.path_themes_admin_config");

		ArrayList<String> lCssList = new ArrayList<String>();
		ArrayList<String> lJsList = new ArrayList<String>();

		
		HashHelper hashHelper=new HashHelper();
		
		
		
		
		MPropertiesHash mTheamsHash = hashHelper.getMPropertiesHash(
				sAdminTheamsPath, "");

		for (String s : hashHelper.GetStringFromCurrentHash(mTheamsHash
				.getChild().get("admin_css"))) {
			lCssList.add(BConfig("zweb.url_themes_admin") + s);
		}

		for (String s : cManager.GetStrings("zweb.lib_bootstrap_css")) {
			lCssList.add(s);
		}

		WebConst.PageConfig().put("admin_css", lCssList.toArray());

		for (String s : cManager.GetStrings(
				"zweb.lib_jquery_js",
				"zweb.lib_bootstrap_js",
				"zweb.lib_zen_js")) {
			lJsList.add(s);
		}

		WebConst.PageConfig().put("admin_js", lJsList.toArray());

	}

	void InitTemplete(String sClassPath) throws IOException {

		WebConst.Put(EWebConst.templete_path,BConfig("zweb.path_templete"));
	
	}

}
