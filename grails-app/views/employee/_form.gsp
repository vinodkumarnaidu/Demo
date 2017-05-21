<%@ page import="com.company.Employee" %>



<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="employee.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${employeeInstance?.name}" />
</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'companyName', 'error')} required">
	<label for="companyName">
		<g:message code="employee.companyName.label" default="Company Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="companyName.id" from="${com.company.Company.list().sort{ it?.toString() }}" optionKey="id" value="${employeeInstance?.companyName?.id}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'salary', 'error')} required">
	<label for="salary">
		<g:message code="employee.salary.label" default="Salary" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="salary" value="${fieldValue(bean: employeeInstance, field: 'salary')}" />
</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'designation', 'error')} required">
	<label for="designation">
		<g:message code="employee.designation.label" default="Designation" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="designation" value="${employeeInstance?.designation}" />
</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'company', 'error')} required">
	<label for="company">
		<g:message code="employee.company.label" default="Company" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="company.id" from="${com.company.Company.list().sort{ it?.toString() }}" optionKey="id" value="${employeeInstance?.company?.id}"  />
</div>

