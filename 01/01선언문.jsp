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
	서블릿 파일 경로
	C:\정보처리\11 서버프로그램\eclipseJSP\workspace\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\work\Catalina\localhost\JSP\org\apache\jsp\_01
-->

<!-- 선언문 -->
<%!
		//변수 추가
		String hello = "Hello World";
		
		//함수 추가
		public String testFunc(){
			System.out.println("선언문 테스트");
			return "abcd";
		}
%>

<!--  -->
<%=hello %><br>
<%=testFunc() %><br>
</body>
</html>