<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

	<div class="jumbotron text-center">
	  <h1>데이터분석 SW엔지니어 양성과정</h1>
	  <p>스프링부트를 사용하여, 간단한 게시판을 만들어보자</p>
	</div>
	
	<div class="container">
	  <div class="panel panel-default">
		  <div class="panel-heading">데이터분석과정 게시판</div>
		  <div class="panel-body">
		  	<table class="table table-bordered table-striped">
		  		<tr>
		  			<td>제목</td>
		  			<td>${board.title}</td>
		  		</tr>
		  		<tr>
		  			<td>작성자</td>
		  			<td>${board.writer}</td>
		  		</tr>
		  		<tr>
		  			<td>내용</td>
		  			<td>${board.content}</td>
		  		</tr>
		  		<tr>
		  			<td>작성일</td>
		  			<td>${board.indate}</td>
		  		</tr>
		  		<tr>
		  			<td>조회수</td>
		  			<td id="bcnt">${board.bcnt}</td>
		  		</tr>
		  	</table>
		  </div>
	  </div>
	</div>

<script type="text/javascript">
	// JS 작성하는 공간
	// 문서가 준비 완료되면 실행 
	$(function(){
		// 비동기 통신을 사용해보자~
		// 요청할 url : count
		// 보내줘야할 데이터 : bnum
		// 성공했을 때, 화면에 조회수를 1증가시킨 상태로 변경 
		$.ajax({
			// 1. 요청 url
			// /web/ --> Context path를 동적으로 꺼내오고 싶다면 
			// core 태그 사용해서 데이터 꺼내서 변수 생성하기
			url : '/web/count',
			// 2. 전송할 데이터 지정
			data : {bnum:'${board.bnum}'},
			// 3. 성공했을 때 실행함수
			success : () =>{
				// 3-1. id가 bcnt인 태그를 가져오기
				let bcnt = $('#bcnt').text();
				console.log(bcnt);
				// 3-2. 해당하는 태그 안쪽에 있는 글자를 가져와서 +1 증가시키기 
				$('#bcnt').text(Number(bcnt) + 1);
			},
			// 4. 실패했을 때 실행함수
			error : (e) => {
				console.log(e);
			}
		})
		
		
		
		
	})
	
	









</script>
</body>
</html>