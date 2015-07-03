<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'question.label', default: 'Question')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
		<div ng-app="questionApp">
		<ul class="nav nav-pills">
			<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
			<li class="active"><a href="#"><g:message code="default.new.label" args="[entityName]" /></a></li>
		</ul>
		<div id="create-question" class="content scaffold-create" role="main">
			<h1><g:message code="default.create.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${questionInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${questionInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<div ng-controller="QuestionController">
				<div class="form-group">
					<label><g:message code="create.question.question" default="Question"/></label>
					<textarea class="form-control" ng-model="question"> </textarea>
				</div>
				<div class="form-group">
					<label><g:message code="create.question.answers" default="Answers"/></label>
					<table class="table table-bordered table-striped">
						<thead>
							<tr>
								<th><g:message code="create.question.answer" default="Answer"/></th>
								<th><g:message code="create.question.valid" default="Valid"/></th>
								<th>
									<button class="btn btn-primary" ng-click="answers.push({valid:false})">
										<span class="glyphicon glyphicon-plus"></span>
									</button>
								</th>
							</tr>
						</thead>
						<tbody>
							<tr ng-repeat="answer in answers">
								<td><textarea class="form-control" ng-model="answer.text" rows="3"></textarea></td>
								<td><input type="checkbox" class="checkbox" ng-model="answer.valid"></td>
								<td>
									<button class="btn btn-danger" ng-click="answers.splice($index, 1);">
										<span class="glyphicon glyphicon-minus"></span>
									</button>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="btn-group">
					<button class="btn btn-primary"><g:message code="create.question.save" default="Save" ng-click="save()"/></button>
					<button class="btn btn-warning"><g:message code="create.question.clear" default="Clear" ng-click="clear()"/></button>
				</div>
<%--				<g:form url="[resource:questionInstance, action:'save']" >--%>
<%--				<fieldset class="form">--%>
<%--					<g:render template="form"/>--%>
<%--				</fieldset>--%>
<%--				<fieldset class="buttons">--%>
<%--					<g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />--%>
<%--				</fieldset>--%>
<%--				</g:form>--%>
			</div>
		</div>
		<script type="text/javascript" src="${resource(dir: 'js/app', file: 'question.js')}"></script>
		</div>
	</body>
</html>
