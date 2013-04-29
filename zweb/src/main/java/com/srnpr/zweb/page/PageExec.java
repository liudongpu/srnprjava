package com.srnpr.zweb.page;

import java.util.List;
import java.util.Map;

import com.srnpr.zcom.base.BaseClass;
import com.srnpr.zcom.common.CommonConst;
import com.srnpr.zcom.enumer.EComConst;
import com.srnpr.zdata.manager.DataTableManager;
import com.srnpr.zdata.support.DataSupport;
import com.srnpr.zdata.support.TableSupport;
import com.srnpr.zweb.manager.WebViewManager;

public class PageExec extends BaseClass {



	public Object upDataFromFieldParams(String sSqlString)
	{
		int iFromIndex=sSqlString.indexOf("from");
		String sRightString=sSqlString.substring(iFromIndex+4).trim();
		String sTableName=sRightString.substring(0,sRightString.indexOf(" "));
		TableSupport tSupport=DataTableManager.Get(sTableName);
		
		List<Map<String, Object>> rList=tSupport.upListBySql(sSqlString);
		
		return rList;
	}
	
	
	public Object upConfigValue(String sConfigKey)
	{
		return BConfig(sConfigKey);
	}
	
	public Object upData(String sTableName,String... sArgs)
	{
		return DataTableManager.Get(sTableName).upListListByQuery(sArgs);
	}











}
