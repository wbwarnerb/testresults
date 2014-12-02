
<%@ page import="testingresults.WebButtonResult" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'webButtonResult.label', default: 'WebButtonResult')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-webButtonResult" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-webButtonResult" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="browser" title="${message(code: 'webButtonResult.browser.label', default: 'Browser')}" />
					
						<g:sortableColumn property="browserVersion" title="${message(code: 'webButtonResult.browserVersion.label', default: 'Browser Version')}" />
					
						<g:sortableColumn property="os" title="${message(code: 'webButtonResult.os.label', default: 'Os')}" />
					
						<g:sortableColumn property="type" title="${message(code: 'webButtonResult.type.label', default: 'Type')}" />
					
						<g:sortableColumn property="lastTested" title="${message(code: 'webButtonResult.lastTested.label', default: 'Last Tested')}" />
					
						<g:sortableColumn property="result" title="${message(code: 'webButtonResult.result.label', default: 'Result')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${webButtonResultInstanceList}" status="i" var="webButtonResultInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${webButtonResultInstance.id}">${fieldValue(bean: webButtonResultInstance, field: "browser")}</g:link></td>
					
						<td>${fieldValue(bean: webButtonResultInstance, field: "browserVersion")}</td>
					
						<td>${fieldValue(bean: webButtonResultInstance, field: "os")}</td>
					
						<td>${fieldValue(bean: webButtonResultInstance, field: "type")}</td>
					
						<td><g:formatDate date="${webButtonResultInstance.lastTested}" /></td>
					
						<td>${fieldValue(bean: webButtonResultInstance, field: "result")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${webButtonResultInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
