<%-- 
    Document   : pass_data
    Created on : Jun 13, 2015, 10:36:23 PM
    Author     : Amit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@ page import="java.sql.*;"%>
        <%
            String var=request.getParameter("id4");
            session.setAttribute("postques",var);
        response.sendRedirect("post_full.jsp");
        %>
        <h1>Hello World!</h1>
    </body>
</html>
