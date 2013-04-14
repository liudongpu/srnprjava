package com.srnpr.zdata.model;

public class MTableColumn {

	
	private String columnName="";
	
	private int didNullAble;
	
	
	private int didColumnType;
	
	
	private int lengthMax;
	
	public String getColumnName() {
		return columnName;
	}

	public void setColumnName(String columnName) {
		this.columnName = columnName;
	}

	public int getDidNullAble() {
		return didNullAble;
	}

	public void setDidNullAble(int didNullAble) {
		this.didNullAble = didNullAble;
	}

	public int getDidColumnType() {
		return didColumnType;
	}

	public void setDidColumnType(int didColumnType) {
		this.didColumnType = didColumnType;
	}

	public int getLengthMax() {
		return lengthMax;
	}

	public void setLengthMax(int lengthMax) {
		this.lengthMax = lengthMax;
	}

	public String getNote() {
		return note;
	}

	public void setNote(String note) {
		this.note = note;
	}

	private int lengthScale;
	
	public int getLengthScale() {
		return lengthScale;
	}

	public void setLengthScale(int lengthScale) {
		this.lengthScale = lengthScale;
	}

	private String note;
	
	
	
	
	
}
