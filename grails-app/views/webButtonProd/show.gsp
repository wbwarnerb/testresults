
<%@ page import="testingresults.WebButtonProd" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'webButtonProd.label', default: 'WebButtonProd')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-webButtonProd" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-webButtonProd" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list webButtonProd">
			
				<g:if test="${webButtonProdInstance?.browser}">
				<li class="fieldcontain">
					<span id="browser-label" class="property-label"><g:message code="webButtonProd.browser.label" default="Browser" /></span>
					
						<span class="property-value" aria-labelledby="browser-label"><g:fieldValue bean="${webButtonProdInstance}" field="browser"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${webButtonProdInstance?.browserVersion}">
				<li class="fieldcontain">
					<span id="browserVersion-label" class="property-label"><g:message code="webButtonProd.browserVersion.label" default="Browser Version" /></span>
					
						<span class="property-value" aria-labelledby="browserVersion-label"><g:fieldValue bean="${webButtonProdInstance}" field="browserVersion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${webButtonProdInstance?.os}">
				<li class="fieldcontain">
					<span id="os-label" class="property-label"><g:message code="webButtonProd.os.label" default="Os" /></span>
					
						<span class="property-value" aria-labelledby="os-label"><g:fieldValue bean="${webButtonProdInstance}" field="os"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${webButtonProdInstance?.type}">
				<li class="fieldcontain">
					<span id="type-label" class="property-label"><g:message code="webButtonProd.type.label" default="Type" /></span>
					
						<span class="property-value" aria-labelledby="type-label"><g:fieldValue bean="${webButtonProdInstance}" field="type"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${webButtonProdInstance?.lastTested}">
				<li class="fieldcontain">
					<span id="lastTested-label" class="property-label"><g:message code="webButtonProd.lastTested.label" default="Last Tested" /></span>
					
						<span class="property-value" aria-labelledby="lastTested-label"><g:formatDate date="${webButtonProdInstance?.lastTested}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${webButtonProdInstance?.result}">
				<li class="fieldcontain">
					<span id="result-label" class="property-label"><g:message code="webButtonProd.result.label" default="Result" /></span>
					
						<span class="property-value" aria-labelledby="result-label"><g:fieldValue bean="${webButtonProdInstance}" field="result"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${webButtonProdInstance?.notes}">
				<li class="fieldcontain">
					<span id="notes-label" class="property-label"><g:message code="webButtonProd.notes.label" default="Notes" /></span>
					
						<span class="property-value" aria-labelledby="notes-label"><g:fieldValue bean="${webButtonProdInstance}" field="notes"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${webButtonProdInstance?.relatedTickets}">
				<li class="fieldcontain">
					<span id="relatedTickets-label" class="property-label"><g:message code="webButtonProd.relatedTickets.label" default="Related Tickets" /></span>
					
						<span class="property-value" aria-labelledby="relatedTickets-label"><g:fieldValue bean="${webButtonProdInstance}" field="relatedTickets"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:webButtonProdInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${webButtonProdInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
