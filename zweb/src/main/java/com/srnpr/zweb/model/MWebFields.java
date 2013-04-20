package com.srnpr.zweb.model;

public class MWebFields implements Cloneable
{
	
	
	private String fieldName="";
	
	
	private String columnName="";
	
	private int didFieldType=0;
	
	private String sourceCode="";

	
	private String sourceparameter="";
	
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
	
	
	private int level=0;
	

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

	public int getLevel() {
		return level;
	}

	public void setLevel(int level) {
		this.level = level;
	}

	public String getSourceparameter() {
		return sourceparameter;
	}

	public void setSourceparameter(String sourceparameter) {
		this.sourceparameter = sourceparameter;
	}
	
	

}
