package com.srnpr.zweb.model;

import java.util.List;
import java.util.Map;



public class MWebPage {

	
	private String pageType="";
	
	
	public String getPageType() {
		return pageType;
	}



	public void setPageType(String pageType) {
		this.pageType = pageType;
	}



	public List<Map<String, Object>> getPageData() {
		return pageData;
	}



	public void setPageData(List<Map<String, Object>> pageData) {
		this.pageData = pageData;
	}



	public String getPageInclude() {
		return pageInclude;
	}



	public void setPageInclude(String pageInclude) {
		this.pageInclude = pageInclude;
	}



	private List<Map<String, Object>> pageData;
	
	
	
	private String pageInclude="";
	
	
	
}
