
<%@page import="java.util.List"%>
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
        
        <a href="index.jsp">Add New Employee</a>
        <h1>Employees List</h1>
        
        <%List<Emp> list=EmpDao.getAllEmployees();%>
        <table border='1' width='100%'>
	<tr><th>Id</th><th>Name</th><th>Password</th><th>Email</th><th>Country</th><th>Edit</th><th>Delete</th></tr>
	<%for(Emp e:list)
        {
            out.print("<tr><td>"+e.getId()+"</td><td>"+e.getName()+"</td><td>"+e.getPassword()+"</td><td>"+e.getEmail()+"</td><td>"+e.getCountry()+"</td><td><a href='Edit.jsp?id="+e.getId()+"'>edit</a></td><td><a href='Delete.jsp?id="+e.getId()+"'>delete</a></td></tr>");
	}%>
	</table>
    </body>
</html>
