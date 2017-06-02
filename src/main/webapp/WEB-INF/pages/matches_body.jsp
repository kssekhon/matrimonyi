<%@page import="java.sql.ResultSet"%>

<div class="grid_3">
  <div class="container">
   <div class="breadcrumb1">
     <ul>
        <a href="index.html"><i class="fa fa-home home_1"></i></a>
        <span class="divider">&nbsp;|&nbsp;</span>
        <li class="current-page">New Matches</li>
     </ul>
   </div>
   
   <div class="col-md-9 profile_left2">
<%  ResultSet rs=(ResultSet)request.getAttribute("rs"); 
if(rs!=null){
while(rs.next()){

%>

	 <div class="profile_top"><a href="view_profile">
      <h2><%=rs.getInt("id") %> | Profile Created By <%=rs.getString("created_by") %></h2>
	    <div class="col-sm-3 profile_left-top">
	    	<img src="upload/<%=rs.getString("image1") %> "class="img-responsive" alt=""/>
	    </div>
	    <div class="col-sm-3">
	      <ul class="login_details1">
					 <li><p><%=rs.getString("aboutme") %></p></li>
		  </ul>
	    </div>
	    <div class="col-sm-6">
	    	<table class="table_working_hours">
	        	<tbody>
				<tr class="opened_1">
						<td class="day_label1">Name :</td>
						<td class="day_value"><%=rs.getString("first_name") %></td>
					</tr>
	        		<tr class="opened_1">
						<td class="day_label1">D.O.B / Height :</td>
						<td class="day_value">, <%=rs.getInt("height") %>cm</td>
					</tr>
				   
				    <tr class="opened">
						<td class="day_label1">Religion :</td>
						<td class="day_value"><%=rs.getString("religion") %></td>
					</tr>
				    <tr class="opened">
						<td class="day_label1">Marital Status :</td>
						<td class="day_value"><%=rs.getString("marital_status") %></td>
					</tr>
				    <tr class="opened">
						<td class="day_label1">Location :</td>
						<td class="day_value"><%=rs.getString("country") %></td>
					</tr>
				    <tr class="closed">
						<td class="day_label1">Profile Created by :</td>
						<td class="day_value closed"><span><%=rs.getString("created_by") %></span></td>
					</tr>
				    <tr class="closed">
						<td class="day_label1">Education :</td>
						<td class="day_value closed"><span><%=rs.getString("qualification") %></span></td>
					</tr>
			    </tbody>
		   </table>
		   <div class="buttons">

			   <div class="vertical"><a href='<%=request.getContextPath() %>/user/interested?id=<%=rs.getInt("id") %>'>Send Interest</a></div>
		   </div>
	    </div>
	    <div class="clearfix"> </div>
    </a></div>
   <% }}else{ out.write("No record Found");} %>
   
  </div>

  <div class="col-md-3 match_right">
    
   </div>
   <div class="clearfix"> </div>
  </div>
</div>