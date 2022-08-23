<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>
<body>
<button onClick="postajax()">클릭</button>

<script type="text/javascript">
 	function postajax() {
 		//POST으로 key=value 데이터를 전송하고 응답을 json으로 받아보기
 		
 		$.ajax({
 			type: "POST", 
 			url: "http://localhost:8080/ajax/ajax1",
 			data: "username=ssar&password=1234",
 			contentType: "application/x-www-form-urlencoded",
 			dataType: 	"json" //응답되는 데이터를 자바스크립트 오브젝트로 파싱하는 용도
 		})
 		.done(function(result) {
 			console.log(result)
 		}) //ajax 통신 완료후에 정상이면 done 호출
 	}
</script>
</body>
</html>