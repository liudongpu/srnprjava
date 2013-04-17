package com.srnpr.zcom.model;

import java.util.concurrent.ConcurrentHashMap;


 /**
 * @description 配置专用存储结构   综合支持父子关系
 * @version 1.0
 * @author srnpr
 * @ClassName: MPropertiesHash
 * @update 2013-4-17 下午10:42:52
 */
	
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
