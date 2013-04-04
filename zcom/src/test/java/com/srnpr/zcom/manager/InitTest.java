package com.srnpr.zcom.manager;

import org.junit.Test;
import org.springframework.core.io.Resource;

import com.srnpr.zcom.TestBase;
import com.srnpr.zcom.common.ComFunction;
import com.srnpr.zcom.helper.FormatHelper;
import com.srnpr.zcom.helper.IoHelper;

public class InitTest extends TestBase {

	@Test
	public void test() {
		
		
		
		
		Resource[] resources=IoHelper.GetResource("classpath*:com/srnpr/*/zsrnpr/**/*.ftl");
		
		
		
		
	}

}
