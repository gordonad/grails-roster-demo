
<%@ page import="org.hbgjug.Student" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'student.label', default: 'Student')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}">Home</a></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                            <g:sortableColumn property="id" title="${message(code: 'student.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="firstName" title="${message(code: 'student.firstName.label', default: 'First Name')}" />
                        
                            <g:sortableColumn property="lastName" title="${message(code: 'student.lastName.label', default: 'Last Name')}" />
                        
                            <g:sortableColumn property="companyName" title="${message(code: 'student.companyName.label', default: 'Company Name')}" />
                        
                            <g:sortableColumn property="emailAddress" title="${message(code: 'student.emailAddress.label', default: 'Email Address')}" />
                        
                            <g:sortableColumn property="phoneNumber" title="${message(code: 'student.phoneNumber.label', default: 'Phone Number')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${studentInstanceList}" status="i" var="studentInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${studentInstance.id}">${fieldValue(bean: studentInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: studentInstance, field: "firstName")}</td>
                        
                            <td>${fieldValue(bean: studentInstance, field: "lastName")}</td>
                        
                            <td>${fieldValue(bean: studentInstance, field: "companyName")}</td>
                        
                            <td>${fieldValue(bean: studentInstance, field: "emailAddress")}</td>
                        
                            <td>${fieldValue(bean: studentInstance, field: "phoneNumber")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${studentInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
