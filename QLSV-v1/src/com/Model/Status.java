package com.Model;

public class Status {

	public int StatusId;
	public String StatusName;
	public Status() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Status(int statusId, String statusName) {
		super();
		StatusId = statusId;
		StatusName = statusName;
	}
	public int getStatusId() {
		return StatusId;
	}
	public void setStatusId(int statusId) {
		StatusId = statusId;
	}
	public String getStatusName() {
		return StatusName;
	}
	public void setStatusName(String statusName) {
		StatusName = statusName;
	}
	
	
}
