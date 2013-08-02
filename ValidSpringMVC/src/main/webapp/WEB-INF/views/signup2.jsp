<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta content="en-us" http-equiv="Content-Language" />
<meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
<title>Sign up Form</title>
<style type="text/css">
.auto-style1 {
	font-size: xx-large;
}

	.error {
		    font-size: 0.8em;
			color: #ff0000;
		}
	.error1 {
		    font-size: 0.8em;
			color: #008000;
		}

</style>
</head>

<body>

<p class="auto-style1"><strong>Sign up Form</strong></p>
<p class="auto-style1">&nbsp;</p>
<p>All of fields must be entered values.</p>
<form:form action="processSignup2" method="post" style="height: 332px" commandName="user2">


	<fmt:message key="FullName"/>
	<br />
	<form:input path="name" style="width: 211px" type="text" />
	<form:errors path="name" cssClass="error1"/> 
	<br />
	<br />
	User ID<br />
	<form:input path="userId" style="width: 208px" type="text" />
	<form:errors path="userId" cssClass="error"/><br />
	<br />
	Password<br />
	<form:input path="password" style="width: 205px" type="password" />
	<form:errors path="password" cssClass="error1"/><br />
	<br />
	
	Age<br />
	<form:input path="age" style="width: 205px" type="text" />
	<form:errors path="age" cssClass="error"/> <br />
	<br />
	
	Email<br />
	<form:input path="email" style="width: 205px" type="text" />
	<form:errors path="email" cssClass="error1"/> <br />
	<br />
	
	
	
	
	<input type="submit" value="Submit" />

</form:form>
<p>Go back <a href="login.html">Sign in</a> Page</p>

</body>

</html>
