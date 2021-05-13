<%--
  Created by IntelliJ IDEA.
  User: Dream
  Date: 30.04.2021
  Time: 19:55
  To change this template use File | Settings | File Templates.
--%>
<jsp:useBean id="prodList" type="java.util.List<com.example.MidTerm.Product>" scope="request"> </jsp:useBean>
<jsp:setProperty name="prodList" property="*"/>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css">
    <link href="static/css/bootstrap.css" rel="stylesheet">
    <link href="static/css/mdb.css" rel="stylesheet">
    <link href="static/css/style.min.css" rel="stylesheet">
    <link href="static/css/style.css" rel="stylesheet">
    <link href="static/css/util.css" rel="stylesheet">
</head>
<body>
<section class="text-right mb-4 img-fluid" style="">
    <!--Grid row-->
    <div class="row wow fadeIn float-lg">
        <% for (int i = 0; i < prodList.size(); i++) { %>
        <div class="col-lg-3 col-md-6 mb-4" style="display: inline-block; vertical-align: top;">
            <!--Card-->
            <div class="card" >

                <!--Card image1-->
                <div class="" style="margin: 0; position: relative;
                overflow: hidden;
	    width: auto;
	    height: 250px;">
                    <a href="">
                        <p style="margin: 0"><img src="main_blog/img/typography.jpg" class="card-img-top" alt="food" style="position: absolute;
                            top: 50%;
                            left: 50%;
                            transform: translate(-50%, -50%);
                            width: auto;
                            height: 250px;
                            object-fit: cover;"> </p>
                    </a>
                    <a href="" >
                        <div class="mask rgba-white-slight"></div>
                    </a>
                </div>
                <!--Card image1-->
                <!--Card content-->
                <div class="card-body text-center">
                    <!--Category & Title-->
                    <a href="" class="grey-text">
                        <h5>made by Dream</h5>
                    </a>
                    <h5>
                        <strong>
                            <a href="" class="dark-grey-text"><%
                                out.print(prodList.get(i).getName());%>
                            </a>
                        </strong>
                    </h5>
                    <h4 class="font-weight-bold blue-text">
                        <a href="" class="dark-grey-text">
                            <strong> <a href="" class="dark-grey-text"><%
                                out.print(prodList.get(i).getPrice());%> ₸</strong>
                        </a>
                    </h4>
                    <a href="" >
                        <input type="submit" value="More Details" class="btn btn-primary">
                    </a>
                </div>
                <!--Card content-->

            </div>
            <!--Card-->
        </div>
        <%}%>
    </div>
</section>
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
</body>
</html>
