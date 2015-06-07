<%@ page import="com.iniesta.answer.core.Answer" %>

<div class="form-group ${hasErrors(bean: answerInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="answer.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" class="form-control" required="" value="${answerInstance?.name}"/>

</div>


<div class="form-group ${hasErrors(bean: answerInstance, field: 'correct', 'error')} ">
	<label for="correct">
		<g:message code="answer.correct.label" default="Correct" />
		
	</label>
	<g:checkBox class="checkbox" name="correct" value="${answerInstance?.correct}" />

</div>