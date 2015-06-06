<%@ page import="com.iniesta.answer.core.Certification" %>



<div class="form-group ${hasErrors(bean: certificationInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="certification.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" class="form-control" required="" value="${certificationInstance?.name}"/>

</div>

<div class="form-group ${hasErrors(bean: certificationInstance, field: 'description', 'error')} required">
	<label for="description">
		<g:message code="certification.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="description" class="form-control" required="" value="${certificationInstance?.description}"/>

</div>

