package com.srnpr.zyou.page;

import com.srnpr.zcom.base.BaseClass;
import com.srnpr.zdata.helper.DataHelper;
import com.srnpr.zweb.enumer.EWebRequest;
import com.srnpr.zweb.i.IWebProcess;
import com.srnpr.zweb.model.MWebPage;
import com.srnpr.zweb.page.PageRequest;

public class PageProcess extends BaseClass implements IWebProcess {

	public MWebPage Process(PageRequest wRequest) {

		
		MWebPage mPageInfo=new MWebPage();
		
		String sPageTarget =wRequest.Get(EWebRequest.Url_Target);

		if (sPageTarget.equals("center")) {
			DataHelper dHelper = new DataHelper();

			mPageInfo.setPageData(dHelper.Get("zdata", "zdata_column"));
		} else if (sPageTarget.equals("list")) {
			DataHelper dHelper = new DataHelper();
			mPageInfo.setPageData(dHelper.Get("zdata", "zdata_column",
					"table_name", "zdata_column"));
		} else if (sPageTarget.equals("put")) {
			DataHelper dHelper = new DataHelper();
			mPageInfo.setPageData(dHelper.Get("zdata", "zdata_column",
					"table_name", "zdata_column"));
		} else if (sPageTarget.equals("post")) {
			DataHelper dHelper = new DataHelper();
			mPageInfo.setPageData(dHelper.Get("zdata", "zdata_column",
					"table_name", "zdata_column"));
		}

		// hPageInfo.put("PageInclude", "page_"+sPageType+".ftl");

		mPageInfo.setPageInclude("page_" + sPageTarget + ".ftl");
		
		
		return mPageInfo;
	}

}
