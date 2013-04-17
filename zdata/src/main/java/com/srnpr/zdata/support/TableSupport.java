package com.srnpr.zdata.support;

import com.srnpr.zdata.manager.DataTableManager;
import com.srnpr.zdata.model.MDataTable;
import com.srnpr.zdata.process.DataProcess;

public class TableSupport extends DataProcess {

	
	private  MDataTable tableInfo=null;
	
	
	
	 /**
	 * @param sTableName 数据表支持函数
	 */
		
	public  TableSupport(String sTableName)
	{
		tableInfo=DataTableManager.GetTable(sTableName);
		super.InitDataProcess(tableInfo.getServerName(), tableInfo.getTableName());
		
	}
	
	
	public MDataTable upDataTable()
	{
		return tableInfo;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	









}
