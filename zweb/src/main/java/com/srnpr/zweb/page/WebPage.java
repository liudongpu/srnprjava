 package com.srnpr.zweb.page;

import java.util.HashMap;
import com.srnpr.zcom.base.BaseClass;
import com.srnpr.zcom.helper.FreemarkerHelper;
import com.srnpr.zdata.helper.DataHelper;
import com.srnpr.zweb.common.WebConst;
import com.srnpr.zweb.enumer.EWebConst;

public class WebPage extends BaseClass {

	
	
	
	
	
	public String GetPageHtml(String sUrl) {
		 
		HashMap<Object, Object> hPageTemp = new HashMap<Object, Object>();
		HashMap<Object, Object> hWebPage=new HashMap<Object, Object>();

		hWebPage.put("PageConfig", WebConst.PageConfig());
		
		
		
		
		
		HashMap<Object, Object> hPageInfo=new HashMap<Object, Object>();
		
		String[] sParams=sUrl.split("-");
		
		String sPageType=sParams[0];
		
		
		if(sPageType.equals("center"))
		{
			DataHelper dHelper=new DataHelper();
			hPageTemp.put("DataTable", dHelper.Get("zdata", "zdata_column"));
		}
		else if(sPageType.equals("list"))
		{
			
		}
		else if(sPageType.equals("put"))
		{
			DataHelper dHelper=new DataHelper();
			hWebPage.put("DataTable", dHelper.Get("zdata", "zdata_column","table_name","zdata_table"));
		}
		
		
		
		
		
		
		hPageInfo.put("PageInclude", "page_"+sPageType+".ftl");
		
		hWebPage.put("PageInfo", hPageInfo);
		
		hPageTemp.put("WebPage", hWebPage);
		
		FreemarkerHelper fHelper=new FreemarkerHelper();
		
		String sReturnString = fHelper.GetStringFromTemp(
				WebConst.Get(EWebConst.templete_path),BConfig("zweb.admin_page") , hPageTemp);
		
		
		return sReturnString;
		
		
	}
	
	
	
	
	
	
	
	
	
}
