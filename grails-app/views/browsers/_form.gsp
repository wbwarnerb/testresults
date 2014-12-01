<%@ page import="testingresults.Browsers" %>



<div class="fieldcontain ${hasErrors(bean: browsersInstance, field: 'bId', 'error')} required">
	<label for="bId">
		<g:message code="browsers.bId.label" default="B Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="bId" value="${browsersInstance?.bId}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: browsersInstance, field: 'browserName', 'error')} required">
	<label for="browserName">
		<g:message code="browsers.browserName.label" default="Browser Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="browserName" value="${browsersInstance?.browserName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: browsersInstance, field: 'bv', 'error')} required">
	<label for="bv">
		<g:message code="browsers.bv.label" default="Bv" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="bv" value="${browsersInstance?.bv}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: browsersInstance, field: 'os', 'error')} required">
	<label for="os">
		<g:message code="browsers.os.label" default="Os" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="os" value="${browsersInstance?.os}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: browsersInstance, field: 'type', 'error')} required">
	<label for="type">
		<g:message code="browsers.type.label" default="Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="type" value="${browsersInstance?.type}"/>
</div>

