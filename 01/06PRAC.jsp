<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!--
	1 Scanner 로 숫자를 입력받아 구구단을 출력(table tr td)
	2 Scanner 로 숫자/메뉴명을 입력받아 1depth메뉴를 표시
-->
<style>

	td{
	border : 1px solid black;
	width: 30px;
	height: 30px;
	text-align:center;
	}
	
	.answer{
	background-color:black;
	color:white;
	}
	
	li{
	display : none;
	}
	
	ul:hover>li{
	display:block;
	}
	
</style>

	<%-- <%
		java.util.Scanner sc = new java.util.Scanner(System.in);
		System.out.print("원하는 숫자 입력 : ");
		int num = sc.nextInt();
	%>
	
	<%
		out.print("<table>");
		out.print("<caption>" + num + "단 </caption>");
		for(int i = 1; i < 10; i++)
		{
			out.print("<tr>");
			out.print("<td>");
			out.print(num);
			out.print("</td>");
			
			out.print("<td>");
			out.print("x");
			out.print("</td>");
			
			out.print("<td>");
			out.print(i);
			out.print("</td>");
			
			out.print("<td>");
			out.print("=");
			out.print("</td>");
			
			out.print("<td class=\"answer\">");
			out.print(i*num);
			out.print("</td>");
			out.print("</tr>");
		}
		out.print("</table>");
	%> --%>
	
	
	
<%-- 	<%
		java.util.Scanner sc = new java.util.Scanner(System.in);
		System.out.print("원하는 소메뉴 개수를 입력하세요 : ");
		int menucnt = sc.nextInt();
	%>
	
	<%
		out.print("<ul>");
		out.print("큰메뉴");
		for(int i = 0; i < menucnt; i++)
		{
			out.print("<li>");
			
			out.print("<a href=\"\">" + (i+1) + "번째메뉴</a>");
			out.print("</li>");
		}
		out.print("</ul");
	%> --%>

</body>
</html>