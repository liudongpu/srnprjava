package com.srnpr.zcom;

import com.srnpr.zcom.i.IBaseInit;
import com.srnpr.zcom.init.InitJunit;
import com.srnpr.zcom.manager.InitRoot;

public class TestBase {

	public  TestBase() {
		
		new InitJunit().Init();
		
	}

}
