

<%@page import="com.DAO.SubjectDAO"%>
<%@page import="com.Model.Subject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


      <!-- Page Heading -->
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800">Thông tin môn</h1>
                        
                    </div>

                    <!-- Content Row -->
                    <%
                    	int Id = Integer.parseInt(request.getParameter("Id"));
                        Subject subject = SubjectDAO.getSubjectId(Id);
                    %>
                  
                    
                    
            <!-- Content Row -->
			<div class="card shadow mb-4">
			
		
				<div class="card-body">
					<div class="table-responsive">
					
		                     <form  action="./SubjectEdit" method="post" style="width: 700px;">	
		                     <div class="form-group">
		                            <label for="">Id</label>
		                            <input type="text" class="form-control" value="<%=subject.getSubjectId()%>" name="subject-id" readonly="readonly" >
		                        </div>                  
		                        <div class="form-group">
		                            <label for="">Môn</label>
		                            <input type="text" class="form-control" value="<%=subject.getSubjectName() %>" name="subject-name" >
		                        </div>
						   
		                    
                        
						       <div class="form-row">
			              
			                      
		                 
			                        <div class="form-group  mt-4">
			                        <button type="submit" class="ml-2 btn btn-primary">Sửa</button>
			                        <a href="./SubjectList" class="btn  btn-info">Quay lại</a>
			                        </div>
	                      	</form>
				</div>
			</div>
		                  