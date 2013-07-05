package com.srnpr.zweb.manager;

import java.util.concurrent.ConcurrentHashMap;

import com.srnpr.zcom.i.IConstStatic;
import com.srnpr.zcom.top.TopStatic;
import com.srnpr.zweb.model.MWebSource;
import com.srnpr.zweb.model.MWebView;

public class ConstStatic implements IConstStatic
{

	
	 //static ConcurrentHashMap<String, MWebView> CONST_WEBVIEW_HASH=new ConcurrentHashMap<String, MWebView>();
	 static ConcurrentHashMap<String, MWebView> CONST_WEBVIEW_HASH=new TopStatic<ConcurrentHashMap<String, MWebView>>().init("com.srnpr.zweb.manager.ConstStatic","CONST_WEBVIEW_HASH",new ConcurrentHashMap<String, MWebView>());

	
	 //static ConcurrentHashMap<String, MWebSource> CONST_WEBSOURCE_HASH=new ConcurrentHashMap<String, MWebSource>();
	
	 static ConcurrentHashMap<String, MWebSource> CONST_WEBSOURCE_HASH=new TopStatic<ConcurrentHashMap<String, MWebSource>>().init("com.srnpr.zweb.manager.ConstStatic","CONST_WEBSOURCE_HASH",new ConcurrentHashMap<String, MWebSource>());

	
}
