<!-- Developed by Kuldeep Singh
email: mca.kuldeep.sekhon@gmail.com
contact 919803242155
India
 -->
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="database.DbUtil"%>
<div class="container">
<div class="row">
	<div class="col-md-12">
		<h1 class="page-header">
Manage users
		
		</h1>
		

		<div class="hero-unit-table">
			<table class="table table-striped table-bordered table-hover"
				id="dataTables-example">
				<div class="alert alert-info">
					<strong><i class="icon-user icon-large"></i>&nbsp;Users
						Table</strong>
				</div>
				<thead>
					<tr>
						<th>Id</th>
						<th>Name</th>
						<th>email</th>
						<th>image</th>
						<th>Actions</th>
					</tr>
				</thead>
				<tbody>
					<%
						Connection conn = DbUtil.getConnection();
						String sql = "select * from members";
						PreparedStatement stmt = conn.prepareStatement(sql);
						ResultSet rs = stmt.executeQuery();
						while (rs.next()) {
					%>
					<tr class="warning">
						<td width="150"><%=rs.getInt("id")%></td>
						<td width="150"><%=rs.getString("first_name")%></td>
						<td width="150"><%=rs.getString("email")%></td>
						<td width="150" align="center"><img
							src='upload/<%=rs.getString("image1")%>' class="img-rounded" width="50"
							height="40"></td>

						<td width="160"><a href='#delete_user<%=rs.getInt("id")%>'
							role="button" data-target='#delete_user<%=rs.getInt("id")%>'
							?id='<%=rs.getInt("id")%>' data-toggle="modal"
							class="btn btn-danger"><i class="icon-trash icon-large"></i>&nbsp;Delete</a>
							<a href='dashboard?action=edit&id=<%=rs.getInt("id")%>'
							class="btn btn-success"><i class="icon-pencil icon-large"></i>&nbsp;Edit</a>
						</td>
						<!-- product delete modal -->
						<%@include file="delete_user_modal.jsp"%>

						<!-- end delete modal -->
					</tr>
					<%
						}
					%>
				</tbody>
			</table>
		</div>
	</div>
</div>

</div>
</div>