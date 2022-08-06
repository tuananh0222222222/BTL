package com.Model;

public class Result {

	public int ResultId;
	public int StudentId ;
	public String StudentName;
	public int ClassId;
	public String ClassName;
	public int SubjectId;
	public String SubjectName;
	public float Point;
	public int StatusId;
	public String StatusName;
	
	public Result() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Result(int resultId, int studentId, String studentName, int classId, String className, int subjectId,
			String subjectName, float point, int statusId, String statusName) {
		super();
		ResultId = resultId;
		StudentId = studentId;
		StudentName = studentName;
		ClassId = classId;
		ClassName = className;
		SubjectId = subjectId;
		SubjectName = subjectName;
		Point = point;
		StatusId = statusId;
		StatusName = statusName;
	}

	public int getResultId() {
		return ResultId;
	}

	public void setResultId(int resultId) {
		ResultId = resultId;
	}

	public int getStudentId() {
		return StudentId;
	}

	public void setStudentId(int studentId) {
		StudentId = studentId;
	}

	public String getStudentName() {
		return StudentName;
	}

	public void setStudentName(String studentName) {
		StudentName = studentName;
	}

	public int getClassId() {
		return ClassId;
	}

	public void setClassId(int classId) {
		ClassId = classId;
	}

	public String getClassName() {
		return ClassName;
	}

	public void setClassName(String className) {
		ClassName = className;
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

	public float getPoint() {
		return Point;
	}

	public void setPoint(float point) {
		Point = point;
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
