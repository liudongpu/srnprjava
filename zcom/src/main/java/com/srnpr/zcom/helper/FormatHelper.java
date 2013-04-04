package com.srnpr.zcom.helper;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.apache.commons.lang.StringUtils;

public class FormatHelper {

	
	
	
	public static String StringJoin(Object[] oParams) {
		return StringUtils.join(oParams);
	}
	
	
	public static String GetDateTime()
	{
		return GetDateTime(new Date(), "yyyy-MM-dd HH:mm:ss");
	}
	
	public static String GetDateTime(Date dDate,String sPattern)
	{
		SimpleDateFormat sFormat = new SimpleDateFormat(sPattern);
		return sFormat.format(dDate);
	}
	
	
}
