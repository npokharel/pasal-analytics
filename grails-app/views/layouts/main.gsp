<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="pasal dashboard index">
    <meta name="author" content="Niraj Kumar Pokharel">
    <title>Pasal Dashboard</title>
    <asset:stylesheet src="application"/>

    <g:layoutHead/>
</head>

<body>

<g:render template="/layouts/navbar"/>

<div class="container-fluid">
    <div class="row">
        <g:render template="/layouts/sidebar"/>

        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
            <g:layoutBody/>
        </div>
    </div>
</div>

<asset:javascript src="application"/>
<g:render template="/layouts/footer"/>

</body>
</html>