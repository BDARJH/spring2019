<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="/css/bootstrap-theme.min.css" />
<style type="text/css">
	.item>img{
		margin: 0px auto;
		width:50%;
	}
</style>
<script type="text/javascript" src="/js/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="/js/bootstrap.min.js"></script>
<script type="text/javascript">
	$(function(){
		if(${msg}==true){
			$('h1').html('상세 페이지');
			$('input,textarea').attr('readonly','readonly');
			//$('form button').hide();
		}else{
			$('h1').html('수정 페이지');
			$('form').next().hide();
		}

		$('#delBtn').click(function(){
			//$.post('delete.bit',{num:${bean.num}},function(){
				//window.location.href='list.bit';
			//});
		});

	});
</script>
</head>
<body>
	
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<nav class="navbar navbar-default">
					<div class="container-fluid">
						<div class="navbar-header">
							<a class="navbar-brand" href="/">
								<div>비트교육센터</div>
							</a>
						</div>
						<p class="navbar-text">
							<a href="/" class="navbar-link">HOME</a>
						</p>
						<p class="navbar-text">
							<a href="/bbs/list.bit" class="navbar-link">LIST</a>
						</p>
						<p class="navbar-text navbar-right">
							 / &nbsp;&nbsp;<a href="#" class="navbar-link">JOIN</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						</p>
						<p class="navbar-text navbar-right">
							<a href="#" class="navbar-link">LOGIN</a>
						</p>
					</div>
				</nav>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<div class="jumbotron">
					<h1>상세 페이지</h1>
					<p>${bean.num }번째글 - ${bean.nalja }</p>
					<p>
						<a class="btn btn-primary btn-lg" href="#" role="button">Learn
							more</a>
					</p>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<form class="form-horizontal" action="update.bit" method="post">
					<input type="hidden" name="num" value="${bean.num }"/>
					<div class="form-group">
						<label for="sub" class="col-sm-2 control-label">제목</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="sub" name="sub" value="${bean.sub }">
						</div>
					</div>
					<div class="form-group">
						<label for="name" class="col-sm-2 control-label">글쓴이</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="name" name="name"
								value="${bean.name }" >
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<textarea class="form-control" name="content" placeholder="content">${bean.content }</textarea>
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
						<div class="btn-group btn-group-justified" role="group" aria-label="...">
								<div class="btn-group" role="group">
									<button type="submit" class="btn btn-primary">입력</button>
								</div>
								<div class="btn-group" role="group">
									<button type="reset" class="btn btn-default">취소</button>
								</div>
							</div>
						</div>
					</div>
				</form>
					<form action="delete.bit?num=${bean.num }" method="post">
				<div class="btn-group btn-group-justified" role="group" aria-label="...">
					<div class="btn-group" role="group">
					<a href="edit.bit?idx=${bean.num }" role="button" class="btn btn-default">수정</a>
					</div>
					<div class="btn-group" role="group">
<!-- 					<a role="button" class="btn btn-danger" id="delBtn">삭제</a> -->
					<button class="btn btn-danger" id="delBtn" type="submit">삭제</button>
					</div>
				</div>
					</form>
			</div>
		</div>
	</div>
</body>
</html>