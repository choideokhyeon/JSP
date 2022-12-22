<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
	<!-- LINK -->
	<%@include file="module/link.jsp" %>
</head>

<body>
	<!-- Header -->
	<%@include file="module/header.jsp" %>
	
	<!-- 메인배너 -->
	<%@include file="module/section1.jsp" %>

    <!-- 두번째 배너 (다중슬라이드) -->
	<%@include file="module/section2.jsp" %>

	<!-- 배지 -->
	<%@include file="module/section3.jsp" %>

	<!-- 백그라운드 이미지 고정+attachment -->
	<%@include file="module/section4.jsp" %>
  
	<!-- 토글슬라이드 -->
	<%@include file="module/section5.jsp" %>

	<!-- YOUTUBE VIDEO  -->
	<%@include file="module/section6.jsp" %>

	<!-- 푸터 -->
	<%@include file="module/footer.jsp" %>
	
	
  <div id="to-top">
    <i class="bi bi-upload"></i>
  </div>

</body>

</html>