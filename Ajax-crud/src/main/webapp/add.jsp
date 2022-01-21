<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.*,java.util.*" %>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<%
String fname = request.getParameter("Fname");
String lname = request.getParameter("Lname");
String email = request.getParameter("Email");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
Statement st = conn.createStatement();
int i = st.executeUpdate("INSERT INTO student(fname,lname,email) VALUES('"+fname+"','"+lname+"','"+email+"')");
out.print("Added");
conn.close();
}
catch(Exception e)
{
	
	out.print(e.getMessage());
}
%>
</body>
</html>