package com.srnpr.zdata.helper;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.apache.commons.lang.StringUtils;
import com.srnpr.zcom.base.BaseClass;
import com.srnpr.zcom.model.MHashMap;
import com.srnpr.zdata.manager.DataBaseManager;
import com.srnpr.zdata.manager.DataTableManager;
import com.srnpr.zdata.model.MDataTable;
import com.srnpr.zdata.process.DataProcess;

public class DataHelper extends DataProcess {

	
	private  MDataTable tableInfo=null;
	
	
	public  DataHelper(String sTableName)
	{
		tableInfo=DataTableManager.GetTable(sTableName);
		super.InitDataProcess(tableInfo.getServerName(), tableInfo.getTableName());
		
	}
	
	
	public MDataTable TableInfo()
	{
		return tableInfo;
	}
	
	
	
	
	
	
	
	
	
	









}
