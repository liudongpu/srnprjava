package com.srnpr.zcom.helper;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.srnpr.zcom.base.BaseClass;

public class JsonHelper<T> extends BaseClass {

	
	
	public String ObjToString(T oInput)
	{
		ObjectMapper om=new ObjectMapper ();
		
		String sResponseString=null;
		try {
			sResponseString=om.writeValueAsString(oInput);
		} catch (JsonProcessingException e) {
		
			BError(e,967901006);
			
		}
		
		return sResponseString;
	}
	
	
	public T StringToObj(String sInput,T t)
	{
		//T t=null;
		
		ObjectMapper om=new ObjectMapper ();
		try {
			
			

			t=(T) om.readValue(sInput,t.getClass());
		} catch (Exception e) {
			
			BError(e,967901006);
		} 
		
		
		return t;
		
	}
	
	
}
