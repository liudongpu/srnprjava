package com.srnpr.zweb.model;

import java.util.List;
import java.util.Map;


public class MPageNav {

	
	
	
	
	private int pageCount=-1;
	
	private List<Map<String,Object>> pageData;
	
	private int pageSize=2;
	
	private int pageIndex=1;
	

	public List<Map<String,Object>> getPageData() {
		return pageData;
	}

	public void setPageData(List<Map<String,Object>> pageData) {
		this.pageData = pageData;
	}

	public int getPageCount() {
		return pageCount;
	}

	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getPageIndex() {
		return pageIndex;
	}

	public void setPageIndex(int pageIndex) {
		this.pageIndex = pageIndex;
	}
	
	
	
}
