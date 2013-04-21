package com.srnpr.zcom.model;

import com.srnpr.zcom.helper.JsonHelper;
import com.srnpr.zcom.manager.InfoCacheManager;

import freemarker.cache.MruCacheStorage;


 /**
 * @description 通用返回结果
 * @version 1.0
 * @author srnpr
 * @ClassName: MResult
 * @update 2013-4-19 下午10:17:19
 */
	
public class MResult
{

	
	
	
	
	 /**
	 * @fields flag  返回结果
	 */
		
	private boolean flag=true;
	
	
	 /**
	 * @fields errorMessage  失败消息
	 */
		
	private String infoMessage="";
	
	
	 /**
	 * @fields result 返回结果内容
	 */
		
	private Object result;
	
	
	 /**
	 * @fields infoCode  返回结果标识码  如果失败会返回失败编码
	 */
		
	private int infoCode=1;
	
	
	public void error(int iInfoId,String... sParams)
	{
		
		flag=false;
		info(iInfoId,sParams);
		
	}
	
	
	public void info(int iInfoId,String... sParams)
	{
		setInfoCode(iInfoId);
		setInfoMessage(InfoCacheManager.Get(iInfoId,sParams));
	}
	
	
	

	public boolean getFlag()
	{
	
		return flag;
	}

	public void setFlag(boolean flag)
	{
	
		this.flag = flag;
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




	

	
	
	
	public String ToJsonString()
	{
		return new JsonHelper<MResult>().ObjToString(this);
	}


	public String getInfoMessage() {
		return infoMessage;
	}


	public void setInfoMessage(String infoMessage) {
		this.infoMessage = infoMessage;
	}
	
	
	
	
	
	
	
}
