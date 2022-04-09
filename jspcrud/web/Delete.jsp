
<%@page import="crud.EmpDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        String sid=request.getParameter("id");
	int id=Integer.parseInt(sid);
	EmpDao.delete(id);
	response.sendRedirect("View.jsp");
        %>
    </body>
</html>
