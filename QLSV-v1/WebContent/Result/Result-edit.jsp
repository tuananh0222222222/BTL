<%@page import="com.DAO.SubjectDAO"%>
<%@page import="com.Model.Subject"%>
<%@page import="com.DAO.ResultDAO"%>
<%@page import="com.Model.Result"%>
<%@page import="com.DAO.StatusDAO"%>
<%@page import="com.Model.Status"%>
<%@page import="com.DAO.StudentDAO"%>
<%@page import="com.Model.Student"%>
<%@page import="com.DAO.ClassroomDAO"%>
<%@page import="com.Model.Classroom"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


      <!-- Page Heading -->
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800">Thông tin </h1>
                        
                    </div>

                    <!-- Content Row -->
         	   
            <!-- Content Row -->
			<div class="card shadow mb-4">
			
		
				<div class="card-body">
					<div class="table-responsive">
					<%
							int Id = Integer.parseInt(request.getParameter("Id"));
							Result result = ResultDAO.getResultId(Id);
					%>
		                     <form  action="./ResultEdit" method="post" style="width: 700px;">	
		                     <div class="form-group">
		                            <label for="">ID</label>
		                            <input type="text" class="form-control" value="<%=result.getResultId()%>" name="id" readonly="readonly" >
		                        </div>           
		                        
		                          <div class="form-group" >
			                            
			                                <label for="inlineFormCustomSelect">Họ tên </label>
			                                <select class="custom-select mr-sm-2" id="inlineFormCustomSelect"  name="ten" >
			                                 
			                                    <%
			                                  	for(Student item : StudentDAO.getAllStudent()){
			                                  		if(item.getStudentId() == result.getStudentId()){
			                                  			%>
					                              		    <option value="<%=item.getStudentId()%>"  selected> <%=item.getStudentName() %></option>
			                                  			
			                                  			<%
			                                  		}
			                                  		else{
			                                  			%>
			                                  				 <option value="<%=item.getStudentId()%>"> <%=item.getStudentName() %></option>
			                                  			<%
			                                  		}
			                                  	}
			                                  %>
			                               
			                                  
			                                </select>
			                              
			                     	 </div>
			                      
		                 
			                             		                       
		                        
		                        <div class="form-group">
			                            
			                                <label for="inlineFormCustomSelect">Lớp </label>
			                                <select class="custom-select mr-sm-2"  name="lop"  >
			                                 
			                                    <%
			                                  	for(Classroom item : ClassroomDAO.getAllClassroom()){
			                                  		if(item.getClassId() == result.getClassId()){
			                                  			%>
					                              		    <option value="<%=item.getClassId()%>" selected > <%=item.getClassName() %></option>
			                                  			
			                                  			<%
			                                  		}
			                                  		else{
			                                  			%>
			                                  				 <option value="<%=item.getClassId()%>"> <%=item.getClassName() %></option>
			                                  			<%
			                                  		}
			                                  	}
			                                  %>
			                               
			                                  
			                                </select>
			                              
			                     	 </div>
			                     	 
			                     	  <div class="form-group">
			                            
			                                <label for="inlineFormCustomSelect">Môn học </label>
			                                <select class="custom-select mr-sm-2" id="disabledSelect" name="mon"  >
			                                 
			                                    <%
			                                  	for(Subject item : SubjectDAO.getAllSubject()){
			                                  		if(item.getSubjectId() == result.getSubjectId()){
			                                  			%>
					                              		    <option value="<%=item.getSubjectId()%>" selected > <%=item.getSubjectName() %></option>
			                                  			
			                                  			<%
			                                  		}
			                                  		else{
			                                  			%>
			                                  				 <option value="<%=item.getSubjectId()%>"> <%=item.getSubjectName() %></option>
			                                  			<%
			                                  		}
			                                  	}
			                                  %>
			                               
			                                  
			                                </select>
			                              
			                     	 </div>
		                       
								
								 <div class="form-group">
		                            <label for="">Điểm</label>
		                            <input type="text" class="form-control" value="<%=result.getPoint() %>" name="diem" ">
		                        </div>
	
                        
						     		  <div class="form-group">
			                            
			                                <label for="inlineFormCustomSelect">Trạng thái </label>
			                                <select class="custom-select mr-sm-2" id="inlineFormCustomSelect" name="trangthai">
			                                 
			                                    <%
			                                  	for(Status item : StatusDAO.getAllStatus()){
			                                  		if(item.getStatusId() == result.getStatusId()){
			                                  			%>
					                              		    <option value="<%=item.getStatusId()%>" selected> <%=item.getStatusName() %></option>
			                                  			
			                                  			<%
			                                  		}
			                                  		else{
			                                  			%>
			                                  				 <option value="<%=item.getStatusId()%>"> <%=item.getStatusName() %></option>
			                                  			<%
			                                  		}
			                                  	}
			                                  %>
			                               
			                                  
			                                </select>
			                              
			                     	 </div>
			                      
		                 
			                        <div class="form-group  mt-4">
			                        <button type="submit" class="ml-2 btn btn-primary">Sửa</button>
			                        <a href="./ResultList" class="btn  btn-info">Quay lại</a>
			                        </div>
	                      	</form>
				</div>
			</div>
		                  