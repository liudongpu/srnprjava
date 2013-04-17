package com.srnpr.zweb.init;

import java.io.IOException;

import com.srnpr.zcom.base.BaseInit;
import com.srnpr.zcom.common.CommonConst;
import com.srnpr.zcom.enumer.EComConst;
import com.srnpr.zcom.i.IBaseInit;
import com.srnpr.zweb.common.WebConst;
import com.srnpr.zweb.enumer.EWebConst;
import com.srnpr.zweb.i.IWebInit;
import com.srnpr.zweb.manager.WebViewManager;
import com.srnpr.zweb.model.MWebConfig;
import com.srnpr.zweb.page.PageProcess;

public class InitZweb extends BaseInit implements IBaseInit,IWebInit {

	public synchronized void Init() {


		BDebug(967912002,this.getClass().getName());


		try {

			InitTemplete(BConfig("zweb.templeteclaspath"));
			
			
			WebConst.Put(EWebConst.base_page_url, CommonConst.Get(EComConst.server_web_name)+"/{0}/{1}-{2}-{3}-{4}");
			
			
			

			InitWeb();

			
			
			
			WebViewManager webViewManager=new WebViewManager();
			webViewManager.Init();

			InitClass("zweb.web_init");

			
			
			


		} catch (Exception e) {
			BError(e,967901001,e.getMessage());
		}

	}


	public void InitWeb() {

		MWebConfig mConfig=new MWebConfig();

		mConfig.setBaseInclude(BConfig("zweb.base_include"));

		WebConst.PutWebCnfig("zweb", mConfig);

		WebConst.PutWebProcess("zweb", new PageProcess());

	}

	void InitTemplete(String sClassPath) throws IOException {

		WebConst.Put(EWebConst.templete_path,BConfig("zweb.path_templete"));

	}


	

}
