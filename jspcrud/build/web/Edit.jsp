
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
                <h1>Update Employee</h1>
                <%
		String sid=request.getParameter("id");
		int id=Integer.parseInt(sid);
		
		Emp e=EmpDao.getEmployeeById(id);
		%>
                
		<form action='Edit2.jsp' method='post'>
		<table>
                    <tr><td></td><td><input type='hidden' name='id' value='<% out.println(e.getId());%>'/></td></tr>
		<tr><td>Name:</td><td><input type='text' name='name' value='<% out.println(e.getName());%>'/></td></tr>
		<tr><td>Password:</td><td><input type='password' name='password' value='<% out.println(e.getPassword());%>'/></td></tr>
		<tr><td>Email:</td><td><input type='email' name='email' value='<% out.println(e.getEmail());%>'/></td></tr>
		<tr><td>Country:</td><td>
		<select name='country' style='width:150px'>
		<option>India</option>
		<option>USA</option>
		<option>UK</option>
		<option>Other</option>
		</select>
		</td></tr>
		<tr><td colspan='2'><input type='submit' value='Edit &amp; Save '/></td></tr>
		</table>
		</form>
    </body>
</html>
