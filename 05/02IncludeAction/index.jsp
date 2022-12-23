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
	
	<%@page import="java.io.*" %>
	<%
		System.out.println("REALPATH : " +pageContext.getServletContext().getRealPath("/"));
		String filepath = pageContext.getServletContext().getRealPath("/");
		File dir = new File(filepath + "05/02IncludeAction/actionTest");
		String lists[] = dir.list();
		for(String list : lists){
			System.out.println("FILE : " + list);
		}
	%>
	
	<!-- Action Tag -->
	<jsp:include page="module/section1.jsp">
		<jsp:param name="Img1" value="<%=lists[0] %>" />
		<jsp:param name="Img2" value="<%=lists[1] %>" />
		<jsp:param name="Img3" value="<%=lists[2] %>" />
		<jsp:param name="Img4" value="<%=lists[3] %>" />
		<jsp:param name="Img5" value="<%=lists[4] %>" />
	</jsp:include>

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