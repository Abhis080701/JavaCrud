<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<%
String id = request.getParameter("id");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
Statement st = conn.createStatement();

int i = st.executeUpdate("DELETE FROM student WHERE id='"+id+"' ");

conn.close();
}
catch(Exception e)
{
	out.println(e);
}

%>
</body>
</html>