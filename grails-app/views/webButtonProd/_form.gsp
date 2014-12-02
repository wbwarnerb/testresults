<%@ page import="testingresults.WebButtonProd" %>



<div class="fieldcontain ${hasErrors(bean: webButtonProdInstance, field: 'browser', 'error')} required">
	<label for="browser">
		<g:message code="webButtonProd.browser.label" default="Browser" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="browser" from="${webButtonProdInstance.constraints.browser.inList}" value="${webButtonProdInstance?.browser}" valueMessagePrefix="webButtonProd.browser" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: webButtonProdInstance, field: 'browserVersion', 'error')} ">
	<label for="browserVersion">
		<g:message code="webButtonProd.browserVersion.label" default="Browser Version" />
		
	</label>
	<g:textField name="browserVersion" value="${webButtonProdInstance?.browserVersion}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: webButtonProdInstance, field: 'os', 'error')} required">
	<label for="os">
		<g:message code="webButtonProd.os.label" default="Os" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="os" from="${webButtonProdInstance.constraints.os.inList}" value="${webButtonProdInstance?.os}" valueMessagePrefix="webButtonProd.os" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: webButtonProdInstance, field: 'type', 'error')} required">
	<label for="type">
		<g:message code="webButtonProd.type.label" default="Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="type" from="${webButtonProdInstance.constraints.type.inList}" value="${webButtonProdInstance?.type}" valueMessagePrefix="webButtonProd.type" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: webButtonProdInstance, field: 'lastTested', 'error')} required">
	<label for="lastTested">
		<g:message code="webButtonProd.lastTested.label" default="Last Tested" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="lastTested" precision="minute"  value="${webButtonProdInstance?.lastTested}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: webButtonProdInstance, field: 'result', 'error')} required">
	<label for="result">
		<g:message code="webButtonProd.result.label" default="Result" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="result" from="${webButtonProdInstance.constraints.result.inList}" value="${webButtonProdInstance?.result}" valueMessagePrefix="webButtonProd.result" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: webButtonProdInstance, field: 'notes', 'error')} ">
	<label for="notes">
		<g:message code="webButtonProd.notes.label" default="Notes" />
		
	</label>
	<g:textField name="notes" value="${webButtonProdInstance?.notes}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: webButtonProdInstance, field: 'relatedTickets', 'error')} ">
	<label for="relatedTickets">
		<g:message code="webButtonProd.relatedTickets.label" default="Related Tickets" />
		
	</label>
	<g:field type="url" name="relatedTickets" value="${webButtonProdInstance?.relatedTickets}"/>
</div>

