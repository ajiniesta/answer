<%@ page import="com.iniesta.answer.core.Question" %>



<div class="fieldcontain ${hasErrors(bean: questionInstance, field: 'certification', 'error')} required">
	<label for="certification">
		<g:message code="question.certification.label" default="Certification" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="certification" name="certification.id" from="${com.iniesta.answer.core.Certification.list()}" optionKey="id" required="" value="${questionInstance?.certification?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: questionInstance, field: 'goodAnswers', 'error')} required">
	<label for="goodAnswers">
		<g:message code="question.goodAnswers.label" default="Good Answers" />
		<span class="required-indicator">*</span>
	</label>
	

</div>

<div class="fieldcontain ${hasErrors(bean: questionInstance, field: 'possibles', 'error')} required">
	<label for="possibles">
		<g:message code="question.possibles.label" default="Possibles" />
		<span class="required-indicator">*</span>
	</label>
	

</div>

<div class="fieldcontain ${hasErrors(bean: questionInstance, field: 'question', 'error')} required">
	<label for="question">
		<g:message code="question.question.label" default="Question" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="question" required="" value="${questionInstance?.question}"/>

</div>

