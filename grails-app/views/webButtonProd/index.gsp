
<%@ page import="testingresults.WebButtonProd" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="prod">
		<g:set var="entityName" value="${message(code: 'webButtonProd.label', default: 'WebButtonProd')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>

		<a href="#list-webButtonProd" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-webButtonProd" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="browser" title="${message(code: 'webButtonProd.browser.label', default: 'Browser')}" />
					
						<g:sortableColumn property="browserVersion" title="${message(code: 'webButtonProd.browserVersion.label', default: 'Browser Version')}" />
					
						<g:sortableColumn property="os" title="${message(code: 'webButtonProd.os.label', default: 'Os')}" />
					
						<g:sortableColumn property="type" title="${message(code: 'webButtonProd.type.label', default: 'Type')}" />
					
						<g:sortableColumn property="lastTested" title="${message(code: 'webButtonProd.lastTested.label', default: 'Last Tested')}" />
					
						<g:sortableColumn property="result" title="${message(code: 'webButtonProd.result.label', default: 'Result')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${webButtonProdInstanceList}" status="i" var="webButtonProdInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${webButtonProdInstance.id}">${fieldValue(bean: webButtonProdInstance, field: "browser")}</g:link></td>
					
						<td>${fieldValue(bean: webButtonProdInstance, field: "browserVersion")}</td>
					
						<td>${fieldValue(bean: webButtonProdInstance, field: "os")}</td>
					
						<td>${fieldValue(bean: webButtonProdInstance, field: "type")}</td>
					
						<td><g:formatDate date="${webButtonProdInstance.lastTested}" /></td>
					
						<td>${fieldValue(bean: webButtonProdInstance, field: "result")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${webButtonProdInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
