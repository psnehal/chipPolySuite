<!DOCTYPE html>


<html>

<! https://bootsnipp.com/snippets/featured/simple-vertical-tab ---!>
    <head>

        <asset:javascript src="jquery-2.2.0.min.js"/>
        <asset:javascript src="application.js"/>
        <asset:stylesheet src="application.css"/>
        <asset:javascript src="validation.js" />
        <meta name="layout" content="main" />

        <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
        <link rel="stylesheet" href="/resources/demos/style.css">
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
                                    Chip-Enrich
                                </a>
                                <a href="#" class="list-group-item text-left">
                                   Broad-Enrich
                                </a>
                                <a href="#" class="list-group-item text-left">
                                    LR-Path
                                </a>
                                <a href="#" class="list-group-item text-left">
                                    Poly-Enrich
                                </a>
                                <a href="#" class="list-group-item text-left">
                                    Chip-Poly-Hybrid
                                </a>
                            </div>
                        </div>
                        <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10 bhoechie-tab">
                            <!-- flight section -->
                            <div class="bhoechie-tab-content active">
                            <h3>Chip-Enrich</h3>
                            ChIP-Enrich tests ChIP-seq peak data for enrichment of biological pathways, Gene Ontology terms, and other types of gene sets. The pre-defined gene sets are the same as used in LRpath, and can be browsed here. Using an input .BED file, ChIP-Enrich assigns peaks to genes based on a chosen "locus definition". The "locus" of a gene is the region from which the gene is predicted to be regulated. ChIP-Enrich uses a logistic regression model to test for association between the presence of at least one peak in a gene and gene set membership. It empirically adjusts for the relationship between the length of the loci (and optionally mappability) and the presence of least one peak in a gene using a binomial cubic smoothing spline term within the logistic model. Detailed methods are provided here. Output includes summary plots, peak to gene assignments,and enrichment (and depletion) results including odds ratio, p-value, and FDR for each gene set.
                        </div>
                            <!-- train section -->
                            <div class="bhoechie-tab-content">
                            <h3>Broad-Enrich</h3>
                            Broad-Enrich tests sets of broad genomic regions (e.g., from ChIP-seq data for histone modifications or copy number variations) for enriched biological pathways, Gene Ontology terms, or other gene sets. The pre-defined gene sets are the same as used in LRpath, and can be browsed here. Using an input .bed, .narrowPeak or.broadPeak file, Broad-Enrich determines the proportion of each gene locus covered by a peak, using a chosen "gene locus definition". The "locus" of a gene is the region from which the gene is predicted to be regulated. Broad-Enrich uses a logistic regression model to test for association between the proportion of each gene locus covered by a peak and gene set membership. It empirically adjusts for the bias due to locus length using a binomial cubic smoothing spline within the logistic model. Detailed methods are provided here. Output includes summary plots, peak to gene assignments, and enrichment (and depletion) results including odds ratio, p-value, and FDR for each gene set.

                            </div>

                            <!-- hotel search -->
                            <div class="bhoechie-tab-content">
                            <h3>LRpath</h3>
                            LRpath performs gene set enrichment testing, an approach used to test for predefined biologically-relevant gene sets that contain more significant genes from an experimental dataset than expected by chance. Given a high-throughput dataset with continuous significance values (i.e. p-values), LRpath tests for gene sets (termed concepts) that have significantly higher significance values (e.g. for differential expression) than expected at random. LRpath can identify both concepts that have a few genes with very significant differential expression and concepts containing many genes with only moderate differential expression.
                        </div>
                            <div class="bhoechie-tab-content">
                                <h3>Poly-Enrich</h3>
                                Poly-Enrich is also designed for narrow peaks, but where there are 100,000s of peaks which results in nearly every gene locus containing a peak. For example, ChIP-seq experiments for transcription factors.

                                The Poly-Enrich method uses the number of peaks in genes in its logistic regression model for enrichment:  num_peaks ~ GO + s(log10_length). Here, GO is a binary vector indicating whether a gene is in the gene set being tested, num_peaks is a numeric vector indicating the number of peaks in each gene, and s(log10_length) is a binomial cubic smoothing spline which adjusts for the relationship between the number of peaks in a gene and locus length.

                            </div>
                            <div class="bhoechie-tab-content">
                                Coming soon
                            </div>
                        </div>
                    </div>
                </div>
            </div>
<hr/>

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

    <div class="card-columns">
        <div class="card">
            <img class="card-img-top img-fluid" src="..." alt="Card image cap">
            <div class="card-block">
                <h4 class="card-title">Card title that wraps to a new line</h4>
                <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
            </div>
        </div>
        <div class="card p-3">
            <blockquote class="card-block card-blockquote">
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.</p>
                <footer>
                    <small class="text-muted">
                        Someone famous in <cite title="Source Title">Source Title</cite>
                    </small>
                </footer>
            </blockquote>
        </div>
        <div class="card">
            <img class="card-img-top img-fluid" src="..." alt="Card image cap">
            <div class="card-block">
                <h4 class="card-title">Card title</h4>
                <p class="card-text">This card has supporting text below as a natural lead-in to additional content.</p>
                <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
            </div>
        </div>
        <div class="card card-inverse card-primary p-3 text-center">
            <blockquote class="card-blockquote">
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat.</p>
                <footer>
                    <small>
                        Someone famous in <cite title="Source Title">Source Title</cite>
                    </small>
                </footer>
            </blockquote>
        </div>
        <div class="card text-center">
            <div class="card-block">
                <h4 class="card-title">Card title</h4>
                <p class="card-text">This card has supporting text below as a natural lead-in to additional content.</p>
                <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
            </div>
        </div>
        <div class="card">
            <img class="card-img img-fluid" src="..." alt="Card image">
        </div>
        <div class="card p-3 text-right">
            <blockquote class="card-blockquote">
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.</p>
                <footer>
                    <small class="text-muted">
                        Someone famous in <cite title="Source Title">Source Title</cite>
                    </small>
                </footer>
            </blockquote>
        </div>
        <div class="card">
            <div class="card-block">
                <h4 class="card-title">Card title</h4>
                <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.</p>
                <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
            </div>
        </div>
    </div>





            <div class="pagination">
                <g:paginate total="${inputParamCount ?: 0}" />
            </div>

    </body>
</html>