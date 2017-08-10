<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'inputParam.label', default: 'InputParam')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>

    <div class="row">
        <div class=" col-md-6 center-block">
            <table class="table table">
                <thead>
                <tr>
                    <th colspan="2" class="text-center">Pick a pipeline</th>


                </tr>
                </thead>
                <tbody>

                <tr>

                    <td><div class="panel panel-chip panel-broad">
                        <div class="panel-body ">

                            <g:link controller="inputParam" action="chipInput">Genomic region Enrichment</g:link>

                        </div>
                    </div>
                    </td>
                    <td><div class="panel panel-broad">
                        <div class="panel-body">Gene Expression Enrichment</div>
                    </div></td>

                </tr>
                <tr>

                    <td><div class="panel panel-broad">
                        <div class="panel-body">Combined Enr genomic regions +expression</div>
                    </div>
                    </td>
                    <td><div class="panel panel-broad">
                        <div class="panel-body">Reverse Enr testing</div>
                    </div></td>

                </tr>
                <tr>

                    <td colspan="2" class="text-center"><div class="panel panel-broad"> <div class="panel-body">Peak to gene annotation</div></div></td>



                </tr>
                </tbody>
            </table>
        </div>
    </div>
    </div>

    </div>
    </body>
</html>
