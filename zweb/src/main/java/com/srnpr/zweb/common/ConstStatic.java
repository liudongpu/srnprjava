package com.srnpr.zweb.common;

import java.util.concurrent.ConcurrentHashMap;

import com.srnpr.zcom.i.IConstStatic;
import com.srnpr.zweb.enumer.EWebConst;
import com.srnpr.zweb.i.IWebProcess;
import com.srnpr.zweb.model.MWebConfig;

class ConstStatic implements IConstStatic {





	static ConcurrentHashMap<Object, Object> CONST_PAGE_CONFIG=new ConcurrentHashMap<Object, Object>();





	static ConcurrentHashMap<EWebConst, Object> CONST_WEB_CONST=new ConcurrentHashMap<EWebConst, Object>();




	static ConcurrentHashMap<String, MWebConfig> CONST_WEB_CONFIG=new ConcurrentHashMap<String, MWebConfig>();




	static ConcurrentHashMap<String, IWebProcess> CONST_WEB_PROCESS=new ConcurrentHashMap<String, IWebProcess>();




}
