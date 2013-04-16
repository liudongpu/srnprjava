package com.srnpr.zweb.page;

import com.srnpr.zcom.base.BaseClass;
import com.srnpr.zcom.manager.ConfigCacheManager;
import com.srnpr.zdata.helper.DataHelper;
import com.srnpr.zdata.manager.DataTableManager;
import com.srnpr.zdata.support.DataSupport;
import com.srnpr.zweb.enumer.EWebRequest;
import com.srnpr.zweb.i.IWebProcess;
import com.srnpr.zweb.manager.WebViewManager;
import com.srnpr.zweb.model.MWebPage;
import com.srnpr.zweb.model.MWebView;

public class PageProcess extends BaseClass implements IWebProcess {

	public MWebPage Process(PageRequest wRequest) {


		MWebPage mWebPage=new MWebPage();


		String sPageView=wRequest.Get(EWebRequest.Url_View);
		String sPageTarget=wRequest.Get(EWebRequest.Url_Target);
		
		int iPageType=Integer.valueOf(ConfigCacheManager.GetHash("zdata.did_page_type").get(sPageTarget));
		
		if (iPageType==416103002)
		{
			DataSupport dSupport=new DataSupport();
			dSupport.Put("zdata_column", wRequest.getReqMap());
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
