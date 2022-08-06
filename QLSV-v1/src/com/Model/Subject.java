package com.Model;

public class Subject {

	public int SubjectId;
	public String SubjectName;
	
	public Subject() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Subject(int subjectId, String subjectName) {
		super();
		SubjectId = subjectId;
		SubjectName = subjectName;
	}

	public int getSubjectId() {
		return SubjectId;
	}

	public void setSubjectId(int subjectId) {
		SubjectId = subjectId;
	}

	public String getSubjectName() {
		return SubjectName;
	}

	public void setSubjectName(String subjectName) {
		SubjectName = subjectName;
	}
	
	
	
	
}
