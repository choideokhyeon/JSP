<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		session.setMaxInactiveInterval(5);
		//5초간 내용 유지 후 null 값으로 변환
	%>
	
	<jsp:useBean id="bean" class="Ch05.TestDTO" scope="application" />
	<jsp:setProperty name="bean" property="msg1" value="msg1-Value" />
	
	<%
		//Application : 서버가 켜져있는 동안 내용 유지
		System.out.println("<Application + redirect>");
		System.out.println("01Start : " + bean);
	%>
	
	<!-- Redirect -->
	<%
		response.sendRedirect("02.jsp");
	%>

</body>
</html>