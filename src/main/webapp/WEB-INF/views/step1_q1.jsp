<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
    <script type="text/javascript">
        $(function(){
            
            $(".btnDan").on("click", function(){
                // alert("hi");
                var danNum = $(this).val();
                /* alert(danNum); */
                $("#div").html(""); // 초기화는 어디? 여기. 이유는 한번돌고 눌렀을 때 초기화 해줘야 되니까. 
                for(var i =2; i<10; i++){
                    $("#div").append(danNum +"*"+ i + "="+danNum*i +"<br>");
                }
            });
            // $("#div").html("");
            // $("#div").text(""); // 초기화문제
        });
        
    </script>
</head>
<body>
    <button class="btnDan" value="2">2dan</button>
    <button class="btnDan" value="3">3dan</button>
    <button class="btnDan" value="4">4dan</button>
    <button class="btnDan" value="5">5dan</button>
    <button class="btnDan" value="6">6dan</button>
    <button class="btnDan" value="7">7dan</button>
    <button class="btnDan" value="8">8dan</button>
    <button class="btnDan" value="9">9dan</button>
    

    <div id="div"></div>

</body>
</html>