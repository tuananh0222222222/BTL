
<%@page import="com.DAO.StatusDAO"%>
<%@page import="com.Model.Status"%>
<%@page import="com.DAO.SubjectDAO"%>
<%@page import="com.Model.Subject"%>
<%@page import="com.DAO.StudentDAO"%>
<%@page import="com.Model.Student"%>
<%@page import="com.DAO.ClassroomDAO"%>
<%@page import="com.Model.Classroom"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>



                    <!-- Page Heading -->
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
	                        <h1 class="h3 mb-0 text-gray-800">Thêm Kết quả thi</h1>
	                        
	                  </div>
	
	                    <!-- Content Row -->
			<div class="card shadow mb-4">
			
		
				<div class="card-body">
					<div class="table-responsive">
					
		                     <form  action="./ResultAdd" method="post" style="width: 700px;">	
		                     	                     
	 
			                     	  <div class="form-group"> 
									     <label for="inlineFormCustomSelect">Họ tên</label>
			                                <select class="form-control" id="inlineFormCustomSelect" name="result-name">
			                                  <option selected></option>
			                                  <%for(Student item : StudentDAO.getAllStudent()) {			                                
			                                	  %>
					                                  <option value="<%=item.getStudentId()%>"><%=item.getStudentName() %></option>
					                                  
					                                	  
			                                     <% } %>
			                                 
			                                </select>
									    </div>
			                     	 
			                     	 	  <div class="form-group">
									     <label for="inlineFormCustomSelect">Lớp</label>
			                                <select class="form-control" id="inlineFormCustomSelect" name="result-class">
			                                  <option selected></option>
			                                  <%for(Classroom item : ClassroomDAO.getAllClassroom()) {			                                
			                                	  %>
					                                  <option value="<%=item.getClassId()%>"><%=item.getClassName() %></option>
					                                  
					                                	  
			                                     <% } %>
			                                 
			                                </select>
									    </div>
									    
									     <div class="form-group">
		                        	    <label for="inlineFormCustomSelect">Môn</label>
			                                <select class="form-control" id="inlineFormCustomSelect" name="result-subject">
			                                  <option selected></option>
			                                  <%for(Subject item : SubjectDAO.getAllSubject()) {			                                
			                                	  %>
					                                  <option value="<%=item.getSubjectId()%>"><%=item.getSubjectName() %></option>
					                                  
					                                	  
			                                     <% } %>
			                                 
			                                </select>
									    </div>
										    
			                        <div class="form-group">
			                            <label for="">Điểm</label>
			                            <input type="text" class="form-control" name="result-point" >
			                        </div>
		                        
				                        <div class="form-group">
		                          	 <label for="inlineFormCustomSelect">Trạng thái</label>
					                       <select class="form-control" id="inlineFormCustomSelect" name="result-status">
			                                  <option selected></option>
			                                  <%for(Status item : StatusDAO.getAllStatus()) {			                                
			                                	  %>
					                                  <option value="<%=item.getStatusId()%>"><%=item.getStatusName() %></option>
					                                  
					                                	  
			                                     <% } %>
			                                 
			                               </select>
								 </div>
									    

			                        <div class="form-group  mt-4">
			                        <button type="submit" class="ml-2 btn btn-primary">Thêm</button>
			                        <a href="./ResultList" class="btn  btn-info">Quay lại</a>
			                        </div>
		                      	</form>
					</div>
				</div>
			                  
                 
            
                
                    <!-- Content Row -->
                   
                   
