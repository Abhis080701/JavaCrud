<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>view</title>
</head>
<body>
	<%
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "");
	Statement st = conn.createStatement();
	ResultSet rs = st.executeQuery("SELECT * FROM student");
	while (rs.next()) {
	%>
	<tr>
		<td><%=rs.getString("fname")%></td>
		<td><%=rs.getString("lname")%></td>
		<td><%=rs.getString("email")%></td>
		<td><button class="delete-btn" data-id="<%= rs.getString("id") %>">DELETE</button>/
		<button class="edit-btn" data-eid="<%= rs.getString("id") %>">EDIT</button>
		</td>
		
	</tr>
	<%
	}
	%>

</body>
</html>