<%--
  Created by IntelliJ IDEA.
  User: Dream
  Date: 15.03.2021
  Time: 2:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Contact Us</title>
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
<div class="container text-black">

    <section class="mb-4 p-5" style="background-color: white; margin-top: 80px; border-radius: 50px">

        <!--Section heading-->
        <h2 class="h1-responsive font-weight-bold text-center my-4">
            Contact us</h2>
        <!--Section description-->
        <p class="text-center w-responsive mx-auto mb-5">Do you have any questions? Do not hesitate to contact us directly. Our team will respond to you within a few hours to help.</p>

        <div class="row">

            <!--Grid column-->
            <div class="col-md-9 mb-md-0 mb-5">
                <form id="contact-form" name="contact-form" method="POST" action="/contact">
                    <!--Grid row-->
                    <div class="row">

                        <!--Grid column-->
                        <div class="col-md-6">
                            <div class="md-form mb-0">
                                <input type="text" name="name" id="name" class="form-control">
                                <label for="name" class="">Name</label>
                            </div>
                        </div>
                        <!--Grid column-->

                        <!--Grid column-->
                        <div class="col-md-6">
                            <div class="md-form mb-0">
                                <input type="text" name="email" id="email" class="form-control">
                                <label for="email" class="">E'mail</label>
                            </div>
                        </div>
                        <!--Grid column-->

                    </div>
                    <!--Grid row-->

                    <!--Grid row-->
                    <div class="row">
                        <div class="col-md-12">
                            <div class="md-form mb-0">
                                <input type="text" id="subject" name="subject" class="form-control">
                                <label for="subject" class="">Reason</label>
                            </div>
                        </div>
                    </div>
                    <!--Grid row-->

                    <!--Grid row-->
                    <div class="row">

                        <!--Grid column-->
                        <div class="col-md-12">

                            <div class="md-form">
                                <textarea name="message" id="message" rows="3" class="form-control md-textarea"></textarea>
                                <label for="message">Type any messages</label>
                            </div>

                        </div>
                    </div>
                    <!--Grid row-->
                    <div class="text-center text-md-left">
                        <button class="btn btn-primary" type="submit">Send</button>
                    </div>
                    <div class="status"></div>
                </form>


            </div>
            <!--Grid column-->

            <!--Grid column-->
            <div class="col-md-3 text-center">
                <ul class="list-unstyled mb-0">
                    <li><i class="fas fa-map-marker-alt fa-2x"></i>
                        <p>New York, Walker street 149</p>
                    </li>

                    <li><i class="fas fa-phone mt-4 fa-2x"></i>
                        <p>+7 707 111-40-88</p>
                    </li>

                    <li><i class="fas fa-envelope mt-4 fa-2x"></i>
                        <p>our mail</p>
                    </li>
                </ul>
            </div>
            <!--Grid column-->

        </div>

    </section>
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
