package com.srnpr.zweb.model;

import java.util.ArrayList;
import java.util.List;

public class MWebView
{
	
	
	private String code;
	
	private String viewName;
	
	private String tableName;
	
	
	private List<MWebFields> fields=new ArrayList<MWebFields>();
	
	
	private List<MWebOptions> options=new ArrayList<MWebOptions>();


	public List<MWebOptions> getOptions()
	{

		return options;
	}


	public void setOptions(List<MWebOptions> options)
	{

		this.options = options;
	}


	public List<MWebFields> getFields()
	{

		return fields;
	}


	public void setFields(List<MWebFields> fields)
	{

		this.fields = fields;
	}


	public String getTableName()
	{

		return tableName;
	}


	public void setTableName(String tableName)
	{

		this.tableName = tableName;
	}


	public String getViewName()
	{

		return viewName;
	}


	public void setViewName(String viewName)
	{

		this.viewName = viewName;
	}


	public String getCode()
	{

		return code;
	}


	public void setCode(String code)
	{

		this.code = code;
	}
	
	
	
	

}
