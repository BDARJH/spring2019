<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/day06/css/bootstrap.css" />
<link rel="stylesheet" type="text/css"
	href="/day06/css/bootstrap-theme.css" />
<style type="text/css">
nav img {
	height: 100%;
}
</style>
<script type="text/javascript" src="/day06/js/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="/day06/js/bootstrap.js"></script>
<script type="text/javascript">
	$(function(){
			$('form button[type=submit],form button[type=reset]').hide();
			$('form button[type=button]').first().click(function(){
				$('.jumbotron h1').html('EDIT PAGE');
				$('#sub, #content').removeAttr('readonly');
				$('form button[type=button]').hide();
				$('form button[type=submit] ,form button[type=reset]').show();
			}).next().click(function(){
				//delete
				$('#method').val('DELETE');
				$('form').submit();
			});
		});
</script>
</head>
<body>
	<nav class="navbar navbar-default navbar-fixed-top">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
					aria-expanded="false">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="/day06/"> <img alt="Brand"
					src="/day06/imgs/logo.png">
				</a>
			</div>
			<!-- menu header end -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li><a href="/day06/">HOME</a></li>
					<li><a href="/day06/intro">INTRO</a></li>
					<li class="dropdown active"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">BBS<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="/day06/bbs">LIST</a></li>
							<li role="separator" class="divider"></li>
							<li><a href="/day06/bbs/add">ADD</a></li>
						</ul></li>
				</ul>
			</div>
		</div>
		<!-- menu container-fluid end -->
	</nav>
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-12">
				<div class="jumbotron">
					<h1>DETAIL PAGE</h1>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<form class="form-horizontal" method="post">
				<input type="hidden" id="method" name="_method" value="put" />
					<div class="form-group">
						<label for="num" class="col-sm-2 control-label">글번호</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="num"
								value="${bean.num }" name="num" readonly="readonly">
						</div>
					</div>
					<div class="form-group">
						<label for="cnt" class="col-sm-2 control-label">조회수</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="cnt"
								value="${bean.cnt }" name="cnt" disabled="disabled">
						</div>
					</div>
					<div class="form-group">
						<label for="nalja" class="col-sm-2 control-label">날짜</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="nalja"
								value="${bean.nalja }" name="nalja" disabled="disabled">
						</div>
					</div>
					<div class="form-group">
						<label for="sub" class="col-sm-2 control-label">제목</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="sub"
								value="${bean.sub }" name="sub" readonly="readonly">
						</div>
					</div>
					<div class="form-group">
						<label for="name" class="col-sm-2 control-label">글쓴이</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="name"
								value="${bean.name }" name="name" readonly="readonly">
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<textarea class="form-control" name="content" id="content" readonly="readonly">${bean.content }</textarea>
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<button type="submit" class="btn btn-primary">SUBMIT</button>
							<button type="reset" class="btn btn-default">RESET</button>
							<button type="button" class="btn btn-default">수정</button>
							<button type="button" class="btn btn-danger">삭제</button>
						</div>
					</div>
				</form>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<address>
					<strong>(주)비트컴퓨터 서초본원</strong><br> 비트캠프 서울시 서초구 강남대로 459 (서초동,
					백암빌딩)<br> <abbr title="Phone">P:</abbr> 02-3486-9600
				</address>

				<address>
					<strong>Copyright &copy; 비트캠프 All rights reserved.</strong><br>
					<a href="mailto:bit01class@gmail.com">bit01class@gmail.com</a>
				</address>
			</div>
		</div>
	</div>
</body>
</html>