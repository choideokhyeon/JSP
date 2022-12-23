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
	//파라미터 받기
	//1 request.getParameter
	String bookcode = request.getParameter("bookcode");
	String bookname = request.getParameter("bookname");
	String price = request.getParameter("price");
	out.print("코드 : " + bookcode + "<br>");
	out.print("이름 : " + bookname + "<br>");
	out.print("가격 : " + price + "<br>");
	
%>


	<!-- 2 useBean -->
	<!-- bookDTO 빈객체 생성 -->
	<jsp:useBean id="bookDTO" class="Ch05.BookDTO" scope="page" />
	
	<!-- 모든 파라미터 값 bookDTO에 저장(Setter 함수 이용) -->
	<jsp:setProperty name="bookDTO" property="*" />
	
	<!-- toString()으로 확인 -->
	결과<br>
	<%=bookDTO %>
	
</body>
</html>