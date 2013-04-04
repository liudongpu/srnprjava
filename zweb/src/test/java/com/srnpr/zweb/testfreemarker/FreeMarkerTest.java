package com.srnpr.zweb.testfreemarker;

import java.util.HashMap;
import java.util.concurrent.ConcurrentHashMap;

import org.junit.Test;
import com.srnpr.zcom.common.ComFunction;

import com.srnpr.zcom.enumer.EComConst;
import com.srnpr.zcom.helper.FreemarkerHelper;
import com.srnpr.zweb.TestBase;
import com.srnpr.zweb.common.WebConst;
import com.srnpr.zweb.page.WebPage;

public class FreeMarkerTest extends TestBase {

	@Test
	public void test() {

		
		
		
		ComFunction.OutLog(new WebPage().GetPageHtml());

	}

}
