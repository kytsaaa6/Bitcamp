<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    


<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="">

  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>


  <title>숙소 예약 리스트</title>

  <!-- css -->
  <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet" type="text/css">
  <link href="${pageContext.request.contextPath}/resources/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
  <link href="${pageContext.request.contextPath}/resources/css/nivo-lightbox.css" rel="stylesheet" />
  <link href="${pageContext.request.contextPath}/resources/css/nivo-lightbox-theme/default/default.css" rel="stylesheet" type="text/css" />
  <link href="${pageContext.request.contextPath}/resources/css/owl.carousel.css" rel="stylesheet" media="screen" />
  <link href="${pageContext.request.contextPath}/resources/css/owl.theme.css" rel="stylesheet" media="screen" />
  <link href="${pageContext.request.contextPath}/resources/css/flexslider.css" rel="stylesheet" />
  <link href="${pageContext.request.contextPath}/resources/css/animate.css" rel="stylesheet" />
  <link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/resources/color/default.css" rel="stylesheet">
  <!-- =======================================================
    Theme Name: Shuffle
    Theme URL: https://bootstrapmade.com/bootstrap-3-one-page-template-free-shuffle/
    Author: BootstrapMade
    Author URL: https://bootstrapmade.com
  ======================================================= -->

<style>
	table {
		border-collapse: collapse;
		border: 0;	
		width: 1400px;
	}
	td {
		padding : 3px 10px;		
		border: 1px solid #999;	
	}
	
	table tr:nth-child(1) {
		background-color: #F5F4F1;
		font-size: 22px;
		font-weight: 500;
	}

</style>


</head>

<body id="page-top" data-spy="scroll" data-target=".navbar-custom">

    <!-- Section -->
	<%@ include file="/WEB-INF/views/frame/section.jsp" %>
    <!-- End of Section -->

    <!-- Nav -->
	<%@ include file="/WEB-INF/views/frame/nav.jsp" %>
    <!-- End of Nav -->

<section id="about" class="home-section color-dark bg-white">
	  
<div class="container">
<div id="contents">
	<h1 style="padding: 15px; "> 예약 현황 </h1>
	<hr style="width: 1400px;">
	
	<table>
		<tr>
			<td>예약번호</td>
			<td>호텔이름</td>
			<td>호텔주소</td>
			<td>룸이름</td>
			<td>체크인</td>
			<td>체크아웃</td>
			<td>예약시간</td>
			<td>결제금액</td>
			<td>아이디</td>
			<td>관리</td>
		</tr>
		
		<c:forEach items="${bookList}" var="list" varStatus="stat">
		<tr>
			<td>${list.idx}</td>
			<td>${list.h_name}</td>
			<td>${list.h_address}</td>
			<td>${list.r_name}</td>
			<td>${list.s_date}</td>
			<td>${list.e_date}</td>
			<td>${list.b_date}</td>
			<td>${list.r_price}</td>
			<td>${list.uId}</td>
<%-- 			
			<td>
				<fmt:formatDate value="${memberInfo.regDate}" pattern="yyyy.MM.dd"/>
			</td> 
--%>
			<td>	
				<a href="update?idx=${list.idx}">수정</a>
				<a href="#" onclick="delBooking(${list.idx})">삭제</a>
			</td>
		</tr>
		</c:forEach>
		
	</table>
	
</div>
</div>
</section>

	<!-- footer -->
	<%@ include file="/WEB-INF/views/frame/footer.jsp" %>
    <!-- End of footer -->




<script>


	function delBooking(idx) {
	
		if(confirm("삭제하시겠습니까?")){
			location.href = 'delete/'+idx;
		}
		
		return false;
	}

</script>




  <!-- Core JavaScript Files -->
  <script src="<c:url value="/resources/js/jquery.min.js" />"></script>
  <script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
  <script src="<c:url value="/resources/js/jquery.sticky.js" />"></script>
  <script src="<c:url value="/resources/js/jquery.flexslider-min.js" />"></script>
  <script src="<c:url value="/resources/js/jquery.easing.min.js" />"></script>
  <script src="<c:url value="/resources/js/jquery.scrollTo.js" />"></script>
  <script src="<c:url value="/resources/js/jquery.appear.js" />"></script>
  <script src="<c:url value="/resources/js/stellar.js" />"></script>
  <script src="<c:url value="/resources/js/wow.min.js" />"></script>
  <script src="<c:url value="/resources/js/owl.carousel.min.js" />"></script>
  <script src="<c:url value="/resources/js/nivo-lightbox.min.js" />"></script>
  <script src="<c:url value="/resources/js/custom.js" />"></script>
  <script src="<c:url value="/resources/contactform/contactform.js" />"></script>
</body>
</html>