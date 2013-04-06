package com.srnpr.zweb.init;

import java.awt.List;
import java.io.IOException;
import java.util.ArrayList;
import java.util.concurrent.ConcurrentHashMap;

import org.springframework.core.io.Resource;

import com.srnpr.zcom.common.ComFunction;
import com.srnpr.zcom.common.CommonConst;
import com.srnpr.zcom.enumer.EComConst;
import com.srnpr.zcom.enumer.ERunType;
import com.srnpr.zcom.helper.HashHelper;
import com.srnpr.zcom.helper.IoHelper;
import com.srnpr.zcom.i.IBaseInit;
import com.srnpr.zcom.init.InitJunit;
import com.srnpr.zcom.manager.ConfigCacheManager;
import com.srnpr.zcom.model.MPropertiesHash;
import com.srnpr.zweb.common.WebConst;
import com.srnpr.zweb.enumer.EWebConst;

public class InitWeb implements IBaseInit {

	public synchronized void Init() {

		ComFunction.OutLog(this.getClass().getName());

		try {

			InitTemplete(ComFunction.ConfigValue("zweb.templeteclaspath"));

			InitPageConfig();

		} catch (Exception e) {
			ComFunction.ThrowError(e);
		}

	}

	@SuppressWarnings("unchecked")
	private void InitPageConfig() {

		WebConst.PageConfig().put("admin_include",
				ComFunction.ConfigHash("zweb.admin_include"));

		String sAdminTheamsPath =  ComFunction.ConfigValue("zweb.path_themes_admin_config");

		ArrayList<String> lCssList = new ArrayList<String>();
		ArrayList<String> lJsList = new ArrayList<String>();

		MPropertiesHash mTheamsHash = new HashHelper().getMPropertiesHash(
				sAdminTheamsPath, "");

		for (String s : HashHelper.GetStringFromCurrentHash(mTheamsHash
				.getChild().get("admin_css"))) {
			lCssList.add(ComFunction.ConfigValue("zweb.url_themes_admin") + s);
		}

		WebConst.PageConfig().put("admin_css", lCssList.toArray());

		for (String s : HashHelper.GetStringFromCurrentHash(
				ComFunction.ConfigHash("zweb.lib_jquery_js"),
				ComFunction.ConfigHash("zweb.lib_dojo_js"),
				ComFunction.ConfigHash("zweb.lib_zen_js"))) {
			lJsList.add(s);
		}

		WebConst.PageConfig().put("admin_js", lJsList.toArray());

	}

	void InitTemplete(String sClassPath) throws IOException {

		WebConst.Put(EWebConst.templete_path,
				ComFunction.ConfigValue("zweb.path_templete"));

	}

}
