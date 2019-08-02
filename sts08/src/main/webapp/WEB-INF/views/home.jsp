<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<meta charset="utf-8">
	<title>Home</title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
	<link rel="stylesheet" type="text/css" href="css/bootstrap-theme.css" />
	<style type="text/css">
		#content img{
			width:300px;
		}
	</style>
	<script type="text/javascript" src="js/jquery-1.12.4.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>
	<script type="text/javascript">
		$(document).ready(function(){
			pageIdx();
			$('nav a').click(function(e){
				//#갱신 없애기
				e.preventDefault();
			});
			$('nav a').eq(0).click(function(e){
				e.preventDefault();
				pageIdx();
			});
			$('nav a').eq(1).click(function(e){
				e.preventDefault();
				pageIdx();
			});
			$('nav a').eq(2).click(function(e){
				e.preventDefault();
				pageIntro();
			});
			$('nav a').eq(4).click(function(e){
				//list
				e.preventDefault();
				getList();
			});
			$('nav a').eq(5).click(function(e){
				//add
				e.preventDefault();
				getAdd();
			});
			//도큐먼트에서 #content table tr td>a 이 요소가 클릭된다면 해당 function을 실행해라
			$(document).on('click','#content table tr td>a',function(e){
				e.preventDefault();

				//
				$.getJSON('json/obj',$(this).attr('href'),function(data){
					myModal();
					$('#myModalLabel').text("수정 페이지");
					//$('#myModal form input').eq(0).val(data.num);
					$('#myModal form input').eq(1).val(data.sub);
					$('#myModal form input').eq(2).val(data.name);
					$('#myModal form textarea').val(data.content);
				});
				$('.modal-footer button').hide().eq(2).show();
			});
		});

		function updateOne(){
			$.ajax({
				url:'',
				type:'put',
				data:idx,
				//dataType:
				success:function(data){
					
				}
			});
		}

		function insertOne(){
			var params = $('#myModal form').serialize();
			$.post('json/add',params,function(){
				$('#myModal form input').val("");
				$('#myModal form textarea').val("");
				getList();
			});
		}

		function myModal(){
			$('#myModalLabel').text("입력 페이지");
			//$('#myModal form input').eq(0).val("");
			$('#myModal form input').eq(1).val("");
			$('#myModal form input').eq(2).val("");
			$('#myModal form textarea').val("");
			var options = {show:true};
			$('#myModal').modal(options);
			$('.modal-footer button').hide().eq(0).show();
			$('.modal-footer button').eq(1).show();
		}
		
		function getAdd(){
			getList();
			myModal();
		}
		
		function getList(){
			$('nav a').eq(1).parent().removeClass('active');
			$('nav a').eq(2).parent().removeClass('active');
			$('nav a').eq(3).parent().addClass('active');

			var eles = $('<h1>리스트 페이지<br><br></h1>');
			var table = $('<table class="table"></table>').appendTo(eles);
			$('<tr></tr>').appendTo(table).append('<th>글번호</th>')
											.append('<th>제목</th>')
											.append('<th>글쓴이</th>')
											.append('<th>조회수</th>');

			$.getJSON('json/list',function(data){
				var arr = data;
			
			//var arr=ajaxList();
			for(var i=0; i<arr.length; i++){
				$('<tr></tr>').appendTo(table).append('<td><a href="idx='+arr[i].num+'">'+arr[i].num+'</a></td>')
												.append('<td><a href="idx='+arr[i].num+'">'+arr[i].sub+'</a></td>')
												.append('<td><a href="idx='+arr[i].num+'">'+arr[i].name+'</a></td>')
												.append('<td><a href="idx='+arr[i].num+'">'+arr[i].cnt+'</a></td>');
			}
			$('#content').html(eles);
			});
		}
		
		function pageIdx(){
			$('nav a').eq(1).parent().addClass('active');
			$('nav a').eq(2).parent().removeClass('active');
			$('nav a').eq(3).parent().removeClass('active');
			var ele = '<img src="imgs/b04.jpg" alt="" class="img-thumbnail" />'
				ele += '<img src="imgs/b05.jpg" alt="" class="img-thumbnail" />'
				ele += '<img src="imgs/b06.jpg" alt="" class="img-thumbnail" />';
			$('#content').html(ele);
		}
		function pageIntro(){
			$('nav a').eq(2).parent().addClass('active');
			$('nav a').eq(1).parent().removeClass('active');
			$('nav a').eq(3).parent().removeClass('active');
			var ele = '<img src="imgs/b01.jpg" alt="" class="img-thumbnail" />'
				ele += '<img src="imgs/b02.jpg" alt="" class="img-thumbnail" />'
				ele += '<img src="imgs/b03.jpg" alt="" class="img-thumbnail" />';
			$('#content').html(ele);
		}
		function ajaxList(){
			var arr;
			
			$.getJSON('json/list',function(data){
				arr = data;
			});
			
			return arr;
		}
	</script>
</head>
<body>
<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">입력 페이지</h4>
      </div>
		<form class="form-horizontal">
<!-- 			<input type="hidden" name="num"/> -->
      	<div class="modal-body">
				<div class="form-group">
					<label for="sub" class="col-sm-2 control-label">제목</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="sub" name="sub"
							placeholder="제목을 입력해주세요">
					</div>
				</div>
				<div class="form-group">
					<label for="name" class="col-sm-2 control-label">글쓴이</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="name" name="name"
							placeholder="글쓴이">
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-10 col-sm-offset-2">
						<textarea class="form-control" placeholder="내용을 입력해주세요" name="content"></textarea>
					</div>
				</div>
		</div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary" data-dismiss="modal" onclick="insertOne()">입력</button>
        <button type="button" class="btn btn-primary" data-dismiss="modal" onclick="">수정</button>
      </div>
	</form>
    </div>
  </div>
</div>

	<nav class="navbar navbar-default navbar-fixed-top">
		<div class="container-fluid">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
					aria-expanded="false">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">비트교육센터</a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li class="active"><a href="#">HOME <span class="sr-only">(current)</span></a></li>
					<li><a href="#">INTRO</a></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">BBS <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">LIST</a></li>
							<li role="separator" class="divider"></li>
							<li><a href="#">ADD</a></li>
						</ul></li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container-fluid -->
	</nav>
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="jumbotron">
					<h1>Hello, world!</h1>
				</div>
			</div>
		</div>
		<div class="row">
			<div id="content" class="col-md-12">
			</div>
		</div>
		<div class="row">
			<div id="footer" class="col-md-12">
				<address>
					<strong>(주)비트컴퓨터 서초본원</strong><br> 비트캠프 서울시 서초구 강남대로 459 (서초동, 백암빌딩)<br> <abbr title="Phone">P:</abbr>
					02-3486-9600
				</address>

				<address>
					<strong>Copyright &copy; 비트캠프 All rights reserved.</strong><br> <a href="mailto:#">bit01class@gmail.com</a>
				</address>
			</div>
		</div>
	</div>
</body>
</html>
