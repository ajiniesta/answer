
<%@ page import="com.iniesta.answer.core.Question" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'question.label', default: 'Question')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-question" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-question" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="question.certification.label" default="Certification" /></th>
					
						<g:sortableColumn property="goodAnswers" title="${message(code: 'question.goodAnswers.label', default: 'Good Answers')}" />
					
						<g:sortableColumn property="possibles" title="${message(code: 'question.possibles.label', default: 'Possibles')}" />
					
						<g:sortableColumn property="question" title="${message(code: 'question.question.label', default: 'Question')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${questionInstanceList}" status="i" var="questionInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${questionInstance.id}">${fieldValue(bean: questionInstance, field: "certification")}</g:link></td>
					
						<td>${fieldValue(bean: questionInstance, field: "goodAnswers")}</td>
					
						<td>${fieldValue(bean: questionInstance, field: "possibles")}</td>
					
						<td>${fieldValue(bean: questionInstance, field: "question")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${questionInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
