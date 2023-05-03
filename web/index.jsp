
<%@page import="java.util.List"%>
<%@page import="java.util.Arrays"%>
<%
    //See if there are any cookie values that can be used in this page
    Cookie[] cookies = request.getCookies();
    String lastLogin="";
    String username="";
    
    
    if (cookies!=null)
    {
        for (Cookie cookie: cookies)
        {
            if (cookie.getName().equals("sessionData"))
            {
                List<String> sessionValues=Arrays.asList(cookie.getValue().split("#"));
                username=sessionValues.get(0);
            }
        }
    }
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Accounts Login</title>
    </head>
    <body>
        <h1>Accounts Login</h1>
        <h3>User Login</h3>
        <form action="Validate" name="loginForm" method="GET">
            Username: <input type="text" name="username" value="<%=(!username.equals(""))?username:""%>"><br/>
            Password: <input type="password" name="password"><br/>
            <input type="submit" value="Login">
        </form>
        <br/>
        <%=(request.getParameter("message")!=null)?request.getParameter("message"):""%>
        <br/>
        (<a href="adminLogin.jsp">Admin Login</a>)
    </body>
</html>
