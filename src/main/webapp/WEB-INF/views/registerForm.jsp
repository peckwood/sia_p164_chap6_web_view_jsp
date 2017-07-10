<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="<s:url value="/resources/style.css"></s:url>">
</head>
<body>
	<h1>
		<s:message code="spittr.welcome"></s:message>
	</h1>

	<hr />
	
	<h2>
		not using labels, error messages beside inputs
	</h2>
	<!-- 
	commandName sets context around model object "spitter"
	so, model must have an object with key "spitter" 
	-->
	<sf:form method="POST" commandName="spitter">


		<!-- path property specifies which property of spitter to set input's value to -->
		First Name: 
		<sf:input path="firstName" />
		<sf:errors cssClass="error" path="firstName" />
		<!-- if there is an error, it will be shown in a span -->
		<!-- <span class="error" id="firstName.errors">size must be between 2 and 30</span> -->
		<br />
		Last Name: 
		<sf:input path="lastName" />
		<sf:errors cssClass="error" path="lastName" />
		<br />
		Email: 
		<sf:input path="email" />
		<sf:errors cssClass="error" path="email" />
		<br />
		Username:
		<sf:input path="username" />
		<sf:errors cssClass="error" path="username" />
		<br />
		Password:
		<sf:password path="password" />
		<sf:errors cssClass="error" path="password" />
		<br />
		<input type="submit" value="Register" />
	</sf:form>
	<hr />
	<h2>
		using labels, all error messages on top
	</h2>
	<sf:form method="POST" commandName="spitter">
		<!-- shows all the error, <div> is better for display multiple lines of errors -->
		<sf:errors path="*" element="div" cssClass="errors" />

		<sf:label path="firstName" cssErrorClass="error">First Name</sf:label>
		<sf:input path="firstName" />
		<!-- if there is an error: -->
		<!-- <label for="firstName" class="error">First Name</label> -->
		<br />

		<sf:label path="lastName" cssErrorClass="error">Last Name</sf:label>
		<sf:input path="lastName" />
		<br />
		<sf:label path="email" cssErrorClass="error">Email</sf:label>
		<sf:input path="email" />
		<br />
		<sf:label path="username" cssErrorClass="error">Username</sf:label>
		<sf:input path="username" />
		<br />
		<sf:label path="password" cssErrorClass="error">Password</sf:label>
		<sf:password path="password" />
		<br />
		<input type="submit" value="Register" />
	</sf:form>
</body>
</html>