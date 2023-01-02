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
	쿠키의 특징
	- 문자열 데이터로만 저장
	- 4kbyte 이하의 공간을 차지
	- 여러개의 쿠키 설정가능(최대 300개)
	- 도메인당 20개 까지 저장 가능
	- 저장한도를 초과하면 최근에 사용되지 않는 쿠키부터 자동 삭제
-->

<%
	//KEY : VALUE
	//쿠키 생성
	Cookie cookie = new Cookie("c1" , "v1");
	cookie.setMaxAge(3600);	//쿠키 유지 시간 | -1(기본값) : 파일 생성은 되지 않으나 브라우저가 종료될때 까지 쿠키정보 저장, 브라우저 종료시 삭제
	cookie.setPath("/");	//모든 URL에 쿠키 적용
	
	Cookie cookie2 = new Cookie("c2" , "v2");
	cookie2.setMaxAge(3600);
	cookie2.setPath("./");	//현재 폴더에만 전달

	Cookie cookie3 = new Cookie("c3" , "v3");
	cookie3.setMaxAge(3600);
	cookie3.setPath("/09Cookie/01Basic");	//지정된 URL로만 전달

	//쿠키 전달
	response.addCookie(cookie);
	response.addCookie(cookie2);
	response.addCookie(cookie3);
%>

	<a href="Confirm.jsp">쿠키 확인</a>

</body>
</html>