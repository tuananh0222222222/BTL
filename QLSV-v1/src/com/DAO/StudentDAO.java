package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import java.util.ArrayList;


import com.Model.Student;
import com.utils.DbContext;

public class StudentDAO {
	//lay tat ca ban ghi
	public static ArrayList<Student> getAllStudent(){
		Connection con = DbContext.ConnectDatabase();
		ArrayList<Student> list = null;
		
		String sql = "SELECT * FROM `student` INNER JOIN classroom on student.ClassId = classroom.ClassId";
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			Student student = null;
			list = new ArrayList<Student>();
			
			while(rs.next()){
				student = new Student();
				
				student.setStudentId(rs.getInt("StudentId"));
				student.setStudentName(rs.getString("StudentName"));
				student.setBirth(rs.getString("Birth"));
				student.setGender(rs.getString("Gender"));
				student.setPhone(rs.getInt("Phone"));
				student.setAddress(rs.getString("Address"));
				student.setClassId(rs.getInt("ClassId"));
				student.setClassName(rs.getString("ClassName"));
				
				list.add(student);
			}
			
			return list;
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
		
	}
	//lay classid
	
	
	// them 
	
	public static boolean AddStudent(Student student){
		Connection con = DbContext.ConnectDatabase();
		
	
		
		String sql = "INSERT INTO `student`(`StudentId`, `StudentName`, `Birth`,  `Gender`, `Phone`, `Address`, `ClassId`) VALUES ('"+student.getStudentId()+"','"+student.getStudentName()+"','"+student.getBirth()+"','"+student.getGender()+"','"+student.getPhone()+"','"+student.getAddress()+"','"+student.getClassId()+"')";
		
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
	
		public static Student getStudentId(int Id){
			Connection con = DbContext.ConnectDatabase();
			Student student = new Student();
			
			String sql = "SELECT * FROM `student` WHERE StudentId = " + Id;
			PreparedStatement ps ;
			try {
				ps=con.prepareStatement(sql);
				ResultSet rs = ps.executeQuery();// thuc hien truy van
					
				if(rs.next()){
					
					student.setStudentId(rs.getInt("StudentId"));
					student.setStudentName(rs.getString("StudentName"));
					student.setBirth(rs.getString("Birth"));
					student.setGender(rs.getString("Gender"));
					student.setPhone(rs.getInt("Phone"));
					student.setAddress(rs.getString("Address"));
					student.setClassId(rs.getInt("ClassId"));
		
				}
				return student;
				
			} catch (SQLException e) { 
				e.printStackTrace();
				return null;
			}
			
		}
		
	
		
		public static boolean UpdateStudent(Student student){
			Connection con = DbContext.ConnectDatabase();
			String sql ="UPDATE `student` SET `StudentName`='"+student.getStudentName()+"',`Birth`='"+student.getBirth()+"',`Gender`='"+student.getGender()+"',`Phone`='"+student.getPhone()+"',`Address`='"+student.Address+"',`ClassId`='"+student.getClassId()+"' WHERE StudentId = "+student.getStudentId()+" ";
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
		public static boolean DelStudent(int StudentId){
			Connection con = DbContext.ConnectDatabase();
			String sql = "DELETE FROM `student` WHERE StudentId=" + StudentId;
			PreparedStatement ps;
			try {
				ps = con.prepareStatement(sql);
				ps.executeUpdate();
				return true;
			} catch (Exception e) {
				e.printStackTrace();
				return false;
			}
			
			
		}
	
	

}
