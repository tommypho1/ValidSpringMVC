<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta content="en-us" http-equiv="Content-Language" />
<meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
<title>Sign Up Done</title>
<style type="text/css">
.auto-style1 {
	font-size: x-large;
}
</style>
</head>

<body>

<p class="auto-style1"><strong>Sign Up Done. Now you are a new member of our 
school.</strong></p>

<p> Summary</p>
<p>  ${user.name}</p>
<p>  ${user.userId}</p>
<p>  ${user.type}</p>
<p>  ${user.age}</p>
<p>To log in, <a href="login.html">click here </a></p>

</body>

</html>
