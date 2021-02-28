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
<h1>step1_q2</h1>

<!-- 2.리스트-arraylist의 데이터들을 화면에 jstl을 이용해 한줄씩 출력 하시오 -->
	<%-- ${paramList} --%>
	<c:forEach var="list" items="${paramList}" varStatus="i">
			<div>${list.name}: ${list.sex}</div>
	</c:forEach>
	
	<table border=1>
		<tr>
			<th>이름</th>
			<th>성별</th>
		</tr>
	<c:forEach var="list" items="${paramList}" varStatus="i">
		<tr>
			<td>${list.name}</td>
			<td>${list.sex}</td>
		</tr>
	</c:forEach>
	</table>
</body>
</html>