package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.Model.Status;

import com.utils.DbContext;

public class StatusDAO {

	public static ArrayList<Status> getAllStatus(){
		 Connection con = DbContext.ConnectDatabase();
		 ArrayList<Status> list = null;
		 
		 String sql = "SELECT * FROM status";
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			Status status = null;
			list = new ArrayList<Status>();
		
			while(rs.next()){
				status = new Status();
				
				status.setStatusId(rs.getInt("StatusId"));
				status.setStatusName(rs.getString("StatusName"));
			
				list.add(status);
			}
			return list;
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}
	public static void main(String[] args) {
		System.out.print(getAllStatus().size());
	}

}
