<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>입력페이지</h1>
	<!-- form 태그 action 따로 명시 안해주면 default는 자기자신의 주소 -->
	<form method="post">
		<div>
			<label for="sub">제목</label>
			<input type="text" name="sub" id="sub">
		</div>
		<div>
			<label for="name">이름</label>
			<input type="text" name="name" id="name">
		</div>
		<div>
			<textarea name="content"></textarea>
		</div>
		<div>
			<button>입력</button>
		</div>
	</form>
</body>
</html>