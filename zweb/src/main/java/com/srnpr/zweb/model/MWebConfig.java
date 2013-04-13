package com.srnpr.zweb.model;

import java.util.ArrayList;
import java.util.concurrent.ConcurrentHashMap;

public class MWebConfig {

	
	
	
	
	private String baseInclude="";
	
	
	
	private ArrayList<String> srcJs=new ArrayList<String>();
	
	private ArrayList<String> srcCss=new ArrayList<String>();
	
	
	private ConcurrentHashMap<String, String> pageInclude=new ConcurrentHashMap<String, String>();
	
	

	public ArrayList<String> getSrcJs() {
		return srcJs;
	}

	public void setSrcJs(ArrayList<String> srcJs) {
		this.srcJs = srcJs;
	}

	public ArrayList<String> getSrcCss() {
		return srcCss;
	}

	public void setSrcCss(ArrayList<String> srcCss) {
		this.srcCss = srcCss;
	}

	public ConcurrentHashMap<String, String> getPageInclude() {
		return pageInclude;
	}

	public void setPageInclude(ConcurrentHashMap<String, String> pageInclude) {
		this.pageInclude = pageInclude;
	}

	public String getBaseInclude() {
		return baseInclude;
	}

	public void setBaseInclude(String baseInclude) {
		this.baseInclude = baseInclude;
	}
	
	
	
	
	
	
	
	
}
