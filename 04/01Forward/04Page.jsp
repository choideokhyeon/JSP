<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>04Page.jsp</h1>
	<%
		String userid = request.getParameter("userid");
		String pwd = request.getParameter("pwd");
		String value2 = (String) request.getAttribute("02Page");
		String value3 = (String) request.getAttribute("03Page");
		System.out.println("=================================");
		System.out.println("[04Page] userid : " + userid);
		System.out.println("[04Page] pwd : " + pwd);
		System.out.println("[04Page] 02page : " + value2);
		System.out.println("[04Page] 03page : " + value3);
		System.out.println("=================================");
	%>

</body>
</html>