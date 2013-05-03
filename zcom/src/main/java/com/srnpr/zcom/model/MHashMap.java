package com.srnpr.zcom.model;

import java.util.ArrayList;
import java.util.Enumeration;
import java.util.concurrent.ConcurrentHashMap;

public class MHashMap extends ConcurrentHashMap<String, Object> {

	/**
	 * @fields serialVersionUID
	 */

	private static final long serialVersionUID = 1L;

	public String[] GetKeys() {
		ArrayList<String> aKeys = new ArrayList<String>();
		Enumeration<String> eKey = this.keys();

		while (eKey.hasMoreElements()) {
			aKeys.add(eKey.nextElement());

		}
		return aKeys.toArray(new String[] {});

	}
	
	
	
	public void inAdd(Object... oArgs)
	{
		for(int i=0,j=oArgs.length;i<j;i=i+2)
		{
			this.put(oArgs[i].toString(), oArgs[i+1]);
		}
	}
	
	

}
