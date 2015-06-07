
<%@ page import="com.iniesta.answer.core.Answer" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'answer.label', default: 'Answer')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<ul class="nav nav-pills">
			<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
			<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
		</ul>

		<div id="show-answer" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="list-group">

				<g:if test="${answerInstance?.name}">
				<li class="list-group-item">
					<h4 id="name-label" class="list-group-item-heading"><g:message code="answer.name.label" default="Name" /></h4>
					
					<span class="list-group-item-text" aria-labelledby="name-label"><g:fieldValue bean="${answerInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${answerInstance?.correct}">
				<li class="list-group-item">
					<h4 id="correct-label" class="list-group-item-heading"><g:message code="answer.correct.label" default="Correct" /></h4>
					
					<span class="list-group-item-text" aria-labelledby="correct-label"><g:formatBoolean boolean="${answerInstance?.correct}" /></span>
					
				</li>
				</g:if>
			</ol>
			<g:form url="[resource:answerInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="btn btn-default" action="edit" resource="${answerInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
