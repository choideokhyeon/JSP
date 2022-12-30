<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>08Session | loginproc </title>
</head>
<body>
<%
	//1 파라미터 받기
	String userid = request.getParameter("userid");
	String pwd = request.getParameter("pwd");
	
	//2 유효성 체크(Validation) - 생략(userid는 일치 , pwd 일치..)
	if(userid.equals("test@test.com") && pwd.equals("1234"))
	{
		//3 Service
		session.setAttribute("userid", userid);
		session.setMaxInactiveInterval(5);	// 초단위
		
		//4 View
		response.sendRedirect("main.jsp");
	}
	else{
		out.print("<script>");
		out.print("alert('아이디 혹은 비밀번호가 틀렸습니다')");
		out.print("</script>");
		response.sendRedirect("login.jsp");
	}
	
%>
</body>
</html>