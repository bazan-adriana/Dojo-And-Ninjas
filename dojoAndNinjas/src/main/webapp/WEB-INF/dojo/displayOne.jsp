<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="/webjars/bootstrap/4.5.2/css/bootstrap.min.css" />
<script src="/webjars/jquery/3.5.1/jquery.min.js"></script>
<script src="/webjars/bootstrap/4.5.2/js/bootstrap.min.js"></script> 
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <div class="container">
        <h1>${dojo.name} Location Ninjas</h1>
        <a href="/" class="btn btn-primary mb-3">Home</a>
        <table class="table">
            <thead>
                <tr>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Age</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${dojo.ninjas}" var="ninja">
                    <tr>
                        <td>${ninja.id }</td>
                        <td>${ninja.firstName }</td>
                        <td>${ninja.lastName }</td>
                        <td>${ninja.age }</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
		
</body>
</html>