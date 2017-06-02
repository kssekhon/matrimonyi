
<%@page import="java.sql.ResultSet"%>
<%  ResultSet rs=(ResultSet)request.getAttribute("rs"); 
while(rs.next()){

%>
<div class="grid_3">
  <div class="container">
   <div class="breadcrumb1">
     <ul>
        <a href="<%=request.getContextPath() %>index"><i class="fa fa-home home_1"></i></a>
        <span class="divider">&nbsp;|&nbsp;</span>
        <li class="current-page">View Profile</li>
     </ul>
   </div>
   <div class="profile">
   	 <div class="col-md-8 profile_left">
   	 	<h2>Profile Id : <?php echo $row['id']; ?></h2>
   	 	<div class="col_3">
   	        <div class="col-sm-4 row_2">
				<div class="flexslider">
					 <ul class="slides">
			
						<li data-thumb='<%=request.getContextPath() %>/upload/<%=rs.getString("image1") %>'>
							<img src='<%=request.getContextPath() %>/upload/<%=rs.getString("image1") %>' />
						</li>
						<li data-thumb="<%=request.getContextPath() %>/upload/<%=rs.getString("image2")%>">
							<img src="<%=request.getContextPath() %>/upload/<%=rs.getString("image2") %>" />
						</li>
						<li data-thumb="<%=request.getContextPath() %>/upload/<%=rs.getString("image3") %>">
							<img src="<%=request.getContextPath() %>/upload/<%=rs.getString("image3") %>" />
						</li>
						
					 </ul>
				  </div>
				  
			</div><div class="col-sm-8">
			

			
			<div class="col-sm-12 row_1">
				<table class="table_working_hours">
		        	<tbody>
		        		<tr class="opened_1">
							<td class="day_label">Age / Height :</td>
							<td class="day_value"><%=rs.getString("dob") %>,<%=rs.getString("height") %>cm</td>
						</tr>
					    <tr class="opened">
							<td class="day_label">Last Login :</td>
							<td class="day_value"><%=rs.getString("last_login_date") %></td>
						</tr>
					    <tr class="opened">
							<td class="day_label">Religion :</td>
							<td class="day_value"><%=rs.getString("religion") %></td>
						</tr>
					    <tr class="opened">
							<td class="day_label">Marital Status :</td>
							<td class="day_value"><%=rs.getString("marital_status") %></td>
						</tr>
					    <tr class="opened">
							<td class="day_label">Location :</td>
							<td class="day_value"><%=rs.getString("country") %></td>
						</tr>
					    <tr class="closed">
							<td class="day_label">Profile Created by :</td>
							<td class="day_value closed"><span><%=rs.getString("created_by") %></span></td>
						</tr>
					    <tr class="closed">
							<td class="day_label">Education :</td>
							<td class="day_value closed"><span><%=rs.getString("qualification") %></span></td>
						</tr>
				    </tbody>
				</table>
				
			</div>
			<div class="clearfix"> </div>
		</div>
		<div class="col_4">
		    <div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
			   <ul id="myTab" class="nav nav-tabs nav-tabs1" role="tablist">
				  <li role="presentation" class="active"><a href="#home" id="home-tab" role="tab" data-toggle="tab" aria-controls="home" aria-expanded="true">About Myself</a></li>
				  <li role="presentation"><a href="#profile" role="tab" id="profile-tab" data-toggle="tab" aria-controls="profile">Family Details</a></li>
				 </ul>
			   <div id="myTabContent" class="tab-content">
				  <div role="tabpanel" class="tab-pane fade in active" id="home" aria-labelledby="home-tab">
				    <div class="tab_box">
				    	<p><%=rs.getString("aboutme") %></p>
				    	  </div>
				    <div class="basic_1">
				    	<h3>Basics & Lifestyle</h3>
				    	<div class="col-md-6 basic_1-left">
				    	  <table class="table_working_hours">
				        	<tbody>
				        		<tr class="opened_1">
									<td class="day_label">Name :</td>
									<td class="day_value"><%=rs.getString("first_name") %> </td>
								</tr>
							    <tr class="opened">
									<td class="day_label">Marital Status :</td>
									<td class="day_value"><%=rs.getString("marital_status") %></td>
								</tr>
							    <tr class="opened">
									<td class="day_label">Body Type :</td>
									<td class="day_value"><%=rs.getString("body_type") %></td>
								</tr>
							  
							    <tr class="opened">
									<td class="day_label">Height :</td>
									<td class="day_value"> <%=rs.getString("height") %>cm</td>
								</tr>
							    <tr class="opened">
									<td class="day_label">Physical Status :</td>
									<td class="day_value closed"><span><%=rs.getString("physical_status") %></span></td>
								</tr>
							    <tr class="opened">
									<td class="day_label">Profile Created by :</td>
									<td class="day_value closed"><span><%=rs.getString("created_by") %></span></td>
								</tr>
								<tr class="opened">
									<td class="day_label">Drink :</td>
									<td class="day_value closed"><span><%=rs.getString("drinking") %></span></td>
								</tr>
						    </tbody>
				          </table>
				         </div>
				         <div class="col-md-6 basic_1-left">
				          <table class="table_working_hours">
				        	<tbody>
				        		<tr class="opened_1">
									<td class="day_label">Dob :</td>
									<td class="day_value"><%=rs.getString("dob") %></td>
								</tr>
							    <tr class="opened">
									<td class="day_label">Mother Tongue :</td>
									<td class="day_value"><%=rs.getString("mother_tongue") %></td>
								</tr>
							    <tr class="opened">
									<td class="day_label">Complexion :</td>
									<td class="day_value"><%=rs.getString("complextion") %></td>
								</tr>
							    <tr class="opened">
									<td class="day_label">Weight :</td>
									<td class="day_value"><%=rs.getString("weight") %></td>
								</tr>
							    <tr class="opened">
									<td class="day_label">Blood Group :</td>
									<td class="day_value"><%=rs.getString("blood_group") %></td>
								</tr>
							    <tr class="closed">
									<td class="day_label">Diet :</td>
									<td class="day_value closed"><span><%=rs.getString("diet") %></span></td>
								</tr>
							    <tr class="closed">
									<td class="day_label">Smoke :</td>
									<td class="day_value closed"><span><%=rs.getString("smoking") %></span></td>
								</tr>
						    </tbody>
				        </table>
				        </div>
				        <div class="clearfix"> </div>
				    </div>
				    <div class="basic_1">
				    	<h3>Religious / Social & Astro Background</h3>
				    	<div class="col-md-6 basic_1-left">
				    	  <table class="table_working_hours">
				        	<tbody>
				        		<tr class="opened">
									<td class="day_label">Time of Birth :</td>
									<td class="day_value">Not Specified</td>
								</tr>
				        		<tr class="opened">
									<td class="day_label">Caste :</td>
									<td class="day_value"><%=rs.getString("cast") %></td>
								</tr>
							    <tr class="opened">
									<td class="day_label">Date of Birth :</td>
									<td class="day_value closed"><span><%=rs.getString("dob") %></span></td>
								</tr>
							    <tr class="opened">
									<td class="day_label">Place of Birth :</td>
									<td class="day_value closed"><span><%=rs.getString("birth_place") %></span></td>
								</tr>
							 </tbody>
				          </table>
				         </div>
				         <div class="col-md-6 basic_1-left">
				          <table class="table_working_hours">
				        	<tbody>
				        		<tr class="opened_1">
									<td class="day_label">Religion :</td>
									<td class="day_value"><%=rs.getString("religion") %></td>
								</tr>
							    <tr class="opened">
									<td class="day_label">Sub Caste :</td>
									<td class="day_value"><%=rs.getString("sub_cast") %></td>
								</tr>
							    <tr class="opened">
									<td class="day_label">Raasi :</td>
									<td class="day_value"><%=rs.getString("birth_sign") %></td>
								</tr>
							</tbody>
				        </table>
				        </div>
				        <div class="clearfix"> </div>
				    </div>
				    <div class="basic_1 basic_2">
				    	<h3>Education & Career</h3>
				    	<div class="basic_1-left">
				    	  <table class="table_working_hours">
				        	<tbody>
				        		<tr class="opened">
									<td class="day_label">Education   :</td>
									<td class="day_value"><%=rs.getString("qualification") %></td>
								</tr>
				        		<tr class="opened">
									<td class="day_label">Education Detail :</td>
									<td class="day_value"><%=rs.getString("mother_tongue") %></td>
								</tr>
							    <tr class="opened">
									<td class="day_label">Occupation Detail :</td>
									<td class="day_value closed"><span><%=rs.getString("occupation") %> </span></td>
								</tr>
							    <tr class="opened">
									<td class="day_label">Annual Income :</td>
									<td class="day_value closed"><span><%=rs.getString("mother_tongue") %></span></td>
								</tr>
							 </tbody>
				          </table>
				         </div>
				         <div class="clearfix"> </div>
				    </div>
				  </div>
				  <div role="tabpanel" class="tab-pane fade" id="profile" aria-labelledby="profile-tab">
				    <div class="basic_3">
				    	<h4>Family Details</h4>
				    	<div class="basic_1 basic_2">
				    	<h3>Basics</h3>
				    	<div class="col-md-6 basic_1-left">
				    	  <table class="table_working_hours">
				        	<tbody>
				        		<tr class="opened">
									<td class="day_label">Father's Occupation :</td>
									<td class="day_value"><%=rs.getString("father_occupation") %></td>
								</tr>
				        		<tr class="opened">
									<td class="day_label">Mother's Occupation :</td>
									<td class="day_value"><%=rs.getString("mother_occupation") %></td>
								</tr>
							    <tr class="opened">
									<td class="day_label">No. of Brothers :</td>
									<td class="day_value closed"><span><%=rs.getString("brothers") %></span></td>
								</tr>
							    <tr class="opened">
									<td class="day_label">No. of Sisters :</td>
									<td class="day_value closed"><span><%=rs.getString("sisters") %></span></td>
								</tr>
							 </tbody>
				          </table>
				         </div>
				       </div>
				    </div>
				 </div>
				 
		     </div>
		  </div>
	   </div>
   	 </div>
     
        	   
<% } %>
           
        </div>
       <div class="clearfix"> </div>
    </div>
  </div>
</div>
