package com.srnpr.zyou.page;

import org.junit.Test;

import com.srnpr.zweb.page.PageRequest;
import com.srnpr.zweb.page.WebPage;
import com.srnpr.zyou.TestBase;

public class TestPageCreate extends TestBase {


	@Test
	public void CreatePage()
	{

		PageRequest pRequest=new PageRequest();






		String sMeString=new WebPage().GetPageHtml("zyou", "put-a");

		BDebug(123, sMeString);

	}

}
