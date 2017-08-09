
<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>
        GSE Suite
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>

    <asset:stylesheet src="application.css"/>

    <g:layoutHead/>
</head>
<body>

<div class="navbar navbar-default navbar-static-top" role="navigation">
    <div class="container">
        <div class="navbar-header">


                <nav class="navbar navbar-toggleable-md navbar-light bg-faded">
                    <a class="navbar-brand" href="#">GSE</a>
                </nav>
            </div>



            <content tag="nav">
                <li class="dropdown">
                    <a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
                </li>
                <li class="dropdown">
                    <g:link controller="inputParam" action="datasets">Datasets</g:link>

                </li>
                <li class="dropdown">
                    <g:link controller="inputParam" action="tutorials">Tutorials</g:link>
                </li>
                <li class="dropdown">
                    <g:link controller="inputParam" action="news">News</g:link>

                </li>
                <li class="dropdown">
                    <g:link controller="inputParam" action="tutorials">Tutorials</g:link>
                </li>
                <li class="dropdown">
                    <g:link controller="inputParam" action="contact">Contact Us</g:link>

                </li>
            </content>

        <ul class="nav navbar-nav navbar-right">
            <li>
                <a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
            </li>
            <li class="dropdown">
                <g:link controller="inputParam" action="datasets">Datasets</g:link>

            </li>
            <li class="dropdown">
                <g:link controller="inputParam" action="tutorials">Tutorials</g:link>
            </li>
            <li class="dropdown">
                <g:link controller="inputParam" action="news">News</g:link>

            </li>
            <li class="dropdown">
                <g:link controller="inputParam" action="tutorials">Tutorials</g:link>
            </li>
            <li class="dropdown">
                <g:link controller="inputParam" action="contact">Contact Us</g:link>

            </li>
        </ul>
        </div>

        <div class="navbar-collapse collapse" aria-expanded="false" style="height: 0.8px;">

            <ul class="nav navbar-nav navbar-right">
                <g:pageProperty name="page.nav" />
            </ul>

        </div>
    </div>
</div>

<div class="nav" role="navigation">

</div>

<g:layoutBody/>

<div class="footer" role="contentinfo"></div>

<div id="spinner" class="spinner" style="display:none;">
    <g:message code="spinner.alt" default="Loading&hellip;"/>
</div>

<asset:javascript src="application.js"/>

</body>
</html>
