<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<jsp:useBean id="bean" class="Ch05.TestDTO" scope="session" />
	<jsp:setProperty name="bean" property="msg1" value="msg1-Value" />
	
	<%
		System.out.println("<session + redirect>");
		System.out.println("01Start : " + bean);
	%>
	
	<!-- Redirect -->
	<%
		response.sendRedirect("02.jsp");
	%>

</body>
</html>