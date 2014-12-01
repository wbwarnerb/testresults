
<%@ page import="testingresults.Browsers" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'browsers.label', default: 'Browsers')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-browsers" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-browsers" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="bId" title="${message(code: 'browsers.bId.label', default: 'B Id')}" />
					
						<g:sortableColumn property="browserName" title="${message(code: 'browsers.browserName.label', default: 'Browser Name')}" />
					
						<g:sortableColumn property="bv" title="${message(code: 'browsers.bv.label', default: 'Bv')}" />
					
						<g:sortableColumn property="os" title="${message(code: 'browsers.os.label', default: 'Os')}" />
					
						<g:sortableColumn property="type" title="${message(code: 'browsers.type.label', default: 'Type')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${browsersInstanceList}" status="i" var="browsersInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${browsersInstance.id}">${fieldValue(bean: browsersInstance, field: "bId")}</g:link></td>
					
						<td>${fieldValue(bean: browsersInstance, field: "browserName")}</td>
					
						<td>${fieldValue(bean: browsersInstance, field: "bv")}</td>
					
						<td>${fieldValue(bean: browsersInstance, field: "os")}</td>
					
						<td>${fieldValue(bean: browsersInstance, field: "type")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${browsersInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
