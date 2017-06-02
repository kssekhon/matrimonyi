
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="database.DbUtil"%>
<%@page import="database.DbUtil" %>
<%@page import="java.sql.Connection"%>
<div class="grid_3">
  <div class="container">
   <div class="breadcrumb1">
     <ul>
        <a href="<%=getServletContext().getContextPath() %>/index"><i class="fa fa-home home_1"></i></a>
        <span class="divider">&nbsp;|&nbsp;</span>
        <li class="current-page">Interests</li>
     </ul>
   </div>
   
   <div class="col-md-9 members_box2">
   	   <h3>Interests</h3>
   	   <p></p>
       <div class="col_4">
		    <div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
			   <ul id="myTab" class="nav nav-tabs nav-tabs1" role="tablist">
				  <li role="presentation" class="active"><a href="#home" id="home-tab" role="tab" data-toggle="tab" aria-controls="home" aria-expanded="true">All</a></li>
				  <li role="presentation"><a href="#profile" role="tab" id="profile-tab" data-toggle="tab" aria-controls="profile">Recived</a></li>
				  <li role="presentation"><a href="#profile1" role="tab" id="profile-tab" data-toggle="tab" aria-controls="profile">Accepted</a></li>
				  <li role="presentation"><a href="#profile2" role="tab" id="profile-tab" data-toggle="tab" aria-controls="profile">Not Interested</a></li>
			   </ul>
			   <div id="myTabContent" class="tab-content">
				  <div role="tabpanel" class="tab-pane fade in active" id="home" aria-labelledby="home-tab">
				    
	                <div class="clearfix"> </div>
	                
	                <%Connection conn=DbUtil.getConnection();
	                
	                PreparedStatement statement1= conn.prepareStatement("select * from intrust where from_id=3");
	                ResultSet  allResult=  statement1.executeQuery();
	                while(allResult.next()){
	                %>
	                  <%  int id=allResult.getInt("to_id");
	                PreparedStatement statement1_1= conn.prepareStatement("select * from members where id="+id);
	                ResultSet  allResult_1=  statement1_1.executeQuery();
	                while(allResult_1.next()){
	                
	                
	                %>
	                
	                <div class="jobs-item with-thumb">
	                   <div class="thumb_top">
				        <div class="thumb"><a href="view_profile.html"><img src="images/p13.jpg" class="img-responsive" alt=""/></a></div>
					    <div class="jobs_right">
							<h6 class="title"><a href="view_profile.html"><%=allResult_1.getString("first_name") %>(<%=allResult_1.getInt("id") %>) </a></h6>
							
							<ul class="login_details1">
							  <li>Last Login : 5 days ago</li>
							</ul>
							<p class="description"><%=allResult_1.getDate("dob") %> years, <%=allResult_1.getInt("height") %> Cms | <span class="m_1">Reliogion</span> : <%=allResult_1.getString("religion") %> | <span class="m_1">Education</span> :<%=allResult_1.getString("qualification") %> | <span class="m_1">Occupation</span> :<%=allResult_1.getString("occupation") %><br><a href='profile?id=<%=allResult_1.getInt("id") %>' class="read-more">view full profile</a></p>
						</div>
						<div class="clearfix"> </div>
					   </div>
					   <div class="thumb_bottom">
					   	  <div class="clearfix"> </div>
					   </div>
					  </div>
					 <%}} %>
					
				  </div>
				  
				    <div role="tabpanel" class="tab-pane fade" id="profile" aria-labelledby="profile-tab">
				      
	                <%
	                Connection conn1=DbUtil.getConnection();
	                PreparedStatement statement2= conn1.prepareStatement("select * from intrust where to_id=3");
	                ResultSet  result2=  statement2.executeQuery();
	                while(result2.next()){
	                %>
	                  <%  int id=result2.getInt("from_id");
	                PreparedStatement statement2_1= conn1.prepareStatement("select * from members where id="+id);
	                ResultSet  result2_1=  statement2_1.executeQuery();
	                while(result2_1.next()){
	                
	                
	                %>
	                
	                <div class="jobs-item with-thumb">
	                   <div class="thumb_top">
				        <div class="thumb"><a href="view_profile.html"><img src="images/p13.jpg" class="img-responsive" alt=""/></a></div>
					    <div class="jobs_right">
							<h6 class="title"><a href="view_profile.html"><%=result2_1.getString("first_name") %>(<%=result2_1.getInt("id") %>) </a></h6>
							
							<ul class="login_details1">
							  <li>Last Login : 5 days ago</li>
							</ul>
							<p class="description"><%=result2_1.getDate("dob") %> years, <%=result2_1.getInt("height") %> Cms | <span class="m_1">Reliogion</span> : <%=result2_1.getString("religion") %> | <span class="m_1">Education</span> :<%=result2_1.getString("qualification") %> | <span class="m_1">Occupation</span> :<%=result2_1.getString("occupation") %><br><a href='profile?id=<%=result2_1.getInt("id") %>' class="read-more">view full profile</a></p>
						</div>
						<div class="clearfix"> </div>
					   </div>
					   <div class="thumb_bottom">
					   	  <div class="thumb_but"><a href='accept?id=<%=result2_1.getInt("id") %>&action=no' class="photo_view">Reject Interest</a></div>
					   	   <div class="thumb_but"><a href='accept?id=<%=result2_1.getInt("id") %>&action=yes' class="photo_view">Accept Interest</a></div>
					   	  <div class="clearfix"> </div>
					   </div>
					  </div>
					 <%}} %>
					 </div>
				  
				  <div role="tabpanel" class="tab-pane fade" id="profile1" aria-labelledby="profile-tab">
				     <%
	                
	                PreparedStatement statement3= conn.prepareStatement("select * from intrust where from_id=3 and acceptence='yes'");
	                ResultSet  result3=  statement3.executeQuery();
	                while(result3.next()){
	                %>
	                  <%  int id=result3.getInt("to_id");
	                PreparedStatement statement3_1= conn.prepareStatement("select * from members where id="+id);
	                ResultSet  result3_1=  statement3_1.executeQuery();
	                while(result3_1.next()){
	                
	                
	                %>
	                
	                <div class="jobs-item with-thumb">
	                   <div class="thumb_top">
				        <div class="thumb"><a href="view_profile.html"><img src="images/p13.jpg" class="img-responsive" alt=""/></a></div>
					    <div class="jobs_right">
							<h6 class="title"><a href="view_profile.html"><%=result3_1.getString("first_name") %>(<%=result3_1.getInt("id") %>) </a></h6>
							
							<ul class="login_details1">
							  <li>Last Login : 5 days ago</li>
							</ul>
							<p class="description"><%=result3_1.getDate("dob") %> years, <%=result3_1.getInt("height") %> Cms | <span class="m_1">Reliogion</span> : <%=result3_1.getString("religion") %> | <span class="m_1">Education</span> :<%=result3_1.getString("qualification") %> | <span class="m_1">Occupation</span> :<%=result3_1.getString("occupation") %><br><a href='profile?id=<%=result3_1.getInt("id") %>' class="read-more">view full profile</a></p>
						</div>
						<div class="clearfix"> </div>
					   </div>
					   <div class="thumb_bottom">
					   						   	 
					   	  <div class="clearfix"> </div>
					   </div>
					  </div>
					 <%}} %> 
				 </div>

				 <div role="tabpanel" class="tab-pane fade" id="profile2" aria-labelledby="profile-tab">
				   <%
	                
	                PreparedStatement statement4= conn.prepareStatement("select * from intrust where from_id=3 and acceptence='No'");
	                ResultSet  result4=  statement4.executeQuery();
	                while(result4.next()){
	                %>
	                  <%  int id=result4.getInt("to_id");
	                PreparedStatement statement4_1= conn.prepareStatement("select * from members where id="+id);
	                ResultSet  result4_1=  statement4_1.executeQuery();
	                while(result4_1.next()){
	                
	                
	                %>
	                
	                <div class="jobs-item with-thumb">
	                   <div class="thumb_top">
				        <div class="thumb"><a href="view_profile.html"><img src="images/p13.jpg" class="img-responsive" alt=""/></a></div>
					    <div class="jobs_right">
							<h6 class="title"><a href="view_profile.html"><%=result4_1.getString("first_name") %>(<%=result4_1.getInt("id") %>) </a></h6>
							
							<ul class="login_details1">
							  <li>Last Login : 5 days ago</li>
							</ul>
							<p class="description"><%=result4_1.getDate("dob") %> years, <%=result4_1.getInt("height") %> Cms | <span class="m_1">Reliogion</span> : <%=result4_1.getString("religion") %> | <span class="m_1">Education</span> :<%=result4_1.getString("qualification") %> | <span class="m_1">Occupation</span> :<%=result4_1.getString("occupation") %><br><a href='profile?id=<%=result4_1.getInt("id") %>' class="read-more">view full profile</a></p>
						</div>
						<div class="clearfix"> </div>
					   </div>
					   <div class="thumb_bottom">
					   	 
					   	 
					   </div>
					  </div>
					 <%}} %> 
				 </div>
				 
			 </div> 
		  </div>
	   </div>
    </div>
   <div class="clearfix"> </div>
  </div>
</div>
