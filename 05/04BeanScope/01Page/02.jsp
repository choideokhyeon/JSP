<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<jsp:useBean id="bean" class="Ch05.TestDTO" scope="page" />
	<jsp:setProperty name="bean" property="msg2" value="msg2-Value" />
	
	<%
		System.out.println("02Page : " + bean);
	%>
	
	<!-- forwarding(request는 유지 -->
	<jsp:forward page="03.jsp" />

</body>
</html>