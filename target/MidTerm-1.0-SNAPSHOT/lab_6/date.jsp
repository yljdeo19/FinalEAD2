<%--
  Created by IntelliJ IDEA.
  User: Dream
  Date: 25.04.2021
  Time: 23:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:forward page = "Expression.jsp">
    <jsp:param name ="date" value="20-04-2021" />
    <jsp:param name ="time" value="10:15AM" />
    <jsp:param name ="data" value="ABC" />
</jsp:forward>
</body>
</html>
