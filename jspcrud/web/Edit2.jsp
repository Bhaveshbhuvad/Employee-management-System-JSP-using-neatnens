<%-- 
    Document   : Edit2
    Created on : Feb 20, 2022, 11:26:50 PM
    Author     : Bhavesh
--%>

<%@page import="crud.EmpDao"%>
<%@page import="crud.Emp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
               <% 
                try{
                   String sid=request.getParameter("id");
		int id=Integer.parseInt(sid.trim());
		String name=request.getParameter("name");
		String password=request.getParameter("password");
		String email=request.getParameter("email");
		String country=request.getParameter("country");
		
		Emp e=new Emp();
		e.setId(id);
		e.setName(name);
		e.setPassword(password);
		e.setEmail(email);
		e.setCountry(country);
		
		int status=EmpDao.update(e);
		if(status>0){
			response.sendRedirect("View.jsp");
		}else{
			out.println("Sorry! unable to update record");
		}
                }catch(Exception ex){out.println(ex);}
                %>
    </body>
</html>
