<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>step1_q3</h1>

<!-- 3 
 세션-화면을 호출하면 접근한 이력이 리스트로 누적되어 보여주는 화면을 개발 하시오 
: 누적번호 / 세션id / 접속 시간 
: 맨 위 오른쪽 위치에는 총 카운트 수를 노출 시키시오 -->

<!--${paramList} -->

	<c:forEach var="list" items="${paramList}">
			<div>num:${list.num} / id:${list.id} date:${list.date} </div>
	</c:forEach>
</body>
</html>