
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Accounts Admin Login</title>
    </head>
    <body>
        <h1>Accounts Administrator Login</h1>
        <h3>Administrator Login</h3>
        <form action="Validate" method="GET">
            Username: <input type="text" name="adminUsername"><br/>
            Password: <input type="password" name="password"><br/>
            <input type="submit" value="Login">
        </form>
        <br/>
        <%=(request.getParameter("message")!=null)?request.getParameter("message"):""%>  
        <br/>
        (<a href="index.jsp">User Login</a>)
    </body>
</html>
