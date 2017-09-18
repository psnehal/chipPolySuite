<!DOCTYPE html>


<html>

<! https://bootsnipp.com/snippets/featured/simple-vertical-tab ---!>
    <head>

        <asset:javascript src="jquery-2.2.0.min.js"/>
        <asset:javascript src="application.js"/>
        <asset:stylesheet src="application.css"/>
        <asset:javascript src="validation.js" />
        <asset:stylesheet src="bootcards/bootcards.js"/>
        <meta name="layout" content="main" />

        <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
        <link rel="stylesheet" href="/resources/demos/style.css">
    <g:javascript library='jquery'>

        function toggler(divId) {
        alert("inside");
        $("#" + divId).toggle();
    }
    </g:javascript>


    <g:javascript library='jquery'>
            $(document).ready(function() {
                $("div.tab-menu>div.list-group>a").click(function(e) {
                    e.preventDefault();
                    $(this).siblings('a.active').removeClass("active");
                    $(this).addClass("active");
                    var index = $(this).index();
                    $("div.bhoechie-tab>div.bhoechie-tab-content").removeClass("active");
                    $("div.bhoechie-tab>div.bhoechie-tab-content").eq(index).addClass("active");
                });
            });


        </g:javascript>
    </head>
    <body>
            <div class="container-fluid">
                <div class="row" style="margin-left: 0px; padding: 0px; ">
                    <div class="tab-container">
                        <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2 tab-menu">
                            <div class="list-group">
                                <a href="#" class="list-group-item active text-left">
                                    Overview
                                </a>
                                <a href="#" class="list-group-item  text-left">
                                    Chip-Enrich
                                </a>
                                <a href="#" class="list-group-item text-left">
                                   Broad-Enrich
                                </a>
                                <a href="#" class="list-group-item text-left">
                                    Poly-Enrich
                                </a>
                                <a href="#" class="list-group-item text-left">
                                    Hybrid
                                </a>
                                <a href="#" class="list-group-item text-left">
                                    LRpath / RNA-Enrich
                                </a>
                            </div>
                        </div>
                        <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10 bhoechie-tab">
                            <!-- flight section -->
                            <div class="bhoechie-tab-content active">
                            <h3 style="text-align: center;">Gene Set Enrichment suite</h3>

                            <h6>Enrichment testing methods for ChIP-seq, RNA-seq, and other sets of genomic regions</h6>

                        <br/>
                            Recognizing that gene set enrichment (GSE) for gene regulatory data should not be a one-size-fits-all task, GSEsuite offers a variety of methods, resources, and regulatory definitions to choose from. Don’t know what’s best for you? We’ll help determine that based on properties of your data and your goals. Create an account to save and compare results.
                        </br> </br> </br>
                            <div class="col-md-12 text-center">

                                <button id="singlebutton" name="singlebutton" class="btn btn-primary">Learn More!</button>
                            </div>




                        </div>
                            <div class="bhoechie-tab-content ">
                                <h3>Chip-Enrich</h3>
                                ChIP-Enrich tests ChIP-seq peak data for enrichment of biological pathways, Gene Ontology terms, and other types of gene sets. The pre-defined gene sets are the same as used in LRpath, and can be browsed here. Using an input .BED file, ChIP-Enrich assigns peaks to genes based on a chosen "locus definition". The "locus" of a gene is the region from which the gene is predicted to be regulated. ChIP-Enrich uses a logistic regression model to test for association between the presence of at least one peak in a gene and gene set membership. It empirically adjusts for the relationship between the length of the loci (and optionally mappability) and the presence of least one peak in a gene using a binomial cubic smoothing spline term within the logistic model. Detailed methods are provided here. Output includes summary plots, peak to gene assignments,and enrichment (and depletion) results including odds ratio, p-value, and FDR for each gene set.
                            </div>
                            <!-- train section -->
                            <div class="bhoechie-tab-content">
                            <h3>Broad-Enrich</h3>
                            Broad-Enrich tests sets of broad genomic regions (e.g., from ChIP-seq data for histone modifications or copy number variations) for enriched biological pathways, Gene Ontology terms, or other gene sets. The pre-defined gene sets are the same as used in LRpath, and can be browsed here. Using an input .bed, .narrowPeak or.broadPeak file, Broad-Enrich determines the proportion of each gene locus covered by a peak, using a chosen "gene locus definition". The "locus" of a gene is the region from which the gene is predicted to be regulated. Broad-Enrich uses a logistic regression model to test for association between the proportion of each gene locus covered by a peak and gene set membership. It empirically adjusts for the bias due to locus length using a binomial cubic smoothing spline within the logistic model. Detailed methods are provided here. Output includes summary plots, peak to gene assignments, and enrichment (and depletion) results including odds ratio, p-value, and FDR for each gene set.
                            </div>
                            <div class="bhoechie-tab-content">
                                <h3>Poly-Enrich</h3>

                                Poly-Enrich is designed to test for enriched gene sets from a large list of narrow genomic regions (e.g. a BED or narrowpeak format). As opposed to ChIP-Enrich, Poly-Enrich models the number of genomic regions per gene, and tends to outperform ChIP-Enrich when there are >~40,000 peaks.
                                <ul>
                                    <li>Choose to study regulation from several different types of regulatory regions</li>
                                    <li>Choose from several different gene set databases</li>
                                    <li>Optionally weight genomic regions by a signal value.</li>
                                    <li>Not sure which test is best? Let us help you decide! Or use the Hybrid test to get the best of two different tests!</li>
                                </ul>
                                    <a href="#" onclick="$('#target').toggle();">more</a>

                                    <div id="target" style="display: none">
                                        In Poly-Enrich, the midpoint of each genomic region is used to assign each genomic region to one or more target genes, using the UCSC knowngenes gene definitions. The Poly-Enrich method then uses the number of peaks per gene in a negative binomial regression model to test for enrichment of each gene set. It empirically adjusts for the length of the genome associated with each gene using a smoothing spline, thus resulting in a well-adjusted type 1 error rate and p-values that you can trust.
                                    </div>


                                </div>

                            <div class="bhoechie-tab-content">
                                <h3>Hybrid</h3>
                                Coming soon
                            </div>

                            <!-- hotel search -->
                            <div class="bhoechie-tab-content">
                            <h3>LRpath / RNA-Enrich </h3>
                            LRpath performs gene set enrichment testing, an approach used to test for predefined biologically-relevant gene sets that contain more significant genes from an experimental dataset than expected by chance. Given a high-throughput dataset with continuous significance values (i.e. p-values), LRpath tests for gene sets (termed concepts) that have significantly higher significance values (e.g. for differential expression) than expected at random. LRpath can identify both concepts that have a few genes with very significant differential expression and concepts containing many genes with only moderate differential expression.
                            </div>


                        </div>
                    </div>
                </div>
            </div>

    <div class=" col-md-5 center-block text-center">

    </div>

    <div class=" col-md-8 center-block">
        <div class="row no-gutters">
        <div class="col-xs-7 col-sm-4">
            <g:link controller="inputParam" action="chipInput">
                <div class="panel nopadding">
                <div class="list-group">
                    <div class="list-group-item">
                        <div class="panel-body fixed-panel-primary">
                            Genomic Region Enrichment
                        </div>
                    </div>
                </div>
                </div>
            </g:link>
        </div>

        <div class="col-xs-7 col-sm-4">
            <g:link controller="inputParam" action="tutorials">
                <div class="panel nopadding">
                <div class="list-group">
                    <div class="list-group-item ">
                        <div class="panel-body fixed-panel-success"> Genomic Expression Enrichment </div>
                    </div>
                </div>
            </div>
            </g:link>
        </div>



        <div class="col-xs-7 col-sm-4">
            <g:link controller="inputParam" action="tutorials">
            <div class="panel nopadding">
                <div class="list-group">

                    <div class="list-group-item">

                        <div class="panel-body fixed-panel-info img-rounded" > Combined Enrichment Genomic Regions + Expression</div>
                    </div>
                </div>

            </div>
        </div>
            </g:link>

        </div>


    </div>


    <div class=" col-md-5 center-block">
        <div class="row no-gutters">
        <div class="col-xs-6 col-sm-6">
            <g:link controller="inputParam" action="tutorials">
            <div class="panel nopadding">
                <div class="list-group">
                    <div class="list-group-item">
                        <div class="panel-body fixed-panel-warning">Reverse Enrichment Testing</div>
                    </div>
                </div>
            </div>
            </g:link>
        </div>
        <div class="col-xs-6 col-sm-6">
            <g:link controller="inputParam" action="tutorials">
            <div class="panel nopadding">
                <div class="list-group">
                    <div class="list-group-item">
                        <div class="panel-body fixed-panel-default">Peak to Gene Assignment </div>
                    </div>
                </div>
            </div>
            </g:link>
        </div>
        </div>
    </div>














    </body>
</html>