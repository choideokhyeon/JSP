<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%@page import="java.util.*,Ch03.SimpleDTO" %>
<%
	Scanner sc = new Scanner(System.in);
	SimpleDTO dto = new SimpleDTO("홍길동","33","대구");
	out.println(dto);
%>

</body>
</html>