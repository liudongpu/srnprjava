package com.srnpr.zdata.model;

import java.util.List;


public class MDataTable {

	
	
	
	private String tableName="";
	
	private String serverName="";
	
	
	private List<MTableColumn>  columns=null;


	public String getTableName() {
		return tableName;
	}


	public void setTableName(String tableName) {
		this.tableName = tableName;
	}


	public String getServerName() {
		return serverName;
	}


	public void setServerName(String serverName) {
		this.serverName = serverName;
	}


	public List<MTableColumn> getColumns() {
		return columns;
	}


	public void setColumns(List<MTableColumn> columns) {
		this.columns = columns;
	}
	
	
	
	
}
