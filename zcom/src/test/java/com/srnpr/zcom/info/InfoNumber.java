package com.srnpr.zcom.info;

import org.junit.Test;

import com.srnpr.zcom.base.BaseClass;
import com.srnpr.zcom.helper.FormatHelper;

public class InfoNumber extends BaseClass {


	@Test
	public void TestNumber()
	{
		long lNumber= FormatHelper.ConvertFormatStringNumber("ni", "abcdefghijklmnopqrstuvwxyz");

		BDebug(0,String.valueOf(lNumber));

		String sFormatString=FormatHelper.ConvertFormatStringNumber((double)699, "abcdefghijklmnopqrstuvwxyz");


		BDebug(0,sFormatString);


	}





}
