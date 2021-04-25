<%--
  Created by IntelliJ IDEA.
  User: Dream
  Date: 25.04.2021
  Time: 21:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<h1>IMPLICIT REQUEST</h1>
<body>
<% String username = request.getParameter("username");
out.println("Welcome " + username);
%>
</body>
</html>
