package com.srnpr.zyou.page;

import org.junit.Test;

import com.srnpr.zcom.model.MHashMap;
import com.srnpr.zweb.page.WebPage;
import com.srnpr.zyou.TestBase;

public class TestPageCreate extends TestBase {


	@Test
	public void CreatePage()
	{ 

		//String sMeString=new WebPage().GetPageHtml("zyou", "list-system_table");
		String sMeString=new WebPage().upPageHtml("zyou", "list-system_fields-uuid-zid=44&ab=55",new MHashMap());
		BDebug(123, sMeString);

	}

}
