package com.srnpr.zdata.model;

import java.util.concurrent.ConcurrentHashMap;

public class MDataTable {





	private String tableName = "";

	private String serverName = "";

	private ConcurrentHashMap<String, MTableColumn> columnsMap = new ConcurrentHashMap<String, MTableColumn>();

	public ConcurrentHashMap<String, MTableColumn> getColumnsMap() {
		return columnsMap;
	}

	public void setColumnsMap(ConcurrentHashMap<String, MTableColumn> columnsMap) {
		this.columnsMap = columnsMap;
	}

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

}
