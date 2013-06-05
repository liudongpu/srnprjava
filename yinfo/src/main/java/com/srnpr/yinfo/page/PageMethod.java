package com.srnpr.yinfo.page;

import java.util.Map;

import com.srnpr.zcom.base.BaseClass;
import com.srnpr.zcom.model.MHashMap;
import com.srnpr.zdata.manager.DataTableManager;
import com.srnpr.zweb.i.IPageMethod;
import com.srnpr.zweb.page.PageExec;

public class PageMethod extends BaseClass implements IPageMethod {

	
	
	private static MHashMap hClassMap=new MHashMap();
	
	private void checkClassMap()
	{
		if(hClassMap==null||hClassMap.size()<1)
		{

			for(Map<String, Object> map:DataTableManager.Get("you_class").upList())
			{
				hClassMap.put(map.get("code").toString(), map.get("name").toString());
			}
			
			for(Map<String, Object> map:DataTableManager.Get("y_area").upListListByQuery("level","3"))
			{
				hClassMap.put("area_"+map.get("code").toString(), map.get("name").toString());
			}
		}
	}
	
	
	public MHashMap upClassByFather(String sFather)
	{
		MHashMap mReturnHashMap=new MHashMap();
		checkClassMap();
		
		for(String s:hClassMap.upKeys())
		{
			if(s.length()>4&&s.startsWith(sFather))
			{
				String sKey=s.toString();
				if(sKey.indexOf("_")>-1)
				{
					String[] sSplit=sKey.split("_");
					sKey=sSplit[sSplit.length-1];
				}
				mReturnHashMap.put(sKey, hClassMap.get(s));
			}
		}

		return mReturnHashMap;
		
	}
	
	
	
	
	
	
	
}
