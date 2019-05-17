<%@page import="JSPCrud.UserDao"%>
<jsp:useBean id="u" class="JSPCrud.User"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
int i=UserDao.update(u);
response.sendRedirect("viewusers.jsp");
%>