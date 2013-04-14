package com.srnpr.zdata.support;

import java.util.Enumeration;
import java.util.concurrent.ConcurrentHashMap;

import com.srnpr.zcom.base.BaseClass;
import com.srnpr.zcom.model.MHashMap;
import com.srnpr.zcom.model.MResult;
import com.srnpr.zdata.helper.DataHelper;
import com.srnpr.zdata.manager.DataTableManager;
import com.srnpr.zdata.model.MTableColumn;

public class DataSupport extends BaseClass
{

	
	
	
	public String Put(String sTableName,MHashMap mMap)
	{
		MResult m=new MResult();
		
		DataHelper dHelper=DataTableManager.Get(sTableName);
		
		
		ConcurrentHashMap<String, MTableColumn> mDataTable=dHelper.TableInfo().getColumnsMap();
		
		MHashMap mPut=new MHashMap();
		
		Enumeration<String> eKey=mDataTable.keys();
		
		while (eKey.hasMoreElements())
		{
			String sColumn = (String) eKey.nextElement();
			
			if(mMap.contains(sColumn))
			{
				mPut.put(sColumn, mMap.get(sColumn));
			}
		}
	
		dHelper.Put(mPut);
		return "";

	}
	
	
	
	
	
}
