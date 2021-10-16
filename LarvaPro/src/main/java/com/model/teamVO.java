package com.model;

public class teamVO {
	
	private String MemId;
	private int cntNum;
	private int tmNum;
	private int tmType;
	
	public teamVO(String memId) {
		super();
		MemId = memId;
	}
	
	public teamVO(String memId, int tmNum) {
		super();
		MemId = memId;
		this.tmNum = tmNum;
	}


	public String getMemId() {
		return MemId;
	}
	public void setMemId(String memId) {
		MemId = memId;
	}
	public int getCntNum() {
		return cntNum;
	}
	public void setCntNum(int cntNum) {
		this.cntNum = cntNum;
	}
	public int getTmNum() {
		return tmNum;
	}
	public void setTmNum(int tmNum) {
		this.tmNum = tmNum;
	}
	public int getTmType() {
		return tmType;
	}
	public void setTmType(int tmType) {
		this.tmType = tmType;
	}
	
	
}