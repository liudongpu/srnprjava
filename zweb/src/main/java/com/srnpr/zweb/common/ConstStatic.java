package com.srnpr.zweb.common;

import java.util.concurrent.ConcurrentHashMap;

import com.srnpr.zcom.i.IConstStatic;
import com.srnpr.zweb.enumer.EWebConst;

class ConstStatic implements IConstStatic {

	

	
	
	static ConcurrentHashMap<String, String> CONST_PAGE_CONFIG=new ConcurrentHashMap<String, String>();
	
	
	
	
	
	static ConcurrentHashMap<EWebConst, Object> CONST_WEB_CONST=new ConcurrentHashMap<EWebConst, Object>();
	
	
	
	
	
	
	
}
