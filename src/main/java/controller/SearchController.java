package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import database.DbUtil;

/**
 * Servlet implementation class SearchController
 */
@WebServlet(urlPatterns = {"/search","/user/search"})
public class SearchController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public SearchController() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("//WEB-INF/pages/search.jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			
			String gender=request.getParameter("gender");
			
			String marital_status=request.getParameter("maritalstatus");
			if(marital_status==null){
				marital_status="*";
			}
			String country=request.getParameter("country");
			if(country==null){
				country="*";
			}
			String  state=request.getParameter("state");
			if(state==null){
				state="*";
			}
			String city=request.getParameter("city");
			if(city==null){
				city="*";
			}
			String religion=request.getParameter("religion");
			if(religion==null){
				religion="*";
			}
			String mother_tongue=request.getParameter("mothertongue");
			if(mother_tongue==null){
				mother_tongue="*";
			}
			Connection conn=DbUtil.getConnection();
			try {
			PreparedStatement stmt=conn.prepareStatement("select * from members where gender=? and(marital_status like ? or city like ? or stat like ? or religion like ? or mother_tongue like ?)");
			
				stmt.setString(1,gender);
				stmt.setString(2,marital_status);
				stmt.setString(3, city);
				stmt.setString(4,state );
				stmt.setString(5,religion);
				stmt.setString(6,mother_tongue);
				 ResultSet rs= stmt.executeQuery();
				// if(rs!=null){
					request.setAttribute("rs",rs);
				// }else{
					request.setAttribute("message", "No Matching Profile found");
				// }
			} catch (SQLException e) {
				e.printStackTrace();
			}
		
		 
		request.getRequestDispatcher("//WEB-INF//pages//matches.jsp").forward(request, response);
		
	}

}
