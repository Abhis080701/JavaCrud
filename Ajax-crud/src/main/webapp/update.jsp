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
String id = request.getParameter("sid");
String fname = request.getParameter("sname");
String lname = request.getParameter("slname");
String email = request.getParameter("semail");
try{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "");
Statement st = conn.createStatement();
int j = st.executeUpdate("UPDATE student SET fname='"+fname+"',lname='"+lname+"',email='"+email+"' WHERE id='"+id+"' ");
conn.close();
}
catch(Exception ex)
{
out.print(ex.getMessage());
ex.printStackTrace();
}
%>
</body>
</html>