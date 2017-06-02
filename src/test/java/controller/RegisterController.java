package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.text.DateFormatter;



import database.DbUtil;


/**
 * Servlet implementation class UserController
 */
@WebServlet("/register")
public class RegisterController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.getRequestDispatcher("WEB-INF//pages//register.jsp").forward(request, response);
	}

	/**(
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String msg="";
		PrintWriter out=response.getWriter();
		String sql="insert into members(first_name,middle_name,last_name,email,password,dob,gender)values(?,?,?,?,?,?,?)";
		String middle_name=request.getParameter("middle_name");
		String first_name=request.getParameter("first_name");
		String last_name=request.getParameter("last_name");
		String password=request.getParameter("password");
		String email=request.getParameter("email");
		String day=request.getParameter("day");
		String month=request.getParameter("month");
		String year=request.getParameter("year");
		out.write(first_name+"<br>");
		out.write(middle_name+"<br>");
		out.write(last_name+"<br>");
		out.write(email+"<br>");
		out.write(password+"<br>");
		out.write(day+"<br>");
		out.write(month+"<br>");
		out.write(year+"<br>");
		String dob= year+"-"+month+"-"+day;
		SimpleDateFormat dateFormat=new SimpleDateFormat("yyyy-mm-dd");
		Date udob=null;
		try {
			udob=dateFormat.parse(dob);
		} catch (ParseException e1) {
			
			e1.printStackTrace();
		}
		String ddob= dateFormat.format(udob);
		String gender=request.getParameter("gender");
		Connection conn=DbUtil.getConnection();
		try {
			PreparedStatement stmt=conn.prepareStatement(sql);
			stmt.setString(1,first_name);
			stmt.setString(2,middle_name);
			stmt.setString(3,last_name);
			stmt.setString(4,email);
			stmt.setString(5,password);
			
			stmt.setString(6,ddob);
			stmt.setString(7,gender);
			int i=stmt.executeUpdate();
		
		 msg="Congratualtions you have registred successfully";
		
		} catch (SQLException e) {
			msg="Failed to create user";
			e.printStackTrace();
		}	
	}
	

}
