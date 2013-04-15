
package com.srnpr.zweb.model;

public class MWebPage
{

	
	 /**
	 * @fields pageType
	 */
		
	private String	pageType	= "";

	public String getPageType()
	{

		return pageType;
	}

	public void setPageType(String pageType)
	{

		this.pageType = pageType;
	}

	public Object getPageData()
	{

		return pageData;
	}

	public void setPageData(Object pageData)
	{

		this.pageData = pageData;
	}

	public String getPageInclude()
	{

		return pageInclude;
	}

	public void setPageInclude(String pageInclude)
	{

		this.pageInclude = pageInclude;
	}

	public Object getPageOptions()
	{

		return pageOptions;
	}

	public void setPageOptions(Object pageOptions)
	{

		this.pageOptions = pageOptions;
	}

	
	 /**
	 * @fields pageData
	 */
		
	private Object	pageData;

	
	 /**
	 * @fields pageOptions
	 */
		
	private Object	pageOptions;

	
	 /**
	 * @fields pageInclude
	 */
		
	private String	pageInclude	= "";

}
