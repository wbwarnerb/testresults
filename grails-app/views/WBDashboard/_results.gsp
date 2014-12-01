<%@ page import="testingresults.WebButtonResult" %>
<%
    def result = testingresults.WebButtonResult.executeQuery("select result from WebButtonResult where browser='"+bid+"' and type='"+type+"' and os='"+os+"' order by lastTested desc",[max:1])[0]
    def dateTested = testingresults.WebButtonResult.executeQuery("select lastTested from WebButtonResult where browser='"+bid+"' and type='"+type+"' and os='"+os+"' order by lastTested desc",[max: 1])[0]
    def relatedTicket = testingresults.WebButtonResult.executeQuery("select relatedTickets from WebButtonResult where browser='"+bid+"' and type='"+type+"' and os='"+os+"' order by lastTested desc ",[max:1])[0]
%>

<tr>
    <td>
        ${bid} ${os} ${type}
    </td>
    <td>
       <g:formatDate format="MM-dd-yyyy HH:mm" date="${dateTested}"/>
    </td>
    <g:if test="${result == 'FAIL'}">
        <td bgcolor="#dc143c">
            <center><font color="#ffff">${result}</font></center>
        </td>
    </g:if>
    <g:elseif test="${result == null}">
        <td>

        </td>
        </g:elseif>
        <g:else>
    <td bgcolor="#7fff00">
       <center>${result}</center>
    </td>
    </g:else>

    <td>
        ${relatedTicket}
    </td>
</tr>