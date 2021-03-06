package com.srnpr.zcom.manager;

import java.util.concurrent.ConcurrentHashMap;

import com.srnpr.zcom.i.IConstStatic;
import com.srnpr.zcom.top.TopStatic;


/**
 * @description 
 * @version 1.0
 * @author srnpr
 * @ClassName: ConstStatic
 * @update 2013-4-4 下午12:05:26
 */

class ConstStatic implements IConstStatic {




	/**
	 * @fields CONST_CONFIG_MAP 默认配置加载
	 */

	//static ConcurrentHashMap<String, String> CONST_CONFIG_MAP=new ConcurrentHashMap<String, String>();

	static ConcurrentHashMap<String, String> CONST_CONFIG_MAP=new TopStatic<ConcurrentHashMap<String, String>>().init("com.srnpr.zcom.manager.ConstStatic","CONST_CONFIG_MAP",new ConcurrentHashMap<String, String>());

	//static ConcurrentHashMap<String, ConcurrentHashMap<String, String>> CONST_CONFIG_HASH=new ConcurrentHashMap<String, ConcurrentHashMap<String,String>>();

	static ConcurrentHashMap<String, ConcurrentHashMap<String, String>> CONST_CONFIG_HASH=new TopStatic<ConcurrentHashMap<String, ConcurrentHashMap<String, String>>>().init("com.srnpr.zcom.manager.ConstStatic","CONST_CONFIG_HASH",new ConcurrentHashMap<String, ConcurrentHashMap<String, String>>());



	//static ConcurrentHashMap<String, String> CONST_COM_MESSAGE=new ConcurrentHashMap<String, String>();

	static ConcurrentHashMap<String, String> CONST_COM_MESSAGE=new TopStatic<ConcurrentHashMap<String, String>>().init("com.srnpr.zcom.manager.ConstStatic","CONST_COM_MESSAGE",new ConcurrentHashMap<String, String>());


}
