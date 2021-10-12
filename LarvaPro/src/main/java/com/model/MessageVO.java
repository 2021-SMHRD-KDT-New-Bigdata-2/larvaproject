package com.model;

public class MessageVO {
	
	private int mNum;
	private String mSendId;
	private String mReceiveId;
	private String mContent;
	private String mSendDate;
	private String mReceiveDate;
	private int mState;
	

	public MessageVO(int mNum, String mSendId, String mReceiveId, String mContent, String mSendDate, String mReceiveDate, int mState) {
		super();
		this.mNum = mNum;
		this.mSendId = mSendId;
		this.mReceiveId = mReceiveId;
		this.mContent = mContent;
		this.mSendDate = mSendDate;
		this.mReceiveDate = mReceiveDate;
		this.mState = mState;
	}

	public MessageVO(String mSendId, String mReceiveId, String mContent, String mSendDate, String mReceiveDate, int mState) {
		super();
		this.mSendId = mSendId;
		this.mReceiveId = mReceiveId;
		this.mContent = mContent;
		this.mSendDate = mSendDate;
		this.mReceiveDate = mReceiveDate;
		this.mState = mState;
	}

	public int getmNum() {
		return mNum;
	}

	public void setmNum(int mNum) {
		this.mNum = mNum;
	}

	public String getmSendId() {
		return mSendId;
	}

	public void setmSendId(String mSendId) {
		this.mSendId = mSendId;
	}

	public String getmReceiveId() {
		return mReceiveId;
	}

	public void setmReceiveId(String mReceiveId) {
		this.mReceiveId = mReceiveId;
	}

	public String getmContent() {
		return mContent;
	}

	public void setmContent(String mContent) {
		this.mContent = mContent;
	}

	public String getmSendDate() {
		return mSendDate;
	}

	public void setmSendDate(String mSendDate) {
		this.mSendDate = mSendDate;
	}

	public String getmReceiveDate() {
		return mReceiveDate;
	}

	public void setmReceiveDate(String mReceiveDate) {
		this.mReceiveDate = mReceiveDate;
	}

	public int getmState() {
		return mState;
	}

	public void setmState(int mState) {
		this.mState = mState;
	}
}
	
	
	

