package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


import com.Model.Result;

import com.utils.DbContext;

public class ResultDAO {
	//lay tat ca ban ghi
	public static ArrayList<Result> getAllResult(){
		Connection con = DbContext.ConnectDatabase();
		ArrayList<Result> list = null;
		
		String sql ="SELECT result.ResultId ,student.StudentId,student.StudentName, classroom.ClassId,classroom.ClassName, subject.SubjectId,subject.SubjectName ,result.Point , status.StatusId ,status.StatusName FROM result ,student,subject,classroom,status WHERE result.StudentId = student.StudentId and result.ClassId = classroom.ClassId and result.SubjectId = subject.SubjectId  and result.StatusId = status.StatusId";
		
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			Result result = null;
			list = new ArrayList<Result>();
		
			while(rs.next()){
				result = new Result();
				
				result.setResultId(rs.getInt("ResultId"));
				result.setStudentId(rs.getInt("StudentId"));
				result.setStudentName(rs.getString("StudentName"));
				result.setClassId(rs.getInt("ClassId"));
				result.setClassName(rs.getString("ClassName"));
				result.setSubjectId(rs.getInt("SubjectId"));
				result.setSubjectName(rs.getString("SubjectName"));
				result.setPoint(rs.getFloat("Point"));
				result.setStatusId(rs.getInt("StatusId"));
				result.setStatusName(rs.getString("StatusName"));
				
				list.add(result);
			}
			return list;
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}
	
	//them
	public static boolean AddResult(Result result){
		Connection con = DbContext.ConnectDatabase();
		
	
		
		String sql = "INSERT INTO `result`(`ResultId`, `StudentId`, `ClassId`, `SubjectId`, `Point`, `StatusId`) VALUES ('"+result.getResultId()+"','"+result.getStudentId()+"','"+result.getClassId()+"','"+result.getSubjectId()+"','"+result.getPoint()+"','"+result.getStatusId()+"')";
		
		PreparedStatement ps ;
		
		try {
			ps=con.prepareStatement(sql);
			ps.executeUpdate();
			return true;
			
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		
	}
	
	//sua
	
	public static Result getResultId(int Id){
		Connection con = DbContext.ConnectDatabase();
		Result result = new Result();
		
		String sql = "SELECT `ResultId`, `StudentId`, `ClassId`, `SubjectId`, `Point`, `StatusId` FROM `result` WHERE ResultId=" + Id;
		PreparedStatement ps ;
		try {
			ps=con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();// thuc hien truy van
				
			if(rs.next()){
				
				result.setResultId(rs.getInt("ResultId"));
				result.setStudentId(rs.getInt("StudentId"));
				result.setClassId(rs.getInt("ClassId"));
				result.setSubjectId(rs.getInt("SubjectId"));
				result.setPoint(rs.getFloat("Point"));
				result.setStatusId(rs.getInt("StatusId"));
				
			}
			return result;
			
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
		
	}
	
	public static boolean UpdateResult(Result result){
		Connection con = DbContext.ConnectDatabase();
		String sql = "UPDATE `result` SET `ResultId`='"+result.getResultId()+"',`StudentId`='"+result.getStudentId()+"',`ClassId`='"+result.getClassId()+"',`SubjectId`='"+result.getSubjectId()+"',`Point`='"+result.getPoint()+"',`StatusId`='"+result.getStatusId()+"' WHERE result.ResultId ="+ result.getResultId() ;
		PreparedStatement ps ;
		try {
			ps=con.prepareStatement(sql);
			ps.executeUpdate();
			return true;
			
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	
	//xoa
	
	public static boolean DelResult(int ResultId){
		Connection con = DbContext.ConnectDatabase();
		String sql = "DELETE FROM `result` WHERE ResultId= " + ResultId;
		PreparedStatement ps ;
		try {
			ps=con.prepareStatement(sql);
			ps.executeUpdate();
			return true;
			
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	
	
}
