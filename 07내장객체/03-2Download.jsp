<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@page import="java.io.*" %>
	<%
		//download Path 확인
		String realPath = pageContext.getServletContext().getRealPath("/") + "07내장객체\\03-2Download";
		System.out.println("realPath : " + realPath);
		
		//Instream(파일경로로부터 프로그램방향으로 스트림 만들기)
		FileInputStream fileinput = new FileInputStream(realPath + "\\TEST.txt");
		
		//Outstream(자바 프로그램에서 브라우저로 내용 전달할 스트림)
		out.clear();		
		out=pageContext.pushBody();
		//getOutputStream()을 호출하기전에 JSP 자체의 OutputStream을 제거할 필요가 있다
		ServletOutputStream bout = response.getOutputStream();
		
		//response 전달 파일타입 변경
		response.setHeader("Content-Type", "application/octet-stream;charset=UTF-8");
		response.setHeader("Content-Disposition", "attachment; filename=TEST.txt");
		
		while(true)
		{
			int data = fileinput.read();
			if(data == -1)
			{
				break;
			}
			bout.write((byte)data);
			bout.flush();
		}
		bout.close();
		fileinput.close();
	%>
</body>
</html>