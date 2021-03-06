package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import database.DbUtil;

/**
 * Servlet implementation class AdminLoginController
 */
@WebServlet("/adminlogin")
public class AdminLoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminLoginController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("//WEB-INF//pages//adminlogin.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String msg="";
		HttpSession httpSession=request.getSession();
		Map<String,String> messages= new HashMap<String,String>();
		if(email==null||email.isEmpty()){
			messages.put("username","please enter username");
		}
		if(password==null||password.isEmpty()){
			messages.put("password","please enter password");
		}
		if(messages.isEmpty()){
			Connection conn=DbUtil.getConnection();
			try {
				PreparedStatement stmt=conn.prepareStatement("select * from admin where email=? and password=?");
				
				stmt.setString(1,email);
				stmt.setString(2,password);
				
				
				ResultSet rs=stmt.executeQuery();
				while(rs.next()){
					int id=rs.getInt("uid");
					httpSession.setAttribute("adminid",id);
					httpSession.setAttribute("adminuser",email);
				response.sendRedirect("admin/dashboard");
				}
			} catch (SQLException e) {
				response.sendRedirect("login?err=true");
				msg="Failed to Login";
				e.printStackTrace();
			}	
			
			
			
		}
	}

}
