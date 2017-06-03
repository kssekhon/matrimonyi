package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import database.DbUtil;

/**
 * Servlet implementation class SendInterestedController
 */
@WebServlet("/user/interested")
public class SendInterestedController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SendInterestedController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String message = null;
		String id=request.getParameter("id");
		if(id!=null){
			
		
		int to_id=Integer.parseInt(id);

		Connection conn = DbUtil.getConnection();
		HttpSession session = request.getSession();
		int from_id = Integer.parseInt((String)session.getAttribute("id"));
		String sql1 = "select * from intrust where to_id=? and from_id=?";
		
		String sql2="insert into  intrust(to_id,from_id,send_date)values(?,?,?)";
		PreparedStatement stmt;
		try {
			stmt = conn.prepareStatement(sql1);
			stmt.setInt(1, to_id);
			stmt.setInt(2,from_id);
			ResultSet rs1 = stmt.executeQuery();
			if (rs1.next()) {
				message = "<div class='alert alert-info'>intrest  already send ,No need to send it again</div>";
			} else {
				stmt = conn.prepareStatement(sql2);
				stmt.setInt(1, to_id);
				stmt.setInt(2,from_id);
				java.sql.Date dt=new java.sql.Date(new Date().getTime()); 
				stmt.setDate(3,dt);
				stmt.execute();
				message="<div class='alert alert-success'>intrest send Successfully</div>";
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		request.setAttribute("message",message);
		}
		request.getRequestDispatcher("//WEB-INF//pages//interested.jsp").forward(request, response);
	}

}
