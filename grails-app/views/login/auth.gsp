
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    %{--<link rel="icon" href="../../favicon.ico">--}%

    <title>Enter your login details</title>

    <!-- Bootstrap core CSS -->

    <asset:stylesheet src="auth"/>

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->

    <asset:stylesheet src="ie10"/>


    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>

%{--<div class="container">

    --}%%{--<form action='${postUrl ?: '/login/authenticate' method='POST' id='loginForm' class="form-signin">
        <h2 class="form-signin-heading">Please sign in</h2>
        <label for="username" class="sr-only">User Name</label>
        <input type="text"  name='j_username' id='username' class="form-control" placeholder="Username" required autofocus>
        <label for="password" class="sr-only">Password</label>
        <input type="password" name='j_password' id='password' class="form-control" placeholder="Password" required>
        <div class="checkbox">
            <label>
                <input type="checkbox" name='${rememberMeParameter}' id='remember_me' value="remember-me" <g:if test='${hasCookie}'>checked='checked'</g:if>> Remember me
            </label>
        </div>
        --}%%{----}%%{--<button class="btn btn-lg btn-primary btn-block" type="submit" id="submit">Sign in</button>--}%%{----}%%{--
        <input type='submit' id="submit" value='${message(code: "springSecurity.login.button")}'/>
    </form>--}%%{--

    <form action="${postUrl ?: '/login/authenticate'}" method="POST" id="loginForm" class="form-signin" autocomplete="off">
        <h2 class="form-signin-heading">Please sign in</h2>

        <label for="username" class="sr-only">User Name</label>
        <input type="text" class="form-control"  name="${usernameParameter ?: 'username'}" id="username" placeholder="Username" required autofocus/>

        <label for="password" class="sr-only">Password</label>
        <input type="password" class="form-control"  name="${passwordParameter ?: 'password'}" id="password" placeholder="Password" required/>


        <p id="remember_me_holder">
            <input type="checkbox" class="chk" name="${rememberMeParameter ?: 'remember-me'}" id="remember_me" <g:if test='${hasCookie}'>checked="checked"</g:if>/>
            <label for="remember_me"><g:message code='springSecurity.login.remember.me.label'/></label>
        </p>


        <input type="submit" id="submit" value="${message(code: 'springSecurity.login.button')}"/>

    </form>

</div> <!-- /container -->


<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<asset:javascript src="ie10"/>--}%

%{--<script src="http://mymaplist.com/js/vendor/TweenLite.min.js"></script>--}%
<body>
<div class="container">
    <div class="row vertical-offset-100">
        <div class="col-md-4 col-md-offset-4">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <div class="row-fluid user-row">
                        <img src="${resource(file: 'logo_sm_2_mr_1.png', dir: 'images')}" class="img-responsive" alt="Pasal Login"/>
                    </div>
                </div>
                <div class="panel-body">
                    <form action="${postUrl ?: '/login/authenticate'}" accept-charset="UTF-8"  method='POST' id='loginForm' role="form" class="form-signin">
                        <fieldset>
                            %{--<label class="panel-login">
                                <div class="login_result"></div>
                            </label>
                            <input class="form-control" placeholder="Username" id="username" type="text">
                            <input class="form-control" placeholder="Password" id="password" type="password">
                            <br></br>
                            <input class="btn btn-lg btn-success btn-block" type="submit" id="login" value="Login »">--}%

                            <label for="username" class="sr-only">User Name</label>
                            <input type="text" class="form-control"  name="${usernameParameter ?: 'username'}" id="username" placeholder="Username" required autofocus/>

                            <label for="password" class="sr-only">Password</label>
                            <input type="password" class="form-control"  name="${passwordParameter ?: 'password'}" id="password" placeholder="Password" required/>


                            <p id="remember_me_holder">
                                <input type="checkbox" class="chk" name="${rememberMeParameter ?: 'remember-me'}" id="remember_me" <g:if test='${hasCookie}'>checked="checked"</g:if>/>
                                <label for="remember_me"><g:message code='springSecurity.login.remember.me.label'/></label>
                            </p>


                            <input class="btn btn-lg btn-success btn-block" type="submit" id="submit" value="${message(code: 'springSecurity.login.button')}"/>

                        </fieldset>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</body>
</html>
