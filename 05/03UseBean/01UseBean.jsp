<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- Bean생성 -->
	<jsp:useBean id="DTO" class="Ch05.SimpleDTO" scope="page" />
	<%
		System.out.println("BEAN : " + pageContext.getAttribute("DTO"));
		System.out.println("BEAN : " + DTO);
	%>
	
	<jsp:setProperty name="DTO" property="name" value="홍길동" />
	<%
		DTO.setAge("55");
		DTO.setAddr("대구");
		System.out.println("BEAN : " + DTO);
	%>
	
	확인 : <jsp:getProperty name="DTO" property="name" /><br>
	확인 : <%=DTO.getAge() %><br>
	확인 : ${DTO.getAddr()}<br>
</body>
</html>