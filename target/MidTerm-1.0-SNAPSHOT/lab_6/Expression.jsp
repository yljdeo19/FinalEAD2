
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Expression</title>
</head>
<body>
<h1>Expressions</h1>
<% out.println("The expression number is "); %>
<% int num1=10; int num2=10; int num3 = 20; %>
<%= num1*num2+num3 %>

<h1>ACTION TAGS</h1>
Date:<%= request.getParameter("date") %>
<br/>
Time:<%= request.getParameter("time") %>
<br/>
My Data:<%= request.getParameter("data") %>
</body>
</html>