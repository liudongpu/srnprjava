package com.srnpr.zyou.page;

import org.junit.Test;

import com.srnpr.zcom.model.MHashMap;
import com.srnpr.zweb.page.WebPage;
import com.srnpr.zyou.TestBase;

public class TestPageCreate extends TestBase {


	
	public void CreatePage()
	{ 

		//String sMeString=new WebPage().GetPageHtml("zyou", "list-system_table");
		//String sMeString=new WebPage().upPageHtml("zyou", "edit-system_table-97b1bef4a90111e2bb7900241d8adc64-uid=9a4f1172a90111e2bb7900241d8adc62",new MHashMap());
		String sMeString=new WebPage().upPageHtml("zyou", "chart-system_fields-97b1be31a90111e2bb7900241d8adc62-view_code=system_table",new MHashMap());
		BDebug(123, sMeString);

	}

}
