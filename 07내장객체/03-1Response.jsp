<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%@page import = "java.io.*" %>
	<%
		//Redirect 경로 지정
		//response.sendRedirect("02Request.jsp");
		
		//response 헤더정보 지정
		//response.setIntHeader("Refresh", 3);
		
		//response 에러창
		//response.sendError(404,"에러 메세지 입니다");
		
		//response outStream 꺼내오기
/* 		ServletOutputStream bout = response.getOutputStream();
		bout.write(101); //아스키코드
		bout.flush();
		bout.close(); */
		
		PrintWriter o = response.getWriter();
		o.println("<h1>반갑습니다</h1>");
	%>
	
	<%=new java.util.Date().toString() %>

</body>
</html>