package com.srnpr.zweb.common;

import java.util.HashMap;
import java.util.concurrent.ConcurrentHashMap;

import com.srnpr.zcom.i.IConstStatic;
import com.srnpr.zweb.enumer.EWebConst;

class ConstStatic implements IConstStatic {

	

	
	
	static ConcurrentHashMap<Object, Object> CONST_PAGE_CONFIG=new ConcurrentHashMap<Object, Object>();
	
	
	
	
	
	static ConcurrentHashMap<EWebConst, Object> CONST_WEB_CONST=new ConcurrentHashMap<EWebConst, Object>();
	
	
	
	
	
	
	
}
