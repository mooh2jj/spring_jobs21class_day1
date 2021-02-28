<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
</head>
<body>
<h1>step1_q4</h1>

<!-- 4 json-json 데이터를 백엔드로 넘겨서 객체들로 바꾸고 arraylist 객체 하나에 모두 담아 해당 객체 갯수가 잘 들어왔는지 size로 확 인 -->
<script>
var userinfo = [{"mail_id":"stevelee@steveleejava.com","pw":"1q2w3ezZ!!","use_yn":"y","phone_num":"01077778888","type":"admin","addr":"서울시강남구논현 동","sn7":"9209301"} 
,{"mail_id":"stevelee@steveleejava.com","pw":"1q2w3ezZ!!","use_yn":"y","phone_num":"01077778888","type":"admin","addr":"서울시강남구논현동","sn6":"9209301"} 
,{"mail_id":"stevelee@steveleejava.com","pw":"1q2w3ezZ!!","use_yn":"y","phone_num":"01077778888","type":"admin","addr":"서울시강남구논현동","sn5":"9209301"} 
,{"mail_id":"stevelee@steveleejava.com","pw":"1q2w3ezZ!!","use_yn":"y","phone_num":"01077778888","type":"admin","addr":"서울시강남구논현동","sn4":"9209301"} 
];

var dsginfo = {
		"name":"dsg",
		"sex":"male"
};
/* var obj = JSON.stringify(dsginfo); */

$(function(){
    var jsonData = JSON.stringify(userinfo);
    alert(jsonData);
    
   $.ajax({
       type:"post",
       url:"${contextPath}/step1/ajax_q4",
       data: jsonData,
       dataType: "json",
       contentType: "application/json; charset=utf-8",	// 이게 있어야..
       success: function(result){
       		//var rtnObj = JSON.parse(result); // json문자열 -> js객체로 반환 
       		// alert(rtnObj.size);
        		for(var i in result){
       		console.log(result[i]); // 이게 안나옴..
       		$(".ajax0").append(result[i].mail_id+"<br>");	// result or result[i] 자체는 아예 안나옴! result[i].mail_id 해야 나옴!
       		
       			} 
       			alert("success!");
       		}
       });

   });

</script>

list : 
<span class="ajax0"></span>
</body>
</html>