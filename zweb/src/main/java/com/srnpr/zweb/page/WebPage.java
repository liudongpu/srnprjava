package com.srnpr.zweb.page;

import java.util.HashMap;
import com.srnpr.zcom.base.BaseClass;
import com.srnpr.zcom.helper.FreemarkerHelper;
import com.srnpr.zdata.helper.DataHelper;
import com.srnpr.zweb.common.WebConst;
import com.srnpr.zweb.enumer.EWebConst;
import com.srnpr.zweb.model.MWebConfig;
import com.srnpr.zweb.model.MWebPage;

public class WebPage extends BaseClass {

	
	
	public String GetPageHtml(String sPath, String sUrl) {

		HashMap<Object, Object> hPageTemp = new HashMap<Object, Object>();
		
		HashMap<Object, Object> hWebPage = new HashMap<Object, Object>();

		
		
		
		
		
		
		MWebConfig mConfig=WebConst.GetWebConfig(sPath);

		hWebPage.put("WebConfig", mConfig);


		MWebPage mPageInfo = WebConst.GetWebProcess(sPath).Process(sUrl);


		hWebPage.put("PageInfo", mPageInfo);

		hPageTemp.put("WebPage", hWebPage);

		FreemarkerHelper fHelper = new FreemarkerHelper();

		String sReturnString = fHelper.GetStringFromTemp(
				WebConst.Get(EWebConst.templete_path),
				mConfig.getBaseInclude(), hPageTemp);

		return sReturnString;

	}
	
	
	
	
	public String GetPageHtml(String sUrl) {

		HashMap<Object, Object> hPageTemp = new HashMap<Object, Object>();
		HashMap<Object, Object> hWebPage = new HashMap<Object, Object>();

		hWebPage.put("PageConfig", WebConst.PageConfig());

		MWebPage mPageInfo = new MWebPage();

		// HashMap<Object, Object> hPageInfo=new HashMap<Object, Object>();

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

		hWebPage.put("PageInfo", mPageInfo);

		hPageTemp.put("WebPage", hWebPage);

		FreemarkerHelper fHelper = new FreemarkerHelper();

		String sReturnString = fHelper.GetStringFromTemp(
				WebConst.Get(EWebConst.templete_path),
				BConfig("zweb.admin_page"), hPageTemp);

		return sReturnString;

	}

}
