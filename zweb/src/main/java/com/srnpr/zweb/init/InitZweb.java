package com.srnpr.zweb.init;

import java.io.IOException;

import com.srnpr.zcom.base.BaseInit;
import com.srnpr.zcom.common.CommonConst;
import com.srnpr.zcom.enumer.EComConst;
import com.srnpr.zcom.i.IBaseInit;
import com.srnpr.zweb.common.WebConst;
import com.srnpr.zweb.enumer.EWebConst;
import com.srnpr.zweb.manager.WebViewManager;
import com.srnpr.zweb.model.MWebConfig;
import com.srnpr.zweb.page.PageProcess;

public class InitZweb extends BaseInit implements IBaseInit {

	public synchronized void Init() {


		BDebug(967912002,this.getClass().getName());


		try {

			InitTemplete(BConfig("zweb.templeteclaspath"));
			
			
			WebConst.Put(EWebConst.base_page_url, CommonConst.Get(EComConst.server_web_name)+"/{0}/{1}-{2}-{3}-{4}");
			
			
			

			InitPageConfig();

			
			
			
			WebViewManager webViewManager=new WebViewManager();
			webViewManager.Init();

			InitClass("zweb.web_init");

			
			
			WebConst.PutWebProcess("zweb", new PageProcess());


		} catch (Exception e) {
			BError(e,967901001);
		}

	}


	private void InitPageConfig() {

		MWebConfig mConfig=new MWebConfig();

		mConfig.setBaseInclude(BConfig("zweb.base_include"));

		WebConst.PutWebCnfig("zcom", mConfig);

		WebConst.PutWebProcess("zcom", new PageProcess());

	}

	void InitTemplete(String sClassPath) throws IOException {

		WebConst.Put(EWebConst.templete_path,BConfig("zweb.path_templete"));

	}

}
