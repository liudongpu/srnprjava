package com.srnpr.zcom.info;

import java.util.ArrayList;

import org.apache.commons.lang.StringUtils;
import org.junit.Test;

import com.srnpr.zcom.base.BaseClass;
import com.srnpr.zcom.helper.FormatHelper;

public class InfoNumber extends BaseClass {

	
	@Test
	public void TestNumber()
	{
		long lNumber= FormatHelper.ConvertFormatStringNumber("zzzz", "abcdefghijklmnopqrstuvwxyz");
		
		BDebug(0,String.valueOf(lNumber));
		
		String sFormatString=FormatHelper.ConvertFormatStringNumber((double)99999, "abcdefghijklmnopqrstuvwxyz");
		
		
		BDebug(0,sFormatString);
		
		
	}
	
	

	
	
}
