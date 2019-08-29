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
//	getUserIdx();

//넘겨야할 것들,,, 받는 쪽에서 만들어야 할 메서드 제작(일단 샘플 미니미니꺼로)
/* function getUserIdx(){
	$.ajax({
//		url:'http://13.125.249.209:8080/adminclient/index.jsp',
		url:'http://13.209.40.5:8080/client/info.jsp',
		type: 'GET',
		success: function(uIdx){
			sessionStorage.setItem("userIdx", uIdx);
			console.log(uIdx);
		},
		error: function(e){
			console.log(e);
		}
		
	});
} */


</script>
