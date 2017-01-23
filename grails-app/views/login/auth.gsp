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
    <!-- Animate.css -->
    %{--<link href="../vendors/animate.css/animate.min.css" rel="stylesheet">--}%
    <asset:stylesheet src="vendors/animate.min.css"/>
</head>

<body class="login">
<div>
    <a class="hiddenanchor" id="signup"></a>
    <a class="hiddenanchor" id="signin"></a>

    <div class="login_wrapper">
        <div class="animate form login_form">
            <section class="login_content">

                <form action="${postUrl ?: '/login/authenticate'}" accept-charset="UTF-8"  method='POST' id='loginForm' role="form" class="form-signin">
                    <h1>Login Form</h1>
                    <g:message code="${flash.message}" args="${flash.args}" default="${flash.message}"/>
                    <div>
                        %{--<input type="text" class="form-control" placeholder="Username" required="" />--}%
                        <input type="text" class="form-control"  name="${usernameParameter ?: 'username'}" id="username" placeholder="Username" required autofocus/>
                    </div>
                    <div>
                        %{--<input type="password" class="form-control" placeholder="Password" required="" />--}%
                        <input type="password" class="form-control"  name="${passwordParameter ?: 'password'}" id="password" placeholder="Password" required/>
                    </div>

                    <div class="checkbox" align="left">
                        <label>
                            <input type="checkbox" name="${rememberMeParameter ?: 'remember-me'}" id="remember_me" value=""> Remember me
                        </label>
                    </div>

                    <div >
                        <input  class="btn btn-default submit" type="submit" id="submit" value="${message(code: 'springSecurity.login.button')}"/>
                        <a class="reset_pass" href="#">Lost your password?</a>
                    </div>

                    <div class="clearfix"></div>

                    <div class="separator">
                        <p class="change_link">New to site?
                            <a href="#signup" class="to_register"> Create Account </a>
                        </p>

                        <div class="clearfix"></div>
                        <br />

                        <div>
                            <h1><i class="fa fa-paw"></i> Pasal Analytics!</h1>
                            <p>©2016 All Rights Reserved. Pasal Analytics! Privacy and Terms</p>
                        </div>
                    </div>
                </form>

            </section>
        </div>

        <div id="register" class="animate form registration_form">
            <section class="login_content">
                <form>
                    <h1>Create Account</h1>
                    <div>
                        <input type="text" class="form-control" placeholder="Username" required="" />
                    </div>
                    <div>
                        <input type="email" class="form-control" placeholder="Email" required="" />
                    </div>
                    <div>
                        <input type="password" class="form-control" placeholder="Password" required="" />
                    </div>
                    <div>
                        <a class="btn btn-default submit" href="index.html">Submit</a>
                    </div>

                    <div class="clearfix"></div>

                    <div class="separator">
                        <p class="change_link">Already a member ?
                            <a href="#signin" class="to_register"> Log in </a>
                        </p>

                        <div class="clearfix"></div>
                        <br />

                        <div>
                            <h1><i class="fa fa-paw"></i> Pasal Analytics!</h1>
                            <p>©2016 All Rights Reserved. Pasal Analytics! Privacy and Terms</p>
                        </div>
                    </div>
                </form>
            </section>
        </div>
    </div>
</div>
</body>
</html>
