
<!-- PREFIX TAGLIB -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- DIRECTIVE LANGUAGE -->
<%@ page language = "java" contentType = "text / html; charset = ISO-8859-1"
    pageEncoding = "ISO-8859-1" %>
<html>
<head>
    <title>Declaration</title>
</head>
<body>
<h1>Declaration</h1>
<%! int count =10; %>
<% out.println("The Number is " +count); %>
<br/>
<a href="lab_6/Comment.jsp">Comment</a>
<br/>
<a href="lab_6/Statement.jsp">Statement</a>
<br/>
<a href="lab_6/Expression.jsp">Expression</a>

<h1>IMPLICIT <b>OUT</b></h1>
<% int num1=10;int num2=20;
    out.println("num1 is " +num1 + "\n");
    out.println("num2 is "+num2);
%>
<h1>IMPLICIT REQUEST</h1>
<form action="lab_6/implicit_req.jsp">
    <input type="text" name="username"/>
    <input type="submit" value="submit"/>
</form>
<h1>IMPLICIT pageCONTEXT</h1>
<% pageContext.setAttribute("me","Arman",pageContext.PAGE_SCOPE);
    String name = (String)pageContext.getAttribute("me");
    out.println("My name is " +name);
%>
    <h1>INCLUDE</h1>
    <a href="lab_6/includemain.jsp">INCLUDE</a>
    <h1>PREFIX TAGLIB</h1>
    <c:set var="name" value="ARMAN"></c:set>
    <c:out value="${name}"></c:out>
    <h1>ACTION TAGS</h1>
    <a href="lab_6/date.jsp">LINK TO EXPRESSION</a>
    <h2>The include action Example</h2>
    <jsp:include page = "implicit_req.jsp" flush = "true" />
</body>
</html>