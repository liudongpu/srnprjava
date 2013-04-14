package com.srnpr.zcom.model;

import java.util.concurrent.ConcurrentHashMap;

public class MPropertiesHash {



	private ConcurrentHashMap<String, String> keyValue=new ConcurrentHashMap<String, String>();

	public ConcurrentHashMap<String, String> getKeyValue() {
		return keyValue;
	}

	public void setKeyValue(ConcurrentHashMap<String, String> keyValue) {
		this.keyValue = keyValue;
	}



	public ConcurrentHashMap<String, ConcurrentHashMap<String, String>> getChild() {
		return child;
	}

	public void setChild(
			ConcurrentHashMap<String, ConcurrentHashMap<String, String>> child) {
		this.child = child;
	}



	private ConcurrentHashMap<String,ConcurrentHashMap<String,String>> child=new ConcurrentHashMap<String, ConcurrentHashMap<String,String>>();







}
