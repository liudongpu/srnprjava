package com.srnpr.yinfo.page;

import com.srnpr.zcom.model.MResult;
import com.srnpr.zweb.enumer.EWebSet;
import com.srnpr.zweb.i.IWebProcess;
import com.srnpr.zweb.model.MWebPage;
import com.srnpr.zweb.page.PageRequest;

public class PageProcess implements IWebProcess {

	public MWebPage Process(PageRequest wRequest) {
		MWebPage mPageInfo = new MWebPage();

		mPageInfo.setPageInclude(wRequest.upSet(EWebSet.Url_Target));
		
		return mPageInfo;
	}

	public MResult result(PageRequest pRequest) {
		MResult mResult = new MResult();
		return mResult;
	}

}
