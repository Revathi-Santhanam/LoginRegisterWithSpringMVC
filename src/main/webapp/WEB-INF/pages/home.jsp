<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
    crossorigin="anonymous"></script>
    <style>
    body{
    	background: #393a3d;
    	padding-top: 20vh;
    }
    form{
        background: #fff;
    }
    .form-container{
        border-radius: 20px;
        padding: 40px;
    }

    </style>
   </head>
  <body>
<form:form modelAttribute="users" method="POST">
<table class="table" >
<thead>
     <tr>
         <th>ID</th>
         <th>User Name</th>
         <th>Gender</th>
         <th>Skills</th>
         <th>Country</th>
      </tr>
</thead>
<tbody>
        <c:forEach var="user" items="${users}">
            <tr>
                <td><c:out value="${user.id}" /></td>
                <td><c:out value="${user.userName}" /></td>
                <td><c:out value="${user.gender}" /></td>
                <td><c:out value="${user.country}" /></td>
                <td><c:out value="${user.skills}" /></td>
            </tr>
        </c:forEach>
    </tbody>
</table>
<a href="logout" class="btn btn-primary btn-block">Logout</a></p>
</form:form>

 </body>
 </html>