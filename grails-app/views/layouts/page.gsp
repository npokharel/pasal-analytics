<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Pasal Analytics! | </title>

    <!-- Bootstrap -->
    <asset:stylesheet src="vendors/bootstrap.css"/>

    <!-- Font Awesome -->
    <asset:stylesheet src="vendors/font-awesome.css"/>

    <!-- NProgress -->
    <asset:stylesheet src="vendors/nprogress.css"/>

    <!-- Custom Theme Style -->
    <asset:stylesheet src="vendors/custom.css"/>

    <!-- jQuery -->
    <asset:javascript src="vendors/jquery.min.js"/>

    <g:layoutHead/>
</head>

<body class="nav-md menu_fixed" >
<div class="container body">
    <div class="main_container">
        <div class="col-md-3 left_col">
            <div class="left_col scroll-view">
                <div class="navbar nav_title" style="border: 0;">
                %{--<a href="index.html" class="site_title">--}%
                    <g:link controller="dashBoard" action="index" class="site_title"> <i class="fa fa-paw"></i> <span>Pasal Analytics!</span></g:link>
                </div>

                <div class="clearfix"></div>

                <!-- menu profile quick info -->
                <div class="profile clearfix">
                    <div class="profile_pic">
                        <asset:image src="image.png" class="img-circle profile_img"/>
                    </div>
                    <div class="profile_info">
                        <span>Welcome,</span>
                        <h2>Niraj Pokharel</h2>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <!-- /menu profile quick info -->

                <br />

                <!-- sidebar menu -->
                <g:render template="/layouts/page/sidebar"/>
                <!-- /sidebar menu -->

                <!-- /menu footer buttons -->
                <g:render template="/layouts/page/sidebar_footer"/>
                <!-- /menu footer buttons -->
            </div>
        </div>

        <!-- top navigation -->
        <g:render template="/layouts/page/top_nav"/>
        <!-- /top navigation -->

        <!-- page content -->
        <div class="right_col" role="main">
            <div class="">
                <g:layoutBody/>
            </div>

            <!-- /page content -->
        </div>
        <!-- footer content -->
        <g:render template="/layouts/page/footer"/>
        <!-- /footer content -->

</div>


<!-- Bootstrap -->
<asset:javascript src="vendors/bootstrap.min.js"/>
<!-- FastClick -->
<asset:javascript src="vendors/fastclick.js"/>
<!-- NProgress -->
<asset:javascript src="vendors/nprogress.js"/>
<!-- Custom Theme Scripts -->
<asset:javascript src="vendors/custom.js"/>
</body>
</html>
