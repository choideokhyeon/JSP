<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%!
	int b=0;	// <%! 멤버변수(application 동작 동안에는 값 유지)
%>

<!--
	스크립틀릿
	- 서블릿파일 내 service 함수 안에 삽입되는 코드
	- 반복/분기문 사용가능
-->

<%
	// <% 지역변수
	String str1 = "HELLO WORLD1";
	String str2 = "HELLO WORLD2";
	int a=0;
	a++;	//지역변수 a값 1 증가(호출시에만)
	b++;	//멤버변수 b값 1 증가
	
	//반복문 사용가능
	for(int i=0; i<10; i++)
	{
		System.out.println("Hello world" + i);
	}
	System.out.println();
%>

str1 : <%=str1 %><br>
str2 : <%=str2 %><br>
a : <%=a %><br>
b : <%=b %><br>

</body>
</html>