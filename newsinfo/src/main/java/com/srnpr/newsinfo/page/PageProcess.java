
package com.srnpr.newsinfo.page;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.srnpr.zcom.init.InitRoot;
import com.srnpr.zcom.model.MResult;
import com.srnpr.zdata.manager.DataTableManager;
import com.srnpr.zdata.support.TableSupport;
import com.srnpr.zweb.enumer.EWebSet;
import com.srnpr.zweb.i.IWebProcess;
import com.srnpr.zweb.manager.WebViewManager;
import com.srnpr.zweb.model.MWebElement;
import com.srnpr.zweb.model.MWebPage;
import com.srnpr.zweb.model.MWebView;
import com.srnpr.zweb.page.PageRequest;
import com.srnpr.zweb.process.WebBaseProcess;

public class PageProcess extends WebBaseProcess implements IWebProcess
{

	public MWebPage Process(PageRequest wRequest)
	{

		return super.ShowHtml(wRequest);
	}

	public MResult result(PageRequest pRequest) {
		
		
		
			return super.showResult(pRequest);
		

	}

}
