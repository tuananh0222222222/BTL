  
  
<%@page import="com.DAO.ClassroomDAO"%>
<%@page import="com.Model.Classroom"%>
<%@page import="com.DAO.StudentDAO"%>
<%@page import="com.Model.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


                    <!-- Page Heading -->
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800">Danh sách lớp</h1>
                        <a href="./ClassroomAdd" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
                                class="fas fa-plus fa-sm text-white-50"></i> Thêm lớp học</a>
                    </div>
  				<!-- Content Row -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary"></h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                            
                              
                    <div class="table">
                        <div class="table_section">              	
                         	  <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                         <tr>
                                        <th>ID</th>
                                        <th>Lớp</th>
                                    </tr>
                                    </thead>
                                   
                                    <tbody>
                                	<%for(Classroom item : ClassroomDAO.getAllClassroom()){
                                		%>
	                                	<tr>
	                                        <td><%=item.getClassId()%></td>
	                                        <td><p><%=item.getClassName() %></p></td>                                    
	                                        <td> 
	                                        <a href="./ClassroomEdit?Id=<%=item.getClassId()%> " class="btn-sm btn btn-primary">Chi tiết</a>
	                                        <a href="./ClassroomDel?Id=<%=item.getClassId()%>" class="btn-sm btn btn-danger">Xóa</a>
	                                        </td>
	                                    </tr>
	                                		
                                	<%} %>                          
                                </tbody>
                                </table>
                        </div>
                     	
                       
                     </div>
                  </div>