
package com.srnpr.zweb.model;

public class MWebOptions implements Cloneable
{

	private String	name;

	private String	params;

	private int		didPageType;

	private String	uid;

	public String getName()
	{

		return name;
	}

	public void setName(String name)
	{

		this.name = name;
	}

	public String getParams()
	{

		return params;
	}

	public void setParams(String params)
	{

		this.params = params;
	}

	public int getDidPageType()
	{

		return didPageType;
	}

	public void setDidPageType(int didPageType)
	{

		this.didPageType = didPageType;
	}

	public int getDidOptionType()
	{

		return didOptionType;
	}

	public void setDidOptionType(int didOptionType)
	{

		this.didOptionType = didOptionType;
	}

	public String getUid()
	{

		return uid;
	}

	public void setUid(String uid)
	{

		this.uid = uid;
	}

	private int	didOptionType;

	
	
	
	
	public MWebOptions clone()
	{

		MWebOptions o = null;
		try
		{
			o = (MWebOptions) super.clone();
		}
		catch (CloneNotSupportedException e)
		{
			e.printStackTrace();
		}
		return o;
	}

}
