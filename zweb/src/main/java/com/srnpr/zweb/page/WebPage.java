package com.srnpr.zweb.page;

import java.util.HashMap;
import java.util.Map;

import com.srnpr.zcom.base.BaseClass;
import com.srnpr.zcom.helper.FreemarkerHelper;
import com.srnpr.zcom.manager.ConfigCacheManager;
import com.srnpr.zcom.model.MHashMap;
import com.srnpr.zweb.common.WebConst;
import com.srnpr.zweb.enumer.EWebConst;
import com.srnpr.zweb.enumer.EWebSet;
import com.srnpr.zweb.model.MWebConfig;
import com.srnpr.zweb.model.MWebPage;

public class WebPage extends BaseClass {

	private String upPageHtml(PageRequest wRequest) {
		
		//if(wRequest.upSet(EWebSet.Url_Target))
		
		String sReturn=null;
		
		switch (wRequest.getDidPageType()) {
		case 416120106:
			sReturn=upPageJson(wRequest);
			break;
		default:
			sReturn=upPageObj(wRequest);
			break;
		}
		
		return sReturn;
	}
	
	private String upConvert(String sTempFile, Map<Object, Object> hPageTemp)
	{
		
		FreemarkerHelper fHelper = new FreemarkerHelper();

		String sReturnString = fHelper.GetStringFromTemp(
				WebConst.Get(EWebConst.templete_path),
				sTempFile, hPageTemp);

		return sReturnString;
	}
	
	
	private String upPageObj(PageRequest wRequest)
	{
		HashMap<Object, Object> hPageTemp = new HashMap<Object, Object>();
		HashMap<Object, Object> hWebPage = new HashMap<Object, Object>();
		MWebConfig mConfig = WebConst.GetWebConfig(wRequest
				.upSet(EWebSet.Url_Path));
		hWebPage.put("WebConfig", mConfig);
		MWebPage mPageInfo = WebConst.GetWebProcess(
				wRequest.upSet(EWebSet.Url_Path)).Process(wRequest);
		mPageInfo.setWebSet(wRequest.convertWebSet());
		hWebPage.put("PageInfo", mPageInfo);
		hPageTemp.put("WebPage", hWebPage);
		return upConvert(mConfig.getBaseInclude(), hPageTemp);
	}
	
	
	
	
	private String upPageJson(PageRequest wRequest)
	{
		HashMap<Object, Object> hPageTemp = new HashMap<Object, Object>();
		
		String sJsonInfo=WebConst.GetWebProcess(
				wRequest.upSet(EWebSet.Url_Path)).result(wRequest).ToJsonString();
		
		hPageTemp.put("WebPage", sJsonInfo);
		return upConvert(BConfig("zweb.base_include"), hPageTemp);
	}
	
	
	

	public String upPageHtml(String sPath, String sUrl, MHashMap cMap) {

		PageRequest wRequest = new PageRequest(cMap);
		wRequest.inSet(EWebSet.Url_Path, sPath);
		String[] sParams = sUrl.split("-");
		wRequest.inSet(EWebSet.Url_Target, sParams[0]);
		wRequest.inSet(EWebSet.Url_View, sParams[1]);
		
		wRequest.setDidPageType(Integer.valueOf(ConfigCacheManager.GetHash("zdata.did_page_type").get(wRequest.upSet(EWebSet.Url_Target))));
		
		

		if (sParams.length > 2) {
			wRequest.inSet(EWebSet.Url_Option, sParams[2]);
			if (sParams.length > 3) {
				wRequest.inSet(EWebSet.Url_Param, sParams[3]);
				
				wRequest.upParamsHashMap();
			}
		}
		
		
		

		return upPageHtml(wRequest);

	}

	

}
