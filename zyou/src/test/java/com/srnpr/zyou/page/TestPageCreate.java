package com.srnpr.zyou.page;

import org.junit.Test;

import com.srnpr.zweb.page.WebPage;
import com.srnpr.zyou.TestBase;

public class TestPageCreate extends TestBase {


	@Test
	public void CreatePage()
	{

		//String sMeString=new WebPage().GetPageHtml("zyou", "list-system_table");
		String sMeString=new WebPage().GetPageHtml("zyou", "post-system_table-122-1");
		BDebug(123, sMeString);

	}

}
