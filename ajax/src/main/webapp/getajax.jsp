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
<button onClick="getajax()">클릭</button>

<script type="text/javascript">
 	function getajax() {
 		$.ajax({
 			type: "GET", //get은 생력가능
 			url: "http://localhost:8080/ajax/ajax1?username=ssar&password=1234",
 			//data: get은 전송할 http의 body가 없음. 그래서 data필드가 필요없음
 			//contentType: 전송한 data가 없으니까 그 data를 설명할 필드가 필요없음
 			dataType: 	"text" //응답되는 데이터를 자바스크립트 오브젝트로 파싱하는 용도
 		})
 		.done(function(result) {
 			alert(result)
 		}) //ajax 통신 완료후에 정상이면 done 호출
 	}
</script>
</body>
</html>