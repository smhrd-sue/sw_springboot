<%@page import="com.lgdx.entity.Board"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
	  <h2>Spring MVC 05</h2>
	  <div class="panel panel-warning">
	    <div class="panel-heading">Board Update Page</div>
	    <div class="panel-body">
	    
	    <% Board vo = (Board)request.getAttribute("vo"); %>
	    	<!-- 
	    		게시글 수정기능을 작성하시오
	    		BoardController에 Post방식의 요청을 받는 boardUpdate.do를 만든다음
	    		idx와 일치하는 게시글 정보(제목, 내용, 작성자)를 수정하시오.
	    		수정 후 해당 수정된 화면을 보는 상세보기 페이지로 이동합니다.
				힌트. boardInsert.do 참고할 것	    	
	    	 -->
	    	<form action="boardUpdate.do" method="post">
	    	
	    	<input type="hidden" name="idx" value="<%= vo.getIdx() %>">
	    	
	    	<table class="table table-bordered table-hover">
	    		<tr>
	    			<td>제목</td>
	    			<td><input value="<%= vo.getTitle() %>" name="title" type="text" class="form-control" placeholder="제목을 입력하세요."></td>
	    		</tr>
	    		<tr>
	    			<td>내용</td>
	    			<td>
	    			<textarea name="contents" rows="7" class="form-control" cols="" placeholder="내용을 입력하세요."><%= vo.getContents() %></textarea></td>
	    		</tr>
	    		<tr>
	    			<td>작성자</td>
	    			<td><input value="<%= vo.getWriter() %>" name="writer" type="text" class="form-control" placeholder="작성자를 입력하세요."></td>
	    		</tr>
	    		<tr>
	    			<td colspan="2" align="center">
	    				<a href="boardList.do"><button type="button" class="btn btn-info">돌아가기</button></a>
	    				<button type="reset" class="btn btn-danger">취소</button>
	    				<button type="submit" class="btn btn-warning">수정</button>
	    			</td>
	    		</tr>
	    	</table>
	    	</form>
	    </div>
	    <div class="panel-footer">LG DX - 박병관</div>
	  </div>
	</div>
</body>
</html>









