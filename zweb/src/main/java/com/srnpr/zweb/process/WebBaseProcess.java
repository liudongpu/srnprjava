package com.srnpr.zweb.process;

import java.util.ArrayList;
import java.util.List;

import com.srnpr.zcom.base.BaseClass;
import com.srnpr.zcom.model.MHashMap;
import com.srnpr.zweb.model.MWebFields;
import com.srnpr.zweb.model.MWebOptions;
import com.srnpr.zweb.model.MWebView;

public class WebBaseProcess extends BaseClass
{

	
	
	
	
	
	
	public List<MWebFields> upUseFields(MWebView mView,int iDidPageType)
	{
		
		List<MWebFields> listReturnFields=new ArrayList<MWebFields>();
		
		for(MWebFields mFields:mView.getFields())
		{
			listReturnFields.add(mFields);
		}
		
		return listReturnFields;
	}
	
	
	public List<MWebOptions> upUseOptions(MWebView mView,int iDidPageType)
	{
		List<MWebOptions> listReturnFields=new ArrayList<MWebOptions>();
		
		for(MWebOptions mFields:mView.getOptions())
		{
			if(mFields.getDidPageType()==iDidPageType)
			{
				listReturnFields.add(mFields);
			}
		}
		
		return listReturnFields;
	}
	
	
	
}
