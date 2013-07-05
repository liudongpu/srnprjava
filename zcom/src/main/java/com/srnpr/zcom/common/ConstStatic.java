package com.srnpr.zcom.common;

import java.util.concurrent.ConcurrentHashMap;

import com.srnpr.zcom.enumer.EComConst;
import com.srnpr.zcom.i.IConstStatic;
import com.srnpr.zcom.top.TopStatic;

class ConstStatic implements IConstStatic {





	//static ConcurrentHashMap<EComConst, Object> CONST_COM_MAP=new ConcurrentHashMap<EComConst, Object>();



	static ConcurrentHashMap<EComConst, Object> CONST_COM_MAP=new TopStatic<ConcurrentHashMap<EComConst, Object>>().init("com.srnpr.zcom.common.ConstStatic","CONST_COM_MAP",new ConcurrentHashMap<EComConst, Object>());









}
