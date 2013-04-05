package com.srnpr.zweb.page;

import java.util.HashMap;
import java.util.concurrent.ConcurrentHashMap;

import com.srnpr.zcom.common.ComFunction;
import com.srnpr.zcom.helper.FreemarkerHelper;
import com.srnpr.zcom.manager.ConfigCacheManager;
import com.srnpr.zweb.common.WebConst;

public class WebPage {

	
	
	
	
	
	public String GetPageHtml() {
		 
		HashMap<Object, Object> hPageTemp = new HashMap<Object, Object>();
		
		
		
		
		
		HashMap<Object, Object> hWebPage=new HashMap<Object, Object>();
		
		hWebPage.put("WebConfig", ConfigCacheManager.GetHash("zweb.webconfig"));
		
		hWebPage.put("PageConfig", WebConst.PageConfig());
		
		hWebPage.put("IncludePage", "web_admin_pagelogin.ftl");
		
		hPageTemp.put("WebPage", hWebPage);
		
		
		String sReturnString = FreemarkerHelper.GetStringFromTemp(
				WebConst.GetTempletePath(), "web_admin_pagebase.ftl", hPageTemp);
		
		
		return sReturnString;
		
		
	}
	
	
	
	
	
	
	
	
	
}
