<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css" />
<script type="text/javascript" src="../js/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="../js/bootstrap.min.js"></script>
<script type="text/javascript">
//$(document).ready(function() {
	//모달창을 페이지 생성시 바로 호출하고 싶다면
	//$('#myModal').modal({show:true});
//});

	function deleteData(){
		$.post('delete.bit',{idx:${bean.num}},function(){
			window.location.href="list.bit";		
		});
	}
</script>
</head>
<body>
<div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
			<div class="page-header">
				<h1>${bean.num }번째 글<small>(${bean.nalja })</small></h1>
			</div>		
		</div>
	</div>
	<div class="row">
		<div class="col-md-4">
			<a href="list.bit" class="btn btn-default btn-block btn-lg" role="button">리스트</a>
			<a href="add.bit" class="btn btn-default btn-block btn-lg" role="button">글쓰기</a>
		</div>
		<div class="col-md-8">
			<form class="form-horizontal" action="edit.bit" method="post">
				<div class="form-group">
					<label for="sub" class="col-sm-2 control-label">제목</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="sub"
							value="${bean.sub }" name="sub" readonly="readonly" >
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
						<textarea name="content" class="form-control" readonly="readonly">${bean.content }</textarea>
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-5"> 
						<a href="edit.bit?idx=${bean.num }" class="btn btn-primary btn-block" role="button">수정</a>
					</div>
					<div class="col-sm-5"> 
						<button type="button" class="btn btn-danger btn-block" data-toggle="modal" data-target="#myModal">삭제</button>
					</div>
				</div>
			</form>
		</div>
	</div>
	<!-- Modal -->
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h4 class="modal-title" id="myModalLabel">주의</h4>
					</div>
					<div class="modal-body"><p>정말 삭제하시겠습니까?</p></div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
						<button type="button" class="btn btn-danger" onclick="deleteData();">삭제</button>
					</div>
				</div>
			</div>
		</div>
	<!-- Modal -->
	</div>
</body>
</html>