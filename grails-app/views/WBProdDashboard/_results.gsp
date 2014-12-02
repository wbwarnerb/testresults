<%@ page import="testingresults.WebButtonProd" %>
<%
    def result = testingresults.WebButtonProd.executeQuery("select result from WebButtonProd where browser='"+bid+"' and type='"+type+"' and os='"+os+"' order by lastTested desc",[max:1])[0]
    def dateTested = testingresults.WebButtonProd.executeQuery("select lastTested from WebButtonProd where browser='"+bid+"' and type='"+type+"' and os='"+os+"' order by lastTested desc",[max: 1])[0]
    def relatedTicket = testingresults.WebButtonProd.executeQuery("select relatedTickets from WebButtonProd where browser='"+bid+"' and type='"+type+"' and os='"+os+"' order by lastTested desc ",[max:1])[0]
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
        <a href="${relatedTicket}">${relatedTicket}</a>
    </td>
</tr>