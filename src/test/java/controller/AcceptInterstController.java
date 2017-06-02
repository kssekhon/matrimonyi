package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import database.DbUtil;

/**
 * Servlet implementation class AcceptInterstController
 */
@WebServlet("/user/accept")
public class AcceptInterstController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AcceptInterstController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action=request.getParameter("action");
		String sql="update  intrust set acceptence=? where (to_id=? and from_id=?)";
	
		 String message = null;
			String id=request.getParameter("id");
			if(id!=null&& action!=null){
				int from_id=Integer.parseInt(id);

				Connection conn = DbUtil.getConnection();
				HttpSession session = request.getSession();
				int to_id = (int) session.getAttribute("id");		
				PreparedStatement stmt;
				try {
					stmt = conn.prepareStatement(sql);
					stmt.setString(1,action);
					stmt.setInt(2, to_id);
					stmt.setInt(3,from_id);
					
						java.sql.Date dt=new java.sql.Date(new Date().getTime()); 
						
						stmt.execute();
						message="<div class='alert alert-success'>intrest Updated Successfully</div>";
				} catch (SQLException e) {
					e.printStackTrace();
				}
				request.setAttribute("message",message);
				}
				request.getRequestDispatcher("//WEB-INF//pages//interested.jsp").forward(request, response);
			}
		
		
	

}
