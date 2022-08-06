package ResultServlet;

import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.ResultDAO;
import com.Model.Result;


/**
 * Servlet implementation class SubjectEditServlet
 */
@WebServlet("/ResultEdit")
public class ResultEditServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ResultEditServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setAttribute("VIEW", "./Result/Result-edit.jsp");
		RequestDispatcher rd = request.getRequestDispatcher("/Layout.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		
	
		
		Result result = new Result();
		
		int id = Integer.parseInt(request.getParameter("id"));
		result.setResultId(id);
		
		int ten = Integer.parseInt(request.getParameter("ten"));
		result.setStudentId(ten);
		
	
		int lop = Integer.parseInt(request.getParameter("lop"));
		result.setStudentId(lop);
		
		int mon = Integer.parseInt(request.getParameter("mon"));
		result.setSubjectId(mon);
		
		float diem = Float.parseFloat(request.getParameter("diem"));
		result.setPoint(diem);
	
		int tt = Integer.parseInt(request.getParameter("trangthai"));
		result.setStatusId(tt);

	
	
		if(ResultDAO.UpdateResult(result)){
			response.sendRedirect("./ResultList");
		}

	}

}
