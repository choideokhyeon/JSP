<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <!-- jstl -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- c:set 변수지정, key:value 지정 -->
<c:set var="num" value="123" />

<!-- c:out 출력 XSS공격에 대한 대비가능 -->
<c:out value="${num }" /><br>
변수num : ${num }<br>

<c:set var="arr" value="{10,20,30,40,50,60}" />
<c:out value="${arr }" /><br>
<hr>



<!-- if -->
<c:set var="flag" value="a" />
<c:if test="${empty flag}" >
	flag가 비어있습니까 : <c:out value="[IF] TRUE" />
</c:if>
<c:if test="${not empty flag}" >
	flag가 비어있습니까 : <c:out value="[IF] FALSE" />
</c:if>
<hr>



<!-- choose -->
<c:choose>
	<c:when test="${flag eq 'a' }">
		flag의 값 : <c:out value="[Choose] A" />
	</c:when>
	<c:when test="${flag eq 'b' }">
		flag의 값 : <c:out value="[Choose] B" />
	</c:when>
	<c:when test="${flag eq 'c' }">
		flag의 값 : <c:out value="[Choose] C" />
	</c:when>
	<c:otherwise>
		flag의 값 : <c:out value="[ETC] ETC" />
	</c:otherwise>
</c:choose>
<hr>



<!-- foreach -->
<c:set var="end" value="15" />
<c:forEach var="i" begin="3" end="${end }" step="3">
	<c:out value="${i }" />
</c:forEach>
<br>
<hr>



<c:set var="arr" value="10,20,30,40,50,60,70,80,90,100" />
<c:forEach var="i" items="${arr }" varStatus="status" >
	${status.count } &nbsp;idx=${status.index} <c:out value="${i }" /><br>
</c:forEach>
<hr>



<!-- URL : ContextPath경로 자동 추가, 쿠키차단시 sessionID를 포함해서 전달 -->
<a href="/test.jsp">URL태그x</a><br>
<a href="<c:url value="/test.jsp" />">URL태그O</a>

</body>
</html>