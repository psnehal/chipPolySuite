import grails.plugins.metadata.GrailsPlugin
import org.grails.gsp.compiler.transform.LineNumber
import org.grails.gsp.GroovyPage
import org.grails.web.taglib.*
import org.grails.taglib.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_chipPolySuite_inputParamindex_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/inputParam/index.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
createTagBody(1, {->
printHtmlPart(1)
invokeTag('javascript','asset',9,['src':("jquery-2.2.0.min.js")],-1)
printHtmlPart(2)
invokeTag('javascript','asset',10,['src':("application.js")],-1)
printHtmlPart(2)
invokeTag('stylesheet','asset',11,['src':("application.css")],-1)
printHtmlPart(2)
invokeTag('javascript','asset',12,['src':("validation.js")],-1)
printHtmlPart(2)
invokeTag('stylesheet','asset',13,['src':("bootcards/bootcards.js")],-1)
printHtmlPart(2)
invokeTag('captureMeta','sitemesh',14,['gsp_sm_xmlClosingForEmptyTag':("/"),'name':("layout"),'content':("main")],-1)
printHtmlPart(3)
createClosureForHtmlPart(4, 2)
invokeTag('javascript','g',28,['library':("jquery")],2)
printHtmlPart(5)
createClosureForHtmlPart(6, 2)
invokeTag('javascript','g',44,['library':("jquery")],2)
printHtmlPart(7)
})
invokeTag('captureHead','sitemesh',45,[:],1)
printHtmlPart(7)
createTagBody(1, {->
printHtmlPart(8)
createClosureForHtmlPart(9, 2)
invokeTag('link','g',150,['controller':("inputParam"),'action':("chipInput")],2)
printHtmlPart(10)
createClosureForHtmlPart(11, 2)
invokeTag('link','g',162,['controller':("inputParam"),'action':("tutorials")],2)
printHtmlPart(12)
createClosureForHtmlPart(13, 2)
invokeTag('link','g',180,['controller':("inputParam"),'action':("tutorials")],2)
printHtmlPart(14)
createClosureForHtmlPart(15, 2)
invokeTag('link','g',196,['controller':("inputParam"),'action':("tutorials")],2)
printHtmlPart(16)
createClosureForHtmlPart(17, 2)
invokeTag('link','g',207,['controller':("inputParam"),'action':("tutorials")],2)
printHtmlPart(18)
})
invokeTag('captureBody','sitemesh',224,[:],1)
printHtmlPart(19)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1503001862000L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'none'
public static final String TAGLIB_CODEC = 'none'
}
