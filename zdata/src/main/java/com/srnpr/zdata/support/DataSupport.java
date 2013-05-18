package com.srnpr.zdata.support;

import java.util.Enumeration;
import java.util.concurrent.ConcurrentHashMap;

import com.srnpr.zcom.base.BaseClass;
import com.srnpr.zcom.common.ComFunction;
import com.srnpr.zcom.model.MHashMap;
import com.srnpr.zcom.model.MResult;
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
		
	public int insertData(String sTableName,MHashMap mMap)
	{
		
		
		TableSupport dHelper=DataTableManager.Get(sTableName);
		
		
		ConcurrentHashMap<String, MTableColumn> mDataTable=dHelper.upDataTable().getColumnsMap();
		
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
		
		
		
		if(mDataTable.containsKey("uid"))
		{
			mPut.put("uid", ComFunction.upUuid());
		}
		if(mDataTable.containsKey("zid"))
		{
			mPut.remove("zid", mPut.get("zid"));
		}
		
		
		
		return dHelper.inPut(mPut);
		

	}
	
	
	
	 /**
	 * @param sTableName  change data
	 * @param mMap
	 * @param sKeys
	 * @return
	 * @description 
	 * @version 1.0
	 * @author srnpr
	 * @update 2013-4-20 上午12:51:14
	 */
		
	public int updateData(String sTableName,MHashMap mMap,String sKeys)
	{
		
		TableSupport dHelper=DataTableManager.Get(sTableName);
		//ConcurrentHashMap<String, MTableColumn> mDataTable=dHelper.TableInfo().getColumnsMap();
		
		return dHelper.inPost(mMap, sKeys);

	}
	
	
	
	public int deleteData(String sTableName,Object... oArgs)
	{
		
		TableSupport dHelper=DataTableManager.Get(sTableName);
		return dHelper.inDelete(oArgs);
		
	}
	
	
	
}
