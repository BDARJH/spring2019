<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"  %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
	
	<script src="https://code.jquery.com/jquery-1.12.4.min.js" integrity="sha256-ZosEbRLbNQzLpnKIkEdrPv7lOy9C27hHQ+Xp8a4MxAQ=" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</head>
<body>
	<nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="/">Day05Test</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <form class="navbar-form navbar-right" action="login">
            <div class="form-group">
              <input type="text" name="id" placeholder="Email" class="form-control">
            </div>
            <div class="form-group">
              <input type="password" name="password" placeholder="Password" class="form-control">
            </div>
            <button type="submit" class="btn btn-success">Sign in</button>
          </form>
        </div><!--/.navbar-collapse -->
      </div>
    </nav>

    <!-- Main jumbotron for a primary marketing message or call to action -->
    <div class="jumbotron">
      <div class="container">
        <h1>Detail Page</h1>
        <p>detail</p>
      </div>
    </div>

    <div class="container">
      <!-- Example row of columns -->
		<form class="form-horizontal">
			<div class="form-group">
				<label for="num" class="col-sm-2 control-label">글번호</label>
				<div class="col-sm-3">
					<input type="number" class="form-control" id="num" name="num"
						placeholder="" value="${day05detail.num }">
				</div>
				<label for="nalja" class="col-sm-2 control-label">날짜</label>
				<div class="col-sm-5">
					<input type="Date" class="form-control" id="nalja" name="nalja"
						placeholder="" value="${day05detail.nalja }">
				</div>
			</div>
			<div class="form-group">
				<label for="sub" class="col-sm-2 control-label">제목</label>
				<div class="col-sm-5">
					<input type="text" class="form-control" id="sub"
						placeholder="" value="${day05detail.sub }">
				</div>
				<label for="name" class="col-sm-2 control-label">글쓴이</label>
				<div class="col-sm-3">
					<input type="text" class="form-control" id="name"
						placeholder="" value="${day05detail.name }">
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-10 col-sm-offset-2">
					<textarea class="form-control" id="content" name="content" rows="10">${day05detail.content }</textarea>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-2 col-sm-offset-2">
					<a class="btn btn-default" href="list" role="button">목록</a>
				</div>
				<div class="col-sm-3 col-sm-offset-5">
					<a class="btn btn-danger" href="delete" role="button" style="float: right;">삭제</a>
					<a class="btn btn-primary" href="add" role="button" style="float: right;">수정</a>
				</div>
			</div>
		</form>

		<hr>

      <footer>
        <p>&copy; JINHUI 2019</p>
      </footer>
    </div> <!-- /container -->
</body>
</html>
