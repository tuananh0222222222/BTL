package ResultServlet;

import java.io.IOException;
//import java.io.PrintWriter;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.ResultDAO;
import com.Model.Result;



/**
 * Servlet implementation class SubjectAddServlet
 */
@WebServlet("/ResultAdd")
public class ResultAddServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ResultAddServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("VIEW", "./Result/Result-add.jsp");
		RequestDispatcher rd = request.getRequestDispatcher("/Layout.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
response.setContentType("text/html;charset=UTF-8");
	
	
	response.setContentType("text/html;charset=UTF-8");
	request.setCharacterEncoding("utf-8");
	
	Result result = new Result();
	
	

	
	int resultname = Integer.parseInt(request.getParameter("result-name"));
	result.setStudentId(resultname);
//	
	int resultclass = Integer.parseInt(request.getParameter("result-class"));
	result.setClassId(resultclass);
//		
	int resultsubject = Integer.parseInt(request.getParameter("result-subject"));
	result.setSubjectId(resultsubject);
	
	float resultponit = Float.parseFloat(request.getParameter("result-point"));
	result.setPoint(resultponit);
	
	int resultstatus = Integer.parseInt(request.getParameter("result-status"));
	result.setStatusId(resultstatus);
	
//	PrintWriter pr = response.getWriter();
//	
//	pr.println(resultname);
//	pr.println(resultclass);
//	pr.println(resultsubject);
//	pr.println(resultponit);
//	pr.println(resultstatus);
	
	
	if(ResultDAO.AddResult(result)){
		response.sendRedirect("./ResultList");
	}else{
		response.sendRedirect("./ResultAdd");
	}



		
		
	}

}
