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
	String [] hobbies = request.getParameterValues("hobbies"); //name="hobbies"의 값을 가져옴
	for(String hobby : hobbies){
		out.println("ParamVal : " + hobby + "<br>");
	}
%>
</body>
</html>