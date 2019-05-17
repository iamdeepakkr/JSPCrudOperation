<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Users</title>
</head>
<body>
<%@page import="JSPCrud.UserDao,JSPCrud.*,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<h1>Users List</h1>
<%
String id=request.getParameter("id");
User u=UserDao.getRecordById(Integer.parseInt(id));
%>
<form action="edituser.jsp" method="post">
<input type="hidden" name="id" value="<%=u.getId() %>"/>
<table>
<tr><td>Name:</td><td><%=u.getId()%></td></tr>
<tr><td>Name:</td><td><%=u.getName()%></td></tr>
<tr><td>Password:</td><td><%= u.getPassword()%></td></tr>
<tr><td>Email:</td><td><%= u.getEmail()%></td></tr>
<tr><td>Sex:</td><td><%= u.getSex()%> </td></tr>
<tr><td>Country:</td><td><%= u.getCountry()%></td></tr>
</table>
</form>
<br/><a href="adduserform.jsp">Add New User</a>
</body>
</html>