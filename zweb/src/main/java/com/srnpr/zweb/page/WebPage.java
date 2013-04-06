package com.srnpr.zweb.page;

import java.util.HashMap;
import java.util.concurrent.ConcurrentHashMap;

import com.srnpr.zcom.common.ComFunction;
import com.srnpr.zcom.helper.FreemarkerHelper;
import com.srnpr.zcom.manager.ConfigCacheManager;
import com.srnpr.zweb.common.WebConst;
import com.srnpr.zweb.enumer.EWebConst;

public class WebPage {

	
	
	
	
	
	public String GetPageHtml() {
		 
		HashMap<Object, Object> hPageTemp = new HashMap<Object, Object>();
		
		
		
		
		
		HashMap<Object, Object> hWebPage=new HashMap<Object, Object>();

		hWebPage.put("PageConfig", WebConst.PageConfig());

		hPageTemp.put("WebPage", hWebPage);
		String sReturnString = FreemarkerHelper.GetStringFromTemp(
				WebConst.Get(EWebConst.templete_path), ComFunction.ConfigValue("zweb.admin_page"), hPageTemp);
		
		
		return sReturnString;
		
		
	}
	
	
	
	
	
	
	
	
	
}
