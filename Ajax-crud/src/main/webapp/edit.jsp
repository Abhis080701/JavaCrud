<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<%
	String id = request.getParameter("id");
	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "");
		Statement st = conn.createStatement();
		ResultSet rs = st.executeQuery("SELECT * FROM student WHERE id='" + id + "'");
		while(rs.next())
		{
			%>
			<tr>
			<td>First Name:</td>
			<input type="hidden" id="edit-id" value="<%= rs.getString("id") %>">
			<td><input type="text" id="edit-fname" value="<%= rs.getString("fname") %>"></td>
			</tr>
			<tr>
			<td>Last Name:</td>
			<td><input type="text" id="edit-lname" value="<%= rs.getString("lname") %>"></td>
			</tr>
			<tr>
			<td>Email:</td>
			<td><input type="email" id="edit-email" value="<%= rs.getString("email")%>"></td>
			</tr>
			<tr>
			<td></td>
			<td><input type="submit" id="edit-submit" value="update"></td>
			</tr>
			
			<% 
		}
	} catch (Exception ex) {
		out.print(ex.getMessage());
		ex.printStackTrace();
	}

	%>
	
</body>
</html>