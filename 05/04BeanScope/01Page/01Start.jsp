<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
												<!-- scope -->
	<jsp:useBean id="bean" class="Ch05.TestDTO" scope="page" />
	<jsp:setProperty name="bean" property="msg1" value="msg1-Value" />
	
	<%
		System.out.println("<page + forwarding>");
		System.out.println("01Start : " + bean);
	%>
	
	<!-- forwarding(request는 유지) -->
	<jsp:forward page="02.jsp" />

</body>
</html>