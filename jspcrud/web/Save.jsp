
<%@page import="crud.EmpDao"%>
<%@page import="crud.Emp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

        <%
                String name=request.getParameter("name");
                String password=request.getParameter("password");
                String email=request.getParameter("email");
                String country=request.getParameter("country");

                Emp e=new Emp();
		e.setName(name);
		e.setPassword(password);
		e.setEmail(email);
		e.setCountry(country);

                int status=EmpDao.save(e);
		if(status>0){
			out.println("<p>Record saved successfully!</p>");
			%>
        <html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h1>Add New Employee</h1>
<form action="Save.jsp" method="get">
<table>
<tr><td>Name:</td><td><input type="text" name="name"/></td></tr>
<tr><td>Password:</td><td><input type="password" name="password"/></td></tr>
<tr><td>Email:</td><td><input type="text" name="email"/></td></tr>
<tr><td>Country:</td><td>
<select name="country" style="width:150px">
<option>India</option>
<option>USA</option>
<option>UK</option>
<option>Other</option>
</select>
</td></tr>
<tr><td colspan="2"><input type="submit" value="Save Employee"/></td></tr>
</table>
</form>

<br/>
<a href="View.jsp">view employees</a>

</body>
</html>
<%
		}else{
			out.println("Sorry! unable to save record");
		}
		
		out.close();
        %>
    