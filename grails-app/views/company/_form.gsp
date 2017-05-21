<%@ page import="com.company.Company" %>



<div class="fieldcontain ${hasErrors(bean: companyInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="company.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${companyInstance?.name}" />
</div>

<div class="fieldcontain ${hasErrors(bean: companyInstance, field: 'employees', 'error')} ">
	<label for="employees">
		<g:message code="company.employees.label" default="Employees" />
		
	</label>
	
<ul>
<g:each in="${companyInstance?.employees?}" var="e">
    <li><g:link controller="employee" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></li>
</g:each>
</ul>
<g:link controller="employee" action="create" params="['company.id': companyInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'employee.label', default: 'Employee')])}</g:link>

</div>

