<%@ page import="com.iniesta.answer.core.Question" %>



<%--<div class="fieldcontain ${hasErrors(bean: questionInstance, field: 'alternateQuestion', 'error')} required">--%>
<%--	<label for="alternateQuestion">--%>
<%--		<g:message code="question.alternateQuestion.label" default="Alternate Question" />--%>
<%--		<span class="required-indicator">*</span>--%>
<%--	</label>--%>
<%--	<g:textField name="alternateQuestion" required="" value="${questionInstance?.alternateQuestion}"/>--%>
<%----%>
<%--</div>--%>

<div class="fieldcontain ${hasErrors(bean: questionInstance, field: 'certification', 'error')} required">
	<label for="certification">
		<g:message code="question.certification.label" default="Certification" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="certification" name="certification.id" from="${com.iniesta.answer.core.Certification.list()}" optionKey="id" required="" value="${questionInstance?.certification?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: questionInstance, field: 'question', 'error')} required">
	<label for="question">
		<g:message code="question.question.label" default="Question" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="question" required="" value="${questionInstance?.question}"/>

</div>

a