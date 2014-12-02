<%@ page import="testingresults.WebButtonResult" %>



<div class="fieldcontain ${hasErrors(bean: webButtonResultInstance, field: 'browser', 'error')} required">
	<label for="browser">
		<g:message code="webButtonResult.browser.label" default="Browser" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="browser" from="${webButtonResultInstance.constraints.browser.inList}" value="${webButtonResultInstance?.browser}" valueMessagePrefix="webButtonResult.browser" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: webButtonResultInstance, field: 'browserVersion', 'error')} ">
	<label for="browserVersion">
		<g:message code="webButtonResult.browserVersion.label" default="Browser Version" />
		
	</label>
	<g:textField name="browserVersion" value="${webButtonResultInstance?.browserVersion}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: webButtonResultInstance, field: 'os', 'error')} required">
	<label for="os">
		<g:message code="webButtonResult.os.label" default="Os" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="os" from="${webButtonResultInstance.constraints.os.inList}" value="${webButtonResultInstance?.os}" valueMessagePrefix="webButtonResult.os" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: webButtonResultInstance, field: 'type', 'error')} required">
	<label for="type">
		<g:message code="webButtonResult.type.label" default="Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="type" from="${webButtonResultInstance.constraints.type.inList}" value="${webButtonResultInstance?.type}" valueMessagePrefix="webButtonResult.type" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: webButtonResultInstance, field: 'lastTested', 'error')} required">
	<label for="lastTested">
		<g:message code="webButtonResult.lastTested.label" default="Last Tested" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="lastTested" precision="minute"  value="${webButtonResultInstance?.lastTested}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: webButtonResultInstance, field: 'result', 'error')} required">
	<label for="result">
		<g:message code="webButtonResult.result.label" default="Result" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="result" from="${webButtonResultInstance.constraints.result.inList}" value="${webButtonResultInstance?.result}" valueMessagePrefix="webButtonResult.result" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: webButtonResultInstance, field: 'notes', 'error')} ">
	<label for="notes">
		<g:message code="webButtonResult.notes.label" default="Notes" />
		
	</label>
	<g:textField name="notes" value="${webButtonResultInstance?.notes}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: webButtonResultInstance, field: 'relatedTickets', 'error')} ">
	<label for="relatedTickets">
		<g:message code="webButtonResult.relatedTickets.label" default="Related Tickets" />
		
	</label>
	<g:field type="url" name="relatedTickets" value="${webButtonResultInstance?.relatedTickets}"/>
</div>

