<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String title = request.getParameter("title");
	String bgcolor = request.getParameter("bgcolor");
	
	if(bgcolor.equals("etc"))
	{
		bgcolor="rgba(255,0,0,0.5)";
	}
	
	System.out.println("TITLE : " + title);
	System.out.println("BGCOLOR : " + bgcolor);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
body{
background-color:<%=bgcolor%>;
}
</style>

</head>
<body>
<h1>TITLE : <%=title%></h1>


</body>
</html>