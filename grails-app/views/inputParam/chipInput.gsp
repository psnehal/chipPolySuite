<!DOCTYPE html>
<html>
    <head>
        <asset:javascript src="jquery-2.2.0.min.js"/>
        <asset:javascript src="application.js"/>
        <asset:stylesheet src="application.css"/>
        <asset:javascript src="validation.js" />
        <asset:stylesheet src="bootcards/bootcards.js"/>
        <meta name="layout" content="main" />
        <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap-glyphicons.css" rel="stylesheet">


        <g:set var="entityName" value="${message(code: 'inputParam.label', default: 'InputParam')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
        <g:javascript library='jquery'>
            $("#uploadFile").change(function() {
                var formData = new FormData();
                formData.append('file', this.files[0]);

                $("#files").append($("#fileUploadProgressTemplate").tmpl());
                $("#fileUploadError").addClass("hide");

                $.ajax({
                    url: '/echo/json/',
                    type: 'POST',
                    xhr: function() {
                        var xhr = $.ajaxSettings.xhr();
                        if (xhr.upload) {
                            xhr.upload.addEventListener('progress', function(evt) {
                                var percent = (evt.loaded / evt.total) * 100;
                                $("#files").find(".progress-bar").width(percent + "%");
                            }, false);
                        }
                        return xhr;
                    },
                    success: function(data) {
                        $("#files").children().last().remove();
                        $("#files").append($("#fileUploadItemTemplate").tmpl(data));
                        $("#uploadFile").closest("form").trigger("reset");
                    },
                    error: function() {
                        $("#fileUploadError").removeClass("hide").text("An error occured!");
                        $("#files").children().last().remove();
                        $("#uploadFile").closest("form").trigger("reset");
                    },
                    data: formData,
                    cache: false,
                    contentType: false,
                    processData: false
                }, 'json');
            });
        </g:javascript>


        <g:javascript>




            function UploadLdFile()
            {

                var radioButtons = document.getElementsByName("ld");

                console.log(radioButtons.value);
                for (var x = 0; x < radioButtons.length; x ++) {
                    if (radioButtons[x].checked) {
                        console.log(radioButtons[x].value);
                        if(radioButtons[x].value == "user")
                        {

                            var list =
                                    '<ul class="checklist">'
                                    +'<ulclass="checklist">'

                                    +'<li><input type="radio" name="ld" value="user" checked="checked" /><span class="formText">User defined</span></li>'
                                    +'<span class="formText">Input Locus definition File</span> <input id="ldFile" type="file" name="ldFile" size="30" class="formObject"> '

                                    +'</ul>'
                                    +'</td>';

                            document.getElementById("locusdefinations").innerHTML = list;

                        }
                    }

                }


            }

        </g:javascript>

    </head>
    <body>
    <div class="row">
        <div class ="center-block">
            <div class=" col-md-5 center-block text-center">
                <h1>Genomic Region Enrichment</h1>

            </div>
            <div id="formPanel">
        <div class="panel-group" id="accordion">
            <div class="panel-heading">
                <h2><b>Overview</b></h2>
            <p>Upload a set of genomic regions to find out which GO terms, pathways, etc are being regulated.
            Choose the most appropriate enrichment testing method and gene set databases, and limit to one of
            several types of regulatory regions or test across the entire genome. </p><br/><br/>
            </div>
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4 class="panel-title">
                        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapse1"><span class="contentTitle">Upload a File</span></a>
                    </h4>
                </div>
                <div id="collapse1" class="panel-collapse collapse in">
                    <div class="panel-body">
                        <table>
                            <tr>
                                <td align="right" valign="top" nowrap ><span class="formText"><b>Select input file</b></span>
                                </td>
                                <td><input id="uploadfile" type="file" name="uploadfile" size="30" class="formObject" >
                                    <span class="footnote">
                                        ChIP-Enrich supports .bed.gz, .bed, .broadPeak, .narrowPeak, .bed.gff, and .bed.gff3 files. Files with any other extension
                                        should have a header row including "chrom", "start", and "end" to indicate chromosomal locations.
                                    </span>
                                    <br/>
                                </td>
                            </tr>

                            <tr>
                                <td align="right" valign="top"><span class="formText"><b>Analysis Name</b></span>
                                </td>
                                <td><input id="outname" type="text" name="outname" size="30" class="formObject" onChange="validate(this);"> <br />
                                    <span class="footnote">
                                        Please provide a meaningful name for this analysis (used to name output files).
                                    </span>
                                    <br/> <br/>
                                </td>
                            </tr>

                            <tr>
                                <td align="right" valign="top"><span class="formText"><b>Email</b></span>
                                </td>
                                <td><input id="email" type="text" name="email" size="30" class="formObject"> <br />
                                    <span class="footnote">Please provide your email address if you wish to be notified when the analysis has been completed.</span>

                                </td>
                            </tr>
                        </table>







                    </div>
                </div>
            </div>
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4 class="panel-title">
                        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapse2"><span class="contentTitle">Choose a test </span></a>
                    </h4>
                </div>
                <div id="collapse2" class="panel-collapse collapse">
                    <div class="panel-body">
                    <table>
                        <tr>

                            <td align="right" valign="top"><span class="formText"><b>Enrichment Method</b></span></td>
                            <td>
                                <div id="methods">
                                    <ul>
                                        <li><input type="radio" name="method" class="formObject" value="chipenrich" checked="checked"/><span class="formText">  Chip-Enrich</span></li>
                                        <li><input type="radio" name="method"class="formObject" value="fet" /><span class="formText">   Poly-Enrich</span></li>
                                        <li><input type="radio" name="method"class="formObject" value="fet" /><span class="formText">   Broad-Enrich</span></li>
                                        <li><input type="radio" name="method" class="formObject" value="chipenrich"/><span class="formText">  Hybrid test</span></li>
                                    </ul>
                                </div>
                                <span class="footnote">
                                    We recommend using Fisher's Exact test only with the 1kb or 5kb locus definition.
                                    Using it with any of the other locus definitions may result in biased enrichment results.
                                </span>
                            </td>
                        </tr>
                    </table>



                    </div>
                </div>
            </div>

            <div class="panel panel-default">
            <div class="panel-heading">
                <h4 class="panel-title">
                    <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapse3"><span class="contentTitle">Choose a Locus definition </span></a>
                </h4>
            </div>
            <div id="collapse3" class="panel-collapse collapse">
                <div class="panel-body">
                    <table>
                        <tr>
                            <td align="right" valign="top"><span class="formText"><b>Locus Definition</b></span></td>
                            <td>
                                <div id="locusdefinations">
                                    <ul class= "b">
                                        <li><input type="radio" name="ld" value="1kb" /><span class="formText"> < 1kb</span><br />
                                            <span class="footnote">(only use peaks within 1kb of a transcription start site)</span></li>
                                        <li><input type="radio" name="ld" value="5kb"  /><span class="formText"> < 5kb</span><br />
                                            <span class="footnote">(only use peaks within 5kb of a transcription start site)</span></li>
                                        <li><input type="radio" name="ld" value="10kb"  /><span class="formText"> < 10kb</span><br />
                                            <span class="footnote">(only use peaks within 10kb of a transcription start site)</span></li>
                                        <li><input type="radio" name="ld" value="10kb"  /><span class="formText"> > 10kb and more upstream</span><br />
                                            <span class="footnote">(only use peaks within 10kb and more upstream of a transcription start site)</span></li>
                                        <li><input type="radio" name="ld" value="exon" onClick="warnForFet(this)"/><span class="formText"> Exon</span><br />
                                            <span class="footnote">(only use peaks that fall within an annotated exon)</span></li>
                                        <li><input type="radio" name="ld" value="intron" onClick="warnForFet(this)"/><span class="formText"> Intron</span><br />
                                            <span class="footnote">(only use peaks that fall within an annotated itron)</span></li>
                                        <li><input type="radio" name="ld" value="nearest_gene" onClick="warnForFet(this)"  /><span class="formText"> Nearest Gene</span><br />
                                            <span class="footnote">(use all peaks; assign peaks to the nearest gene defined by transcription start and end sites)</span></li>
                                        <li><input type="radio" name="ld" value="nearest_tss" checked="checked" onClick="warnForFet(this)"/><span class="formText">Nearest TSS</span><br />
                                            <span class="footnote">(use all peaks; assign peaks to the gene with the closest TSS)</span></li>
                                        <li><input type="radio" name="ld" value="user" onClick="UploadLdFile(this)"/><span class="formText"> User Defined</span><br />
                                            <span class="footnote">(user can input their own locus definition)</span></li>
                                    </ul>
                                </div>
                            </td>
                        </tr>



                    </table>
                </div>
            </div>
            </div>

            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4 class="panel-title">
                        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapse4"><span class="contentTitle">Choose a Annotation Database</span> </a>
                    </h4>
                </div>
            <div id="collapse4" class="panel-collapse collapse">
                <div class="panel-body">
                    <div class=" col-md-5  text-center">
                    <table>
                        <tr>
                            <td align="right" valign="top"   ><span class="formText"><b>Supported Genomes</b></span></td>
                            <td><select name="sglist" id="sglist" size="1" class="formObject" onChange="selectMappaOption();">
                                <option value="">Select Genome</option>
                                <option value="hg19"> Human (hg19)</option>
                                <option value="mm9"> Mouse (mm9)</option>
                                <option value="mm10"> Mouse (mm10)</option>
                                <option value="rn4"> Rat (rn4)</option>
                                <option value="dm3"> D. melanogaster (dm3) </option>
                            </select>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" valign="top"><span class="formText"><b>Annotation Databases</b></span>
                            </td>
                            <td>
                                <div id="databaseList">

                                    <ul class="checklist">
                                        <li><label>Functional Annotations</label>
                                            <ul>
                                                <li><label><input name="slist" value="biocarta_pathway" type="checkbox"/><a href="http://www.biocarta.com/">Biocarta Pathway</a>
                                                </label>
                                                </li>
                                                <li><label><input name="slist" value="ehmn_pathway_gene" type="checkbox"/><a href="http://www.ehmn.bioinformatics.ed.ac.uk">EHMN
                                                metabolic pathways</a>
                                                </label>
                                                </li>

                                                <li><label><input name="slist" value="GO" type="checkbox" id="go" onclick="selectAllGO()"/><a href="http://www.geneontology.org/">GO</a>
                                                </label>
                                                    <ul>
                                                        <li><label><input name="slist" value="GOBP" id="gobio" type="checkbox"/><a href="http://www.geneontology.org/">GO Biological
                                                        Process</a>
                                                        </label>
                                                        </li>
                                                        <li><label><input name="slist" value="GOCC" id="gocell" type="checkbox"/><a href="http://www.geneontology.org/">GO Cellular
                                                        Component</a>
                                                        </label>
                                                        </li>
                                                        <li><label><input name="slist" value="GOMF" id="gomol" type="checkbox"/><a href="http://www.geneontology.org/">GO Molecular
                                                        Function</a>
                                                        </label>
                                                        </li>
                                                    </ul></li>
                                                <li><label><input name="slist" value="kegg_pathway" type="checkbox"/><a href="http://www.genome.jp/kegg/">KEGG Pathway</a>
                                                </label>
                                                </li>
                                                <li><label><input name="slist" value="panther_pathway" type="checkbox"/><a href="http://www.pantherdb.org/pathway/">Panther
                                                Pathway</a>
                                                </label>
                                                </li>
                                                <li><label><input name="slist" value="pfam" type="checkbox"/><a href="http://pfam.sanger.ac.uk/">pFAM</a>
                                                </label>
                                                </li>
                                                <li><label><input name="slist" value="reactome" type="checkbox"/><a href="http://www.reactome.org/">Reactome</a>
                                                </label>
                                                </li>
                                            </ul></li>
                                        <li><label>Literature Derived</label>
                                            <ul>
                                                <li><label><input name="slist" value="mesh" type="checkbox"/><a href="http://gene2mesh.ncibi.org/">MeSH</a>
                                                </label>
                                                </li>


                                            </ul></li>
                                        <li><label>Targets</label>
                                            <ul>
                                                <li><label><input name="slist" value="drug_bank" type="checkbox"/><a href="http://www.drugbank.ca/">Drug Bank</a>
                                                </label>
                                                </li>
                                                <li><label><input name="slist" value="mirbase" type="checkbox"/><a href="http://www.mirbase.org/">miRBase</a>
                                                </label>
                                                </li>
                                                <li><label><input name="slist" value="transcription_factors" type="checkbox"/><a href="http://biobase-international.com/index.php?id=transfac">Transcription
                                                Factors</a>
                                                </label>
                                                </li>
                                            </ul></li>
                                        <li><label>Interaction</label>
                                            <ul>
                                                <li><label><input name="slist" value="protein_interaction_mimi" type="checkbox"/><a href="http://mimi.ncibi.org/MimiWeb/main-page.jsp">Protein
                                                Interaction (MiMI)</a>
                                                </label>
                                                </li>
                                            </ul></li>
                                        <li><label>Other</label>
                                            <ul>
                                                <li><label><input name="slist" value="metabolite" type="checkbox"/><a href="http://www.ncibi.org">Metabolite</a>
                                                </label>
                                                </li>
                                                <li><label><input name="slist" value="cytoband" type="checkbox"/><a href="http://www.ncbi.nlm.nih.gov/sites/entrez?db=gene">Cytoband</a>
                                                </label>
                                                </li>

                                            </ul>
                                            <br/>
                                        <li><label>Select All Datatbases</label>
                                            <ul>
                                                <li><label><input name="slist2"  type="checkbox"  onclick="selectAllDb(this)"/><a href="http://www.ncbi.nlm.nih.gov/sites/entrez?db=gene">SelectAll</a>
                                                </label>
                                                </li>
                                            </ul>
                                    </ul>
                                </div>
                            </td>
                        </tr>
                    </table>
                    </div>
                </div>
            </div>
            </div>


</div>
            </div>
    </body>
</html>
