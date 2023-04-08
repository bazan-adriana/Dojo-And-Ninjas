<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
		<h1>Create new Dojo</h1>
		
		<form:form action="/dojo/process/new" method="post" modelAttribute="newDojo">
		
    	<div class="form-group">
        	<label>Name</label>
        	<form:input path="name" class="form-control" />
        	<form:errors path="name" class="text-danger" />
   		</div>
 <hr>
    	<input type="submit" value="Add Dojo" class="btn btn-primary" />
</form:form>
		
		<hr>
		
		<a href="/">Back Home</a>
    </div>

</body>
</html>