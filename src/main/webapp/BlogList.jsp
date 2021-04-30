<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--
  Created by IntelliJ IDEA.
  User: Dream
  Date: 15.03.2021
  Time: 1:22
  To change this template use File | Settings | File Templates.
--%>
<html>
<head>
    <title>MidTerm</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Ara Chef</title>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css">
    <link href="static/css/bootstrap.css" rel="stylesheet">
    <link href="static/css/mdb.css" rel="stylesheet">
    <link href="static/css/style.min.css" rel="stylesheet">
    <link href="static/css/style.css" rel="stylesheet">
    <link href="static/css/util.css" rel="stylesheet">
</head>
<body>
<jsp:useBean id="postList" type="java.util.List<com.example.MidTerm.Blog>" scope="request"> </jsp:useBean>
    <jsp:setProperty name="postList" property="*"/>
<main style="color:grey">
    <div class="container m-t-100 m-b-100" style="background-color: white; border-radius: 20px; text-decoration-color: black">

        <div class="table-responsive text-nowrap p-t-30">
            <h2>Cart</h2>
            <table class="table">
                <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Name of Blog</th>
                    <th scope="col">Category</th>
                    <th scope="col">Description</th>
                    <th scope="col">Rate</th>
                </tr>
                </thead>
                <tbody>
                <%! int counter = 0; %>
                <% for (int i = 0; i < postList.size(); i++) { %>
               <tr>
                   <td>
                        <%out.print(i);%>
                   </td>
                   <td>
                       <%
                       out.print(postList.get(i).getTitle());%>

                   </td>
                   <td>
                       <%
                           out.print(postList.get(i).getCategory());
                       %>
                   </td>
                   <td>
                       <%
                           out.print(postList.get(i).getDescription());
                       %>
                   </td>
                   <td>made by <% out.print(postList.get(i).getUsers().getUsername());%></td>
               </tr>
                <%}%>
                <tr>
                    <td colspan="5">
                        <a class='btn btn-warning float-right ml-2' href="AddBlogServlet">Add Blog</a>
                        <a class='btn btn-primary float-right' href=''>View Profile</a>
                    </td>
                </tr>

                </tbody>
            </table>

        </div>

    </div>
</main>
<!-- Bootstrap tooltips -->
<script type="text/javascript" src="static/js/popper.min.js"></script>
<!-- Bootstrap core JavaScript -->
<script type="text/javascript" src="static/js/bootstrap.min.js"></script>
<!-- MDB core JavaScript -->
<script type="text/javascript" src="static/js/mdb.min.js"></script>
<script type="text/javascript" src="static/js/mdb.js"> </script>
<!-- Initializations -->
<script type="text/javascript">
    // Animations initialization
    new WOW().init();
</script>
<!-- jQuery !-->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"> </script>
<!-- jQuery UI !-->
<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>
</body>
</html>
