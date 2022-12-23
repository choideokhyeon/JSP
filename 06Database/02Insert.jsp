<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%@page import="java.sql.*" %>
	<%
	//기본 연결 정보
	String id = "SYSTEM"; //DB연결 id
	String pw = "1234"; //DB연결 pw
	String url = "jdbc:oracle:thin:@localhost:1521:xe"; //연결 URL(DBMS마다 상이함)

	//DB연결객체 관련 JDBC Class 참조변수
	Connection conn = null; //DB연결객체용
	PreparedStatement pstmt = null; //SQL쿼리 전송용 객체
	ResultSet rs = null; //쿼리결과(Select결과) 수신용

	//연결 Test
	try {
		Class.forName("oracle.jdbc.driver.OracleDriver"); //DB드라이버 로드
		conn = DriverManager.getConnection(url, id, pw); //DB Connection 객체 받기
		System.out.println("[Connected] : " + conn);
		
		pstmt = conn.prepareStatement("insert into tbl_board values(board_seq.NEXTVAL, ?, ?, ?)");
		pstmt.setString(1, "Title1");
		pstmt.setString(2, "Writer1");
		pstmt.setString(3, "Content1");
		int result = pstmt.executeUpdate();
		if(result != 0)
			System.out.println("Insert 성공!");
		else
			System.out.println("Insert 실패..");
		
		
	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		try {pstmt.close();} catch (Exception e) {}
		try {conn.close();} catch (Exception e) {}
	}
	%>

</body>
</html>