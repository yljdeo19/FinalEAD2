<%--
  Created by IntelliJ IDEA.
  User: Dream
  Date: 15.03.2021
  Time: 3:15
  To change this template use File | Settings | File Templates.
--%>
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
    <style>
        .chat
        {
            list-style: none;
            margin: 0;
            padding: 0;
        }

        .chat li
        {
            margin-bottom: 10px;
            padding-bottom: 5px;
            border-bottom: 1px dotted #B3A9A9;
        }

        .chat li.left .chat-body
        {
            margin-left: 60px;
        }

        .chat li.right .chat-body
        {
            margin-right: 60px;
        }


        .chat li .chat-body p
        {
            margin: 0;
            color: #777777;
        }

        .panel .slidedown .glyphicon, .chat .glyphicon
        {
            margin-right: 5px;
        }

        .panel-body
        {
            overflow-y: scroll;
            height: 250px;
        }

        ::-webkit-scrollbar-track
        {
            -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3);
            background-color: #F5F5F5;
        }

        ::-webkit-scrollbar
        {
            width: 12px;
            background-color: #F5F5F5;
        }

        ::-webkit-scrollbar-thumb
        {
            -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,.3);
            background-color: #555;
        }
    </style>
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
                <form id="contact-form" name="contact-form" method="POST">
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
                    <div class="container table-bordered    " style="margin-right: 0; padding-right: 0; width: 400px; margin-top: 100px">
                        <div class="row">
                            <div class="col-md-12" >
                                <div class="panel panel-primary">
                                    <div class="panel-body">
                                        <ul class="chat">
                                            <li class="left clearfix"><span class="chat-img pull-left">
                            <img src="http://placehold.it/50/55C1E7/fff&text=U" alt="User Avatar" class="img-circle" />
                        </span>
                                                <div class="chat-body clearfix">
                                                    <div class="header">
                                                        <strong class="primary-font"><% String name = request.getParameter("name");
                                                            out.println(name);
                                                        %></strong> <small class="pull-right text-muted">
                                                        <span class="glyphicon glyphicon-time"></span>12 mins ago</small>
                                                    </div>
                                                    <p>
                                                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur bibendum ornare
                                                        dolor, quis ullamcorper ligula sodales.
                                                    </p>
                                                </div>
                                            </li>
                                            <li class="right clearfix"><span class="chat-img pull-right">
                            <img src="http://placehold.it/50/FA6F57/fff&text=ME" alt="User Avatar" class="img-circle" />
                        </span>
                                                <div class="chat-body clearfix">
                                                    <div class="header">
                                                        <small class=" text-muted"><span class="glyphicon glyphicon-time"></span>13 mins ago</small>
                                                        <strong class="pull-right primary-font">Ara Chef</strong>
                                                    </div>
                                                    <p>
                                                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur bibendum ornare
                                                        dolor, quis ullamcorper ligula sodales.
                                                    </p>
                                                </div>
                                            </li>
                                            <li class="left clearfix"><span class="chat-img pull-left">
                            <img src="http://placehold.it/50/55C1E7/fff&text=U" alt="User Avatar" class="img-circle" />
                        </span>
                                                <div class="chat-body clearfix">
                                                    <div class="header">
                                                        <strong class="primary-font"><%  name = request.getParameter("name");
                                                            out.println(name);
                                                        %></strong> <small class="pull-right text-muted">
                                                        <span class="glyphicon glyphicon-time"></span>14 mins ago</small>
                                                    </div>
                                                    <p>
                                                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur bibendum ornare
                                                        dolor, quis ullamcorper ligula sodales.
                                                    </p>
                                                </div>
                                            </li>
                                            <li class="right clearfix"><span class="chat-img pull-right">
                            <img src="http://placehold.it/50/FA6F57/fff&text=ME" alt="User Avatar" class="img-circle" />
                        </span>
                                                <div class="chat-body clearfix">
                                                    <div class="header">
                                                        <small class=" text-muted"><span class="glyphicon glyphicon-time"></span>now</small>
                                                        <strong class="pull-right primary-font">Ara Chef</strong>
                                                    </div>
                                                    <p>
                                                       Thank you for your message: "<% String message = request.getParameter("message");
                                                        out.println(message);
                                                    %>", We added your email "<% String email = request.getParameter("email");
                                                        out.println(email);
                                                    %>" to our "The Best Blogger" List.
                                                    </p>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="panel-footer">
                                        <div class="input-group">
                                            <input id="btn-input" type="text" class="form-control input-sm" placeholder="Type your message here..." />
                                            <span class="input-group-btn">
                            <button class="btn btn-warning btn-sm" id="btn-chat">
                                Send</button>
                        </span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </ul>
            </div>
            <!--Grid column-->

        </div>

    </section>

</div>
<!------ Include the above in your HEAD tag ---------->

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
