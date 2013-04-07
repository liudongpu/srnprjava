package com.srnpr.zweb.page;

import java.util.HashMap;
import com.srnpr.zcom.base.BaseClass;
import com.srnpr.zcom.helper.FreemarkerHelper;
import com.srnpr.zweb.common.WebConst;
import com.srnpr.zweb.enumer.EWebConst;

public class WebPage extends BaseClass {

	
	
	
	
	
	public String GetPageHtml() {
		 
		HashMap<Object, Object> hPageTemp = new HashMap<Object, Object>();
		
		
		
		HashMap<Object, Object> hWebPage=new HashMap<Object, Object>();

		hWebPage.put("PageConfig", WebConst.PageConfig());

		hPageTemp.put("WebPage", hWebPage);
		
		FreemarkerHelper fHelper=new FreemarkerHelper();
		
		String sReturnString = fHelper.GetStringFromTemp(
				WebConst.Get(EWebConst.templete_path),BConfig("zweb.admin_page") , hPageTemp);
		
		
		return sReturnString;
		
		
	}
	
	
	
	
	
	
	
	
	
}
