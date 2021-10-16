package com.model;

public class teamVO {
	
	private int ghNum;
	private String ghMemId;
	private String gmMemId;
	
	public teamVO(int ghNum, String ghMemId, String gmMemId) {
		super();
		this.ghNum = ghNum;
		this.ghMemId = ghMemId;
		this.gmMemId = gmMemId;
	}

	public int getGhNum() {
		return ghNum;
	}

	public void setGhNum(int ghNum) {
		this.ghNum = ghNum;
	}

	public String getGhMemId() {
		return ghMemId;
	}

	public void setGhMemId(String ghMemId) {
		this.ghMemId = ghMemId;
	}

	public String getGmMemId() {
		return gmMemId;
	}

	public void setGmMemId(String gmMemId) {
		this.gmMemId = gmMemId;
	}
	
	
	
	
	
}
