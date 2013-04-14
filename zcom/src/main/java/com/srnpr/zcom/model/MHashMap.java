package com.srnpr.zcom.model;

import java.util.ArrayList;
import java.util.Enumeration;
import java.util.concurrent.ConcurrentHashMap;

public class MHashMap extends ConcurrentHashMap<String, Object> {

	
	 /**
	 * @fields serialVersionUID
	 */
		
	private static final long serialVersionUID = 1L;

	
	
	public String[] GetKeys()
	{
		ArrayList< String> aKeys=new ArrayList<String>();
		Enumeration<String> eKey=this.keys();
		
		while (eKey.hasMoreElements()) {
			aKeys.add((String) eKey.nextElement());
			
		}
		
		return aKeys.toArray(new String[]{});

		
		
		
	}
	
	
	
	
	
	
	
}