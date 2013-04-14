
package com.srnpr.zdata.manager;

import java.util.Enumeration;
import java.util.List;
import java.util.Map;

import com.srnpr.zcom.base.BaseClass;
import com.srnpr.zcom.i.IBaseInit;
import com.srnpr.zcom.i.IBaseManager;
import com.srnpr.zdata.helper.DataHelper;
import com.srnpr.zdata.model.MDataTable;
import com.srnpr.zdata.model.MTableColumn;
import com.srnpr.zdata.process.DataProcess;

public class DataTableManager extends BaseClass implements IBaseManager,
IBaseInit
{

	public boolean Refresh()
	{

		return false;
	}

	public synchronized void Init()
	{

		DataProcess dProcess = new DataProcess();
		dProcess.InitDataProcess(BConfig("zdata.base_database_name"), BConfig("zdata.db_table_column"));

		List<Map<String, Object>> listTableList = dProcess.Get();

		for (Map<String, Object> map : listTableList)
		{
			String sTableName = (String) map.get(BConfig("zdata.db_column_column_tablename"));
			MDataTable mTable = null;
			if (!ConstStatic.CONST_DATATABLE_MAP.contains(sTableName))
			{
				mTable = new MDataTable();
				mTable.setServerName((String) map.get(BConfig("zdata.db_column_column_servername")));
				mTable.setTableName(sTableName);
				ConstStatic.CONST_DATATABLE_MAP.put(sTableName, mTable);
			}
			mTable = ConstStatic.CONST_DATATABLE_MAP.get(sTableName);

			MTableColumn mColumn = new MTableColumn();
			mColumn.setColumnName((String) map.get(BConfig("db_column_column_columnname")));
			mColumn.setLengthMax(Integer.valueOf((String) map.get(BConfig("db_column_column_lengthmax"))));
			mColumn.setNote((String) map.get(BConfig("db_column_column_note")));
			mTable.getColumnsMap().put(mColumn.getColumnName(), mColumn);

		}
		
		
		
		Enumeration<String> eKey=ConstStatic.CONST_DATATABLE_MAP.keys();
		while (eKey.hasMoreElements())
		{
			String string = (String) eKey.nextElement();
			DataHelper dHelper=new DataHelper(string);
			ConstStatic.CONST_DATAHELPER_MAP.put(string, dHelper);
		}
		
		
		

	}
	
	
	
	public static DataHelper Get(String sTableName)
	{
		return ConstStatic.CONST_DATAHELPER_MAP.get(sTableName);
	}
	
	
	public static MDataTable GetTable(String sKey)
	{
		return ConstStatic.CONST_DATATABLE_MAP.get(sKey);
	}

}
