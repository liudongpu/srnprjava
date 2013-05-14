package com.srnpr.zweb.model;

import java.util.List;
import java.util.Map;

public class MPagePagination {

	
	private long pageCount=-1;
	
	
	
	private int pageSize=10;
	
	private int pageIndex=1;
	

	

	public long getPageCount() {
		return pageCount;
	}

	public void setPageCount(long pageCount) {
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
