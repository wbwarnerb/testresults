
<%@ page import="testingresults.Browsers" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'browsers.label', default: 'Browsers')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-browsers" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-browsers" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list browsers">
			
				<g:if test="${browsersInstance?.bId}">
				<li class="fieldcontain">
					<span id="bId-label" class="property-label"><g:message code="browsers.bId.label" default="B Id" /></span>
					
						<span class="property-value" aria-labelledby="bId-label"><g:fieldValue bean="${browsersInstance}" field="bId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${browsersInstance?.browserName}">
				<li class="fieldcontain">
					<span id="browserName-label" class="property-label"><g:message code="browsers.browserName.label" default="Browser Name" /></span>
					
						<span class="property-value" aria-labelledby="browserName-label"><g:fieldValue bean="${browsersInstance}" field="browserName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${browsersInstance?.bv}">
				<li class="fieldcontain">
					<span id="bv-label" class="property-label"><g:message code="browsers.bv.label" default="Bv" /></span>
					
						<span class="property-value" aria-labelledby="bv-label"><g:fieldValue bean="${browsersInstance}" field="bv"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${browsersInstance?.os}">
				<li class="fieldcontain">
					<span id="os-label" class="property-label"><g:message code="browsers.os.label" default="Os" /></span>
					
						<span class="property-value" aria-labelledby="os-label"><g:fieldValue bean="${browsersInstance}" field="os"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${browsersInstance?.type}">
				<li class="fieldcontain">
					<span id="type-label" class="property-label"><g:message code="browsers.type.label" default="Type" /></span>
					
						<span class="property-value" aria-labelledby="type-label"><g:fieldValue bean="${browsersInstance}" field="type"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:browsersInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${browsersInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
