<jsp:useBean id="user" class="com.example.MidTerm.User" scope="session"/>
<jsp:setProperty name="user" property="*"/>
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
    <style>
        .view{
            position: relative;
            background-position: center center;
            background-image: url(fastfood.jpg);
            background-repeat: no-repeat;
            background-size: cover;
        }
    </style>
</head>
<body>
<nav class="navbar fixed-top navbar-expand-lg navbar-dark scrolling-navbar">
    <button class="navbar-toggler" type="button" data-toggle="collapse"
            data-target="#navbarToggleExternalContent" aria-controls="navbarToggleExternalContent"
            aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="container">

        <a class="navbar-brand" href="#">
            <strong>Ara Chef</strong>
        </a>
        <!-- -----------------------links ----------------------------->
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <!-- Left links -------------------------------------->
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="index">Main
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="blog_list" >Blog</a>

                </li>
                <li class="nav-item">
                    <a class="nav-link" href="AddProductServlet" >Add Product</a>

                </li>
                <li class="nav-item">
                    <a class="nav-link" href="prod_serv" >All Products</a>

                </li>
                <li class="nav-item">
                    <a class="nav-link" href="contact" >Contacts</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/lab_6" >Lab_6</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/login.jsp" >Lab_7</a>
                </li>


            </ul>
            <!-- ------------------------------------Right links-->
            <ul class="navbar-nav nav-flex-icons">
                <li class="nav-item">
                    <a href="#" class="nav-link" target="_blank">
                        <i class="fab fa-facebook-f"></i>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="#" class="nav-link" target="_blank">
                        <i class="fab fa-twitter"></i>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="https://vk.com/dreamwalker19" class="nav-link" target="_blank">
                        <i class="fab fa-vk"></i>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="#" class="nav-link" target="_blank">
                        <i class="fab fa-instagram"></i>
                    </a>
                </li>
                <% if (user.getUsername() == null) { %>
                <li class="nav-item">
                    <a href="/login" class="nav-link border border-light rounded">
                        <i class="fab fa-github mr-2"></i>Login
                    </a>
                </li>
                <li class="nav-item">
                    <a href="/register" class="nav-link border border-light rounded">
                        <i class="fab fa-github mr-2"></i>Reg
                    </a>
                </li>
                <%}%>
                <% if (user.getUsername() != null) { %>
                <li><a href="result.jsp" class="nav-link border border-light rounded">
                    <i class="fab fa-github mr-2"></i>
                    <jsp:getProperty name="user" property="username"/>
                </a></li>
                <li><a href="logout" class="nav-link border border-light rounded"> <i class="fab fa-github mr-2"></i>Log out</a></li>
                <%}%>
            </ul>
        </div>
    </div>
</nav>

<div class="view">
    <div class="mask rgba-black-light d-flex justify-content-center align-items-center">
        <div class="text-center white-text mx-5 wow zoomInDown ">
            <h1 class="mb-4 ">
                <strong>Welcome to Ara Chef Blog!</strong>
            </h1>
            <p>
                <strong>A hungry belly has no ears.</strong>
            </p>

            <a  href="code.jsp" class="btn btn-outline-white ">Blog Here!
                <i class="fas fa-money-bill-wave" ml-2></i>
            </a>
        </div>
    </div>
</div>






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
