<%--
  Created by IntelliJ IDEA.
  User: Dream
  Date: 15.03.2021
  Time: 0:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>MidTerm</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Ara Chef</title>
    <!--===============================================================================================-->
    <link rel="icon" type="image/png" href="blog/images/icons/favicon.ico"/>
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="blog/vendor/bootstrap/css/bootstrap.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="blog/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="blog/vendor/animate/animate.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="blog/vendor/css-hamburgers/hamburgers.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="blog/vendor/animsition/css/animsition.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="blog/vendor/select2/select2.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="blog/vendor/daterangepicker/daterangepicker.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="blog/css/util.css">
    <link rel="stylesheet" type="text/css" href="blog/css/main.css">
    <!--===============================================================================================-->
</head>
<body>
<div class="container-contact100">

    <div class="wrap-contact100">
        <form class="contact100-form validate-form" action="/add_Blog" method="post">
				<span class="contact100-form-title">
					Create Some Blog
				</span>

            <div class="wrap-input100 validate-input" data-validate="Please enter your name">
                <input class="input100" type="text" name="name" placeholder="Blog Title">
                <span class="focus-input100"></span>
            </div>

            <div class="wrap-input100 validate-input" data-validate = "Please enter your email: e@a.x">
                <input class="input100" type="text" name="category" placeholder="Category">
                <span class="focus-input100"></span>
            </div>

            <div class="wrap-input100 validate-input" data-validate = "Please enter your message">
                <textarea class="input100" name="description" placeholder="Full Description"></textarea>
                <span class="focus-input100"></span>
            </div>

            <div class="container-contact100-form-btn">
                <button class="contact100-form-btn" type="submit">
						<span>
							<i class="fa fa-paper-plane-o m-r-6" aria-hidden="true"></i>
							Create
						</span>
                </button>
            </div>
        </form>
    </div>
</div>
<div id="dropDownSelect1"></div>
<!--===============================================================================================-->
<script src="blog/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
<script src="blog/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
<script src="blog/vendor/bootstrap/js/popper.js"></script>
<script src="blog/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
<script src="blog/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
<script src="blog/vendor/daterangepicker/moment.min.js"></script>
<script src="blog/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
<script src="blog/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
<script src="blog/js/main.js"></script>

<script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
<script>
    window.dataLayer = window.dataLayer || [];
    function gtag(){dataLayer.push(arguments);}
    gtag('js', new Date());

    gtag('config', 'UA-23581568-13');
</script>

</body>
</html>
