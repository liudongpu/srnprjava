package com.srnpr.zweb.page;

import com.srnpr.zcom.manager.ConfigCacheManager;
import com.srnpr.zcom.model.MResult;
import com.srnpr.zdata.support.DataSupport;
import com.srnpr.zweb.enumer.EWebSet;
import com.srnpr.zweb.i.IWebProcess;
import com.srnpr.zweb.manager.WebViewManager;
import com.srnpr.zweb.model.MWebPage;
import com.srnpr.zweb.model.MWebView;
import com.srnpr.zweb.process.WebBaseProcess;

public class PageProcess extends WebBaseProcess implements IWebProcess {

	public MWebPage Process(PageRequest wRequest) {

		MWebPage mWebPage=new MWebPage();
		

		return mWebPage;
	}

	public MResult result(PageRequest pRequest) {
		
		return super.showResult(pRequest);
	}

	

}
