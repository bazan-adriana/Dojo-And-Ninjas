<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
		<h1>Create a new Ninja</h1>
		
		<form:form action="/ninja/process/new" method="post" modelAttribute="newNinja">
		
		<div class="form-group">
        	<label>Dojo</label>
        	<form:select path="dojo">
        <c:forEach var="dojos" items="${allDojo}">
            <form:option value="${dojos.id}">
                <c:out value="${dojos.name}"/>
            </form:option>
        </c:forEach>
    </form:select>
        	
    	</div>
    	<div class="form-group">
        	<label>First Name</label>
        	<form:input path="firstName" class="form-control" />
        	<form:errors path="firstName" class="text-danger" />
   		</div>
    	<div class="form-group">
        	<label>Last Name</label>
        	<form:input path="lastName" class="form-control" />
        	<form:errors path="lastName" class="text-danger" />
    	</div>
    	<div class="form-group">
        	<label>Age</label>
        	<form:input path="age" class="form-control" />
        	<form:errors path="age" class="text-danger" />
    	</div>
    	<hr>
    	<input type="submit" value="Add Ninja" class="btn btn-primary" />
</form:form>
		
		<hr>
		
		<a href="/">Back Home</a>
		    </div>
</body>
</html>