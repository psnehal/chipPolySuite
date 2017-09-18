import grails.plugins.metadata.GrailsPlugin
import org.grails.gsp.compiler.transform.LineNumber
import org.grails.gsp.GroovyPage
import org.grails.web.taglib.*
import org.grails.taglib.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_chipPolySuite_inputParamchipInput_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/inputParam/chipInput.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
createTagBody(1, {->
printHtmlPart(1)
invokeTag('javascript','asset',4,['src':("jquery-2.2.0.min.js")],-1)
printHtmlPart(1)
invokeTag('javascript','asset',5,['src':("application.js")],-1)
printHtmlPart(1)
invokeTag('stylesheet','asset',6,['src':("application.css")],-1)
printHtmlPart(1)
invokeTag('javascript','asset',7,['src':("validation.js")],-1)
printHtmlPart(1)
invokeTag('stylesheet','asset',8,['src':("bootcards/bootcards.js")],-1)
printHtmlPart(1)
invokeTag('captureMeta','sitemesh',9,['gsp_sm_xmlClosingForEmptyTag':("/"),'name':("layout"),'content':("main")],-1)
printHtmlPart(2)
invokeTag('set','g',13,['var':("entityName"),'value':(message(code: 'inputParam.label', default: 'InputParam'))],-1)
printHtmlPart(1)
createTagBody(2, {->
createTagBody(3, {->
invokeTag('message','g',14,['code':("default.show.label"),'args':([entityName])],-1)
})
invokeTag('captureTitle','sitemesh',14,[:],3)
})
invokeTag('wrapTitleTag','sitemesh',14,[:],2)
printHtmlPart(1)
createClosureForHtmlPart(3, 2)
invokeTag('javascript','g',52,['library':("jquery")],2)
printHtmlPart(4)
createClosureForHtmlPart(5, 2)
invokeTag('javascript','g',92,[:],2)
printHtmlPart(6)
})
invokeTag('captureHead','sitemesh',94,[:],1)
printHtmlPart(7)
createClosureForHtmlPart(8, 1)
invokeTag('captureBody','sitemesh',245,[:],1)
printHtmlPart(9)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1503079458000L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'none'
public static final String TAGLIB_CODEC = 'none'
}
