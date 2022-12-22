<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int width = Integer.parseInt(request.getParameter("width"));
	int height = Integer.parseInt(request.getParameter("height"));
	int row = Integer.parseInt(request.getParameter("row"));
	int col = Integer.parseInt(request.getParameter("col"));
	String bgcolor = request.getParameter("bgcolor");
	System.out.println(bgcolor);
	String color = request.getParameter("color");
%>
<style>
	td{
	<% if(bgcolor.equals("black"))
	{
		out.print("border:3px solid red;");
	}
	else{
	out.print("border:3px solid black;");		
	}
	%>
	width:<%=width%>;
	height:<%=height%>;
	background-color:<%=bgcolor%>;
	color:<%=color%>;
	}
</style>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	out.print("<table>");
	for(int i=0; i<row; i++){
		out.print("<tr>");
		
		for(int j=0; j<col; j++){
			out.print("<td>" + i*j + "</td>");
		}
		
		out.print("</tr>");
	}
	out.print("</table>");
	%>
</body>
</html>