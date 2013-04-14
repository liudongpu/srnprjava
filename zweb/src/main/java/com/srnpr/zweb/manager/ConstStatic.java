package com.srnpr.zweb.manager;

import java.util.concurrent.ConcurrentHashMap;

import com.srnpr.zcom.i.IConstStatic;
import com.srnpr.zweb.model.MWebView;

public class ConstStatic implements IConstStatic
{

	
	public static ConcurrentHashMap<String, MWebView> CONST_WEBVIEW_HASH=new ConcurrentHashMap<String, MWebView>();
	
	
}
