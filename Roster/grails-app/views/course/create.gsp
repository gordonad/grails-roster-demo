<%@ page import="org.hbgjug.Course" %>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <meta name="layout" content="main"/>
  <g:set var="entityName" value="${message(code: 'course.label', default: 'Course')}"/>
  <title><g:message code="default.create.label" args="[entityName]"/></title>
</head>
<body>
<div class="nav">
  <span class="menuButton"><a class="home" href="${createLink(uri: '/')}">Home</a></span>
  <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]"/></g:link></span>
</div>
<div class="body">
  <h1><g:message code="default.create.label" args="[entityName]"/></h1>
  <g:if test="${flash.message}">
    <div class="message">${flash.message}</div>
  </g:if>
  <g:hasErrors bean="${courseInstance}">
    <div class="errors">
      <g:renderErrors bean="${courseInstance}" as="list"/>
    </div>
  </g:hasErrors>
  <g:form action="save" method="post">
    <div class="dialog">
      <table>
        <tbody>

        <tr class="prop">
          <td valign="top" class="name">
            <label for="courseName"><g:message code="course.courseName.label" default="Course Name"/></label>
          </td>
          <td valign="top" class="value ${hasErrors(bean: courseInstance, field: 'courseName', 'errors')}">
            <g:textField name="courseName" maxlength="100" value="${courseInstance?.courseName}"/>
          </td>
        </tr>

        <tr class="prop">
          <td valign="top" class="name">
            <label for="courseDate"><g:message code="course.courseDate.label" default="Course Date"/></label>
          </td>
          <td valign="top" class="value ${hasErrors(bean: courseInstance, field: 'courseDate', 'errors')}">
            <g:datePicker name="courseDate" precision="day" value="${courseInstance?.courseDate}"  />
          </td>
        </tr>

        <tr class="prop">
          <td valign="top" class="name">
            <label for="minStudents"><g:message code="course.minStudents.label" default="Min Students"/></label>
          </td>
          <td valign="top" class="value ${hasErrors(bean: courseInstance, field: 'minStudents', 'errors')}">
            <g:textField name="minStudents" value="${fieldValue(bean: courseInstance, field: 'minStudents')}"/>
          </td>
        </tr>

        <tr class="prop">
          <td valign="top" class="name">
            <label for="maxStudents"><g:message code="course.maxStudents.label" default="Max Students"/></label>
          </td>
          <td valign="top" class="value ${hasErrors(bean: courseInstance, field: 'maxStudents', 'errors')}">
            <g:textField name="maxStudents" value="${fieldValue(bean: courseInstance, field: 'maxStudents')}"/>
          </td>
        </tr>

        </tbody>
      </table>
    </div>
    <div class="buttons">
      <span class="button"><g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}"/></span>
    </div>
  </g:form>
</div>
</body>
</html>
