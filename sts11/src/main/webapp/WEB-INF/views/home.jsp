<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<meta charset="utf-8">
	<title>Home</title>
	<script type="text/javascript" src="resources/js/jquery-1.12.4.min.js"></script>
	<script type="text/javascript">
		$(function(){
			$('button[type=button]').click(function(){
				$('form').append('<div>file:<input type="file" name="file2"/></div>');
			});
		});
	</script>
</head>
<body>
<h1>파일 업로드</h1>
<form action="upload" method="post" enctype="multipart/form-data">
	<div>
		sub:<input type="text" name="sub"/>
	</div>
	<div>
		<button type="button">다운로드 추가</button>
	</div>
	<button>전송</button>
</form>
</body>
</html>
