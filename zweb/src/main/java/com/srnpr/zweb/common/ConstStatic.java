package com.srnpr.zweb.common;

import java.util.concurrent.ConcurrentHashMap;

import com.srnpr.zcom.i.IConstStatic;
import com.srnpr.zcom.top.TopStatic;
import com.srnpr.zweb.enumer.EWebConst;
import com.srnpr.zweb.i.IWebProcess;
import com.srnpr.zweb.model.MWebConfig;

class ConstStatic implements IConstStatic {





	//static ConcurrentHashMap<Object, Object> CONST_PAGE_CONFIG=new ConcurrentHashMap<Object, Object>();

	static ConcurrentHashMap<Object, Object> CONST_PAGE_CONFIG=new TopStatic<ConcurrentHashMap<Object, Object>>().init("com.srnpr.zweb.common.ConstStatic","CONST_PAGE_CONFIG",new ConcurrentHashMap<Object, Object>());




	//static ConcurrentHashMap<EWebConst, Object> CONST_WEB_CONST=new ConcurrentHashMap<EWebConst, Object>();


	static ConcurrentHashMap<EWebConst, Object> CONST_WEB_CONST=new TopStatic<ConcurrentHashMap<EWebConst, Object>>().init("com.srnpr.zweb.common.ConstStatic","CONST_WEB_CONST",new ConcurrentHashMap<EWebConst, Object>());


	//static ConcurrentHashMap<String, MWebConfig> CONST_WEB_CONFIG=new ConcurrentHashMap<String, MWebConfig>();

	static ConcurrentHashMap<String, MWebConfig> CONST_WEB_CONFIG=new TopStatic<ConcurrentHashMap<String, MWebConfig>>().init("com.srnpr.zweb.common.ConstStatic","CONST_WEB_CONFIG",new ConcurrentHashMap<String, MWebConfig>());



	//static ConcurrentHashMap<String, IWebProcess> CONST_WEB_PROCESS=new ConcurrentHashMap<String, IWebProcess>();


	static ConcurrentHashMap<String, IWebProcess> CONST_WEB_PROCESS=new TopStatic<ConcurrentHashMap<String, IWebProcess>>().init("com.srnpr.zweb.common.ConstStatic","CONST_WEB_PROCESS",new ConcurrentHashMap<String, IWebProcess>());


}
