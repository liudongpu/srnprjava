package com.srnpr.zweb.page;

import com.srnpr.zcom.base.BaseClass;
import com.srnpr.zcom.manager.ConfigCacheManager;
import com.srnpr.zdata.support.TableSupport;
import com.srnpr.zdata.manager.DataTableManager;
import com.srnpr.zdata.support.DataSupport;
import com.srnpr.zweb.enumer.EWebSet;
import com.srnpr.zweb.i.IWebProcess;
import com.srnpr.zweb.manager.WebViewManager;
import com.srnpr.zweb.model.MWebPage;
import com.srnpr.zweb.model.MWebView;

public class PageProcess extends BaseClass implements IWebProcess {

	public MWebPage Process(PageRequest wRequest) {


		MWebPage mWebPage=new MWebPage();
		String sPageView=wRequest.upSet(EWebSet.Url_View);
		String sPageTarget=wRequest.upSet(EWebSet.Url_Target);
		
		int iPageType=Integer.valueOf(ConfigCacheManager.GetHash("zdata.did_page_type").get(sPageTarget));
		
		
		
		if (iPageType==416103002)
		{
			MWebView mView = WebViewManager.Get(sPageView);
			
			DataSupport dSupport=new DataSupport();
			dSupport.Put(mView.getTableName(), wRequest.getReqMap());
		}
		else if (iPageType==416103003)
		{
			MWebView mView = WebViewManager.Get(sPageView);
			
			
			DataSupport dSupport=new DataSupport();
			dSupport.Post(mView.getTableName(), wRequest.getReqMap(),"zid");
		}








		return mWebPage;
	}

}
