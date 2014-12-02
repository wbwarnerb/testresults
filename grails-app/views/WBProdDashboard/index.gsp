<%--
  Created by IntelliJ IDEA.
  User: bwarner
  Date: 11/26/14
  Time: 2:41 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="prod">

    <title>Web Button Results</title>
</head>

<body>
<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(controller: 'WBDashboard')}"><g:message message="Test Env Results"/></a></li>
        <li><a class="home" href="${createLink(controller: 'WBProdDashboard')}"><g:message message="Production Results"/></a></li>
    </ul>
</div>
<table>
    <tr>
        <td>
            <b>Browser - OS - Type</b>
        </td>
        <td>
            <b>Last Tested</b>
        </td>
        <td>
            <b>Result</b>
        </td>
        <td>
            <b>Related Tickets</b>
        </td>
    </tr>
    <g:each in ="${testingresults.Browsers.listOrderByBrowserName()}">
        <g:render template="results" model='[browser:"${it.browserName}",bid:"${it.bId}",os:"${it.os}",type:"${it.type}"]'/>
    </g:each>
</table>
</body>
</html>