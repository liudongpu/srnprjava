package com.srnpr.zweb.page;

import java.util.HashMap;

import com.srnpr.zcom.base.BaseClass;
import com.srnpr.zcom.helper.FreemarkerHelper;
import com.srnpr.zcom.model.MHashMap;
import com.srnpr.zweb.common.WebConst;
import com.srnpr.zweb.enumer.EWebConst;
import com.srnpr.zweb.enumer.EWebSet;
import com.srnpr.zweb.model.MWebConfig;
import com.srnpr.zweb.model.MWebPage;

public class WebPage extends BaseClass {



	public String GetPageHtml(PageRequest wRequest) {

		HashMap<Object, Object> hPageTemp = new HashMap<Object, Object>();

		HashMap<Object, Object> hWebPage = new HashMap<Object, Object>();



		MWebConfig mConfig=WebConst.GetWebConfig(wRequest.upSet(EWebSet.Url_Path));

		hWebPage.put("WebConfig", mConfig);


		MWebPage mPageInfo = WebConst.GetWebProcess(wRequest.upSet(EWebSet.Url_Path)).Process(wRequest);
		mPageInfo.setWebSet(wRequest.convertWebSet());


		hWebPage.put("PageInfo", mPageInfo);

		hPageTemp.put("WebPage", hWebPage);

		FreemarkerHelper fHelper = new FreemarkerHelper();

		String sReturnString = fHelper.GetStringFromTemp(
				WebConst.Get(EWebConst.templete_path),
				mConfig.getBaseInclude(), hPageTemp);

		return sReturnString;

	}


	public String GetPageHtml(String sPath,String sUrl,MHashMap cMap) {


		PageRequest wRequest=new PageRequest(cMap);
		wRequest.upSet(EWebSet.Url_Path, sPath);
		String[] sParams=sUrl.split("-");
		wRequest.upSet(EWebSet.Url_Target, sParams[0]);
		wRequest.upSet(EWebSet.Url_View, sParams[1]);

		if(sParams.length>2)
		{
			wRequest.upSet(EWebSet.Url_Option, sParams[2]);
			if(sParams.length>3)
			{
				wRequest.upSet(EWebSet.Url_Param, sParams[3]);
			}
		}
		
		
		return GetPageHtml(wRequest);

	}




	public String GetPageHtml(String sPath,String sUrl) {

		return GetPageHtml(sPath,sUrl,null);

	}

}
