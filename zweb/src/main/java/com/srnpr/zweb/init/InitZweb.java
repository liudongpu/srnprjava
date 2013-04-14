package com.srnpr.zweb.init;

import java.io.IOException;

import com.srnpr.zcom.base.BaseInit;
import com.srnpr.zcom.i.IBaseInit;
import com.srnpr.zweb.common.WebConst;
import com.srnpr.zweb.enumer.EWebConst;
import com.srnpr.zweb.model.MWebConfig;
import com.srnpr.zweb.page.PageProcess;

public class InitZweb extends BaseInit implements IBaseInit {

	public synchronized void Init() {


		BDebug(967912002,this.getClass().getName());


		try {

			InitTemplete(BConfig("zweb.templeteclaspath"));

			InitPageConfig();



			InitClass("zweb.web_init");



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
