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
	//forward 방식 페이지 요청
	//request 값을 유지한 채 또 다른 URI경로로 이동
	//주소창의 URL경로는 유지된다
	
	//Forward : request내장객체의 내용을 유지한채로 다른 페이지로 요청
-->
	<form action="02Page.jsp">
		ID <input type="text" name=userid />	
		password <input type="text" name=pwd />	
		<input type="submit" />	
	</form>
</body>
</html>