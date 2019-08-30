<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<title>Welcome to BITCAMP</title>

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>

</head>

<body id="page-top" data-spy="scroll" data-target=".navbar-custom">


</body>

</html>


<script>

$(document).ready(function(){
	sessionStorage.setItem("userIdx", ${param.uIdx});
	location.href= 'welcome.jsp';
});


</script>
