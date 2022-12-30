<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%@page import="java.io.*, java.util.zip.*"%>

	<%
	//download Path 확인
	String realPath = pageContext.getServletContext().getRealPath("/") + "07내장객체\\03-2download";
	System.out.println("RealPath : " + realPath);

	try {
		File dir = new File(realPath);	//File dir 경로 설정
		File filelist[] = dir.listFiles();	//dir 안 파일 정보들을 File 배열형태로 바등ㅁ

		FileInputStream fin = null;
		ZipEntry zipEntry = null;

		//response 전달 파일타입 변경
		response.setHeader("Content-Type","application/octet-stream;charset=utf-8");
		response.setHeader("Content-Disposition","attachment; filename=TEST.zip");
		
		//[오류해결] 이 응답을 위해 getOutputStream()이 이미 호출되었습니다.
		out.clear(); //response outstream 을 닫고 버퍼를 비움 
		out = pageContext.pushBody(); //현재 페이지 body 연결
		ServletOutputStream bout = response.getOutputStream();
		
		//추가
		ZipOutputStream zout = new ZipOutputStream(bout);

		for (File file : filelist)
		{
			fin = new FileInputStream(file);
			ZipEntry zip = new ZipEntry(file.getName().toString());
			zout.putNextEntry(zip); //파일 열기

			while (true) 
			{
				int data = fin.read();
				if (data == -1)
					break;
				zout.write((byte) data);
			}
			zout.closeEntry();	//파일 닫기
			fin.close();
		}
		zout.close();
	} catch (Exception e) {

	}
	%>

</body>
</html>