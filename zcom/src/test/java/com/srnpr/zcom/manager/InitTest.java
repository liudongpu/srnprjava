package com.srnpr.zcom.manager;

import static org.junit.Assert.*;

import org.junit.Test;

import com.srnpr.zcom.TestBase;
import com.srnpr.zcom.common.ComFunction;
import com.srnpr.zcom.helper.FormatHelper;
import com.srnpr.zcom.helper.HashHelper;
import com.srnpr.zcom.i.IBaseInit;

public class InitTest extends TestBase {

	@Test
	public void test() {
		
		
		
		
		ComFunction.OutLog(FormatHelper.StringJoin(ComFunction.ConfigArray("zsrnpr.jskey")));
		
	}

}
