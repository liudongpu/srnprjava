package com.srnpr.zyou.page;

import com.srnpr.zcom.base.BaseClass;
import com.srnpr.zdata.helper.DataHelper;
import com.srnpr.zweb.i.IWebProcess;
import com.srnpr.zweb.model.MWebPage;

public class PageProcess extends BaseClass implements IWebProcess {

	public MWebPage Process(String sUrl) {

		
		MWebPage mPageInfo=new MWebPage();
		
		String[] sParams = sUrl.split("-");
		
		String sPageType = sParams[0];

		if (sPageType.equals("center")) {
			DataHelper dHelper = new DataHelper();

			mPageInfo.setPageData(dHelper.Get("zdata", "zdata_column"));
		} else if (sPageType.equals("list")) {
			DataHelper dHelper = new DataHelper();
			mPageInfo.setPageData(dHelper.Get("zdata", "zdata_column",
					"table_name", "zdata_column"));
		} else if (sPageType.equals("put")) {
			DataHelper dHelper = new DataHelper();
			mPageInfo.setPageData(dHelper.Get("zdata", "zdata_column",
					"table_name", "zdata_column"));
		} else if (sPageType.equals("post")) {
			DataHelper dHelper = new DataHelper();
			mPageInfo.setPageData(dHelper.Get("zdata", "zdata_column",
					"table_name", "zdata_column"));
		}

		// hPageInfo.put("PageInclude", "page_"+sPageType+".ftl");

		mPageInfo.setPageInclude("page_" + sPageType + ".ftl");
		
		
		return mPageInfo;
	}

}
