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

	
	
	
	
	
	 /**
	 * @param sTableName 新增数据操作
	 * @param mMap
	 * @return
	 * @description 
	 * @version 1.0
	 * @author srnpr
	 * @update 2013-4-16 下午9:57:24
	 */
		
	public String Put(String sTableName,MHashMap mMap)
	{
		
		
		DataHelper dHelper=DataTableManager.Get(sTableName);
		
		
		ConcurrentHashMap<String, MTableColumn> mDataTable=dHelper.TableInfo().getColumnsMap();
		
		MHashMap mPut=new MHashMap();
		
		Enumeration<String> eKey=mDataTable.keys();
		
		while (eKey.hasMoreElements())
		{
			String sColumn = (String) eKey.nextElement();
			
			if(mMap.containsKey(sColumn))
			{
				mPut.put(sColumn, mMap.get(sColumn));
			}
		}
	
		dHelper.Put(mPut);
		return "";

	}
	
	
	public String Post(String sTableName,MHashMap mMap,String sKeys)
	{
		
		DataHelper dHelper=DataTableManager.Get(sTableName);
		//ConcurrentHashMap<String, MTableColumn> mDataTable=dHelper.TableInfo().getColumnsMap();
		
		dHelper.Post(mMap, sKeys);
		
		
		return "";
	}
	
	
	
	
	
}
