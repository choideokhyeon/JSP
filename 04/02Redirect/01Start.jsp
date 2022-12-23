<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!--
	//redirect 방식 페이지 요청
	//response.sendRedirect(경로)
	//새로운 request 요청 경로를 전달함으로써 기존 request값은 제거
	//URL 정보도 최종 요청한 경로로 지정
	
	//Redirect : request내장객체의 내용을 삭제하고 다른 페이지로 요청
-->
	<form action="02Page.jsp">
		ID <input type="text" name=userid />	
		password <input type="text" name=pwd />	
		<input type="submit" />	
	</form>
</body>
</html>