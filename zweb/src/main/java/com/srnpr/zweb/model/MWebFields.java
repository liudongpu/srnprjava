package com.srnpr.zweb.model;

public class MWebFields implements Cloneable
{
	
	
	private String fieldName="";
	
	
	private String columnName="";
	
	private int didFieldType=0;
	
	private String sourceCode="";

	
	
	private String fieldValue="";
	
	
	public String getSourceCode()
	{

		return sourceCode;
	}

	public void setSourceCode(String sourceCode)
	{

		this.sourceCode = sourceCode;
	}

	public int getDidFieldType()
	{

		return didFieldType;
	}

	public void setDidFieldType(int didFieldType)
	{

		this.didFieldType = didFieldType;
	}

	public String getFieldName()
	{

		return fieldName;
	}

	public void setFieldName(String fieldName)
	{

		this.fieldName = fieldName;
	}
	
	
	
	private int levelList;
	private int levelPut;
	private int levelPost;
	private int levelShow;
	private int levelQuery;
	
	
	public int getLevelList()
	{
	
		return levelList;
	}

	public void setLevelList(int levelList)
	{
	
		this.levelList = levelList;
	}

	public int getLevelPut()
	{
	
		return levelPut;
	}

	public void setLevelPut(int levelPut)
	{
	
		this.levelPut = levelPut;
	}

	public int getLevelPost()
	{
	
		return levelPost;
	}

	public void setLevelPost(int levelPost)
	{
	
		this.levelPost = levelPost;
	}

	public int getLevelShow()
	{
	
		return levelShow;
	}

	public void setLevelShow(int levelShow)
	{
	
		this.levelShow = levelShow;
	}

	public int getLevelQuery()
	{
	
		return levelQuery;
	}

	public void setLevelQuery(int levelQuery)
	{
	
		this.levelQuery = levelQuery;
	}

	public String getColumnName()
	{

		return columnName;
	}

	public void setColumnName(String columnName)
	{

		this.columnName = columnName;
	}
	
	
	public MWebFields clone()
	{

		MWebFields o = null;
		try
		{
			o = (MWebFields) super.clone();
		}
		catch (CloneNotSupportedException e)
		{
			e.printStackTrace();
		}
		return o;
	}

	

	public String getFieldValue()
	{

		return fieldValue;
	}

	public void setFieldValue(String fieldValue)
	{

		this.fieldValue = fieldValue;
	}
	
	

}
