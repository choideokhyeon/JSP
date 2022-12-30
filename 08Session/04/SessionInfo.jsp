<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="sessionDTO" class="Ch08.SessionDTO" scope="application" />
<%@page import="java.util.*,javax.servlet.http.*" %>
<%
	try{
	for(String key : sessionDTO.getSessionMap().keySet())
	{
		HttpSession clientSession = sessionDTO.getSessionMap().get(key);
		String remoteIp = (String)clientSession.getAttribute("remoteip");
		out.println("USERID : " + key + " | RemoteIp : " + remoteIp+"<br>");
	}
	}catch(Exception e){
		e.printStackTrace();
	}
	response.setIntHeader("Refresh", 1);
	 
%>

</body>
</html>