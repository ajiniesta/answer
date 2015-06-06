
<%@ page import="com.iniesta.answer.core.Certification" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'certification.label', default: 'Certification')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>		
			<ul class="nav nav-pills">
				<li role="presentation" class="active"><a href="#"><g:message code="default.list.label" args="[entityName]" /></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>

		<div id="list-certification" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="table table-hover table-striped">
			<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'certification.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'certification.description.label', default: 'Description')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${certificationInstanceList}" status="i" var="certificationInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${certificationInstance.id}">${fieldValue(bean: certificationInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: certificationInstance, field: "description")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${certificationInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
