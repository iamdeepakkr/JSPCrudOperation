<%@page import="JSPCrud.UserDao"%>
<jsp:useBean id="u" class="JSPCrud.User"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
UserDao.delete(u);
response.sendRedirect("viewusers.jsp");
%>