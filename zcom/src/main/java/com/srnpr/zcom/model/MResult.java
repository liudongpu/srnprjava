package com.srnpr.zcom.model;

import com.srnpr.zcom.manager.InfoCacheManager;

public class MResult
{

	
	
	
	private boolean flag=true;
	
	private String errorMessage="";
	
	private Object result;
	
	private int infoCode=1;
	
	
	public void Error(int lId,String... sParams)
	{
		this.setInfoCode(lId);
		this.flag=false;
		this.errorMessage=InfoCacheManager.Get(lId,sParams);
		
	}
	
	
	

	public boolean getFlag()
	{
	
		return flag;
	}

	public void setFlag(boolean flag)
	{
	
		this.flag = flag;
	}

	public String getErrorMessage()
	{
	
		return errorMessage;
	}

	public void setErrorMessage(String errorMessage)
	{
	
		this.errorMessage = errorMessage;
	}

	public Object getResult()
	{
	
		return result;
	}

	public void setResult(Object result)
	{
	
		this.result = result;
	}




	public int getInfoCode()
	{

		return infoCode;
	}




	public void setInfoCode(int infoCode)
	{

		this.infoCode = infoCode;
	}

	
	
	
	
	
	
	
	
	
}
