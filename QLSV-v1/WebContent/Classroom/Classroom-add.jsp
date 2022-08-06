
<%@page import="com.DAO.ClassroomDAO"%>
<%@page import="com.Model.Classroom"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>



                   <!-- Page Heading -->
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
	                        <h1 class="h3 mb-0 text-gray-800">Thêm sinh viên</h1>
	                        
	                  </div>
	
		                    <!-- Content Row -->
				<div class="card shadow mb-4">
				
					<div class="card-body">
						<div class="table-responsive">
						
			                     <form  action="./ClassroomAdd" method="post" style="width: 700px;">	
			                     	                     
			                        <div class="form-group">
			                            <label for="">lớp</label>
			                            <input type="text" class="form-control" name="classroomname" >
			                        </div>
	
				                        <div class="form-group  mt-4">
				                        <button type="submit" class="ml-2 btn btn-primary">Thêm</button>
				                        <a href="./StudentList" class="btn  btn-info">Quay lại</a>
				                        </div>
		                      	</form>
					</div>
				</div>
		                  
                 
            
                
                    <!-- Content Row -->
                   
                   
