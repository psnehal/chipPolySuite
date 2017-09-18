
<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>
        GSE Suite
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <asset:stylesheet src="application.css"/>

    <g:layoutHead/>
</head>
<body>

<div class="navbar navbar-custom navbar-static-top" role="navigation">
    <div class="container-fluid">
        <div class="navbar-header">
            <a  class="navbar-left" href="${createLink(uri: '/')}"><img src="${resource(dir: 'images', file: 'GSELogoFinal.png')}" alt="GSE" style="max-height: 250px; max-width: 150px;" /></a>
        </div>


        <ul class="nav navbar-nav ">
            <li>
                <g:link controller="inputParam" action="index"> <span class="glyphicon glyphicon-home"></span> Home </g:link>
            </li>

            <li class="dropdown">
                <g:link controller="inputParam" action="tutorials"><span class="glyphicon glyphicon glyphicon-book"></span> Tutorials</g:link>
            </li>
            <li class="dropdown">
                <g:link controller="inputParam" action="news"><span class="glyphicon glyphicon-list-alt"></span> News</g:link>

            </li>

            <li class="dropdown">
                <g:link controller="inputParam" action="contact"><span class="glyphicon glyphicon-envelope"></span> Contact Us</g:link>

            </li>

        </ul>

        <ul class="nav navbar-nav navbar-right">

            <li><g:link controller="inputParam" action="contact"><span class="glyphicon glyphicon-user"></span> Sign Up</g:link></li>
            <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
        </ul>
    <br/>
    <br/>





    </div>

</div>





<div class="nav" role="navigation">

</div>

<g:layoutBody/>

<div class="footer" role="contentinfo"></div>

<div id="spinner" class="spinner" style="display:none;">

</div>

<asset:javascript src="application.js"/>

</body>
</html>
