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
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
        <link rel="stylesheet" href="/resources/demos/style.css">
    <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/bootcards/1.0.0/css/bootcards-desktop.min.css">


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


    <hr class="">
    <div class=" col-md-6 center-block">
    <div class="panel panel-default bootcards-summary">
        <div class="panel-heading">
            <h3 class="panel-title">Genomic region Enrichment</h3>
        </div>
        <div class="panel-body">
            <div class="row">
                <div class="col-xs-6 col-sm-4">
                    <a class="bootcards-summary-item" href="#">
                        <i class="fa fa-3x fa-users"></i>
                        <h4>Gene Expression Enrichment </h4>
                    </a>
                </div>
                <div class="col-xs-6 col-sm-4">
                    <a class="bootcards-summary-item" href="#">
                        <i class="fa fa-3x fa-building-o"></i>
                        <h4>Combined Enr genomic regions +expression </h4>
                    </a>
                </div>
                <div class="col-xs-6 col-sm-4">
                    <a class="bootcards-summary-item" href="#">
                        <i class="fa fa-3x fa-clipboard"></i>
                        <h4>Gene Expression Enrichment </h4>
                    </a>
                </div>
                <div class="col-xs-6 col-sm-4">
                    <a class="bootcards-summary-item" href="#">
                        <i class="fa fa-3x fa-files-o"></i>
                        <h4>Files <span class="label label-info">65</span></h4>
                    </a>
                </div>
                <div class="col-xs-6 col-sm-4">
                    <a class="bootcards-summary-item" href="#">
                        <i class="fa fa-3x fa-check-square-o"></i>
                        <h4>Reverse Enr testing</h4>
                    </a>
                </div>
            </div>
        </div>
        <div class="panel-footer">
            <small>Built with Bootcards - Summary Card</small>
        </div>
    </div>
    </div>












    <div class="pagination">
                <g:paginate total="${inputParamCount ?: 0}" />
            </div>

    </body>
</html>