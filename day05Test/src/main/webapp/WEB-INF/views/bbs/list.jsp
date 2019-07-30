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
        <h1>LIST Page</h1>
        <p>list</p>
      </div>
    </div>

    <div class="container">
      <!-- Example row of columns -->
      <div class="row">
        <div class="col-md-12">
        	<table class="table table-hover">
        		<thead>
        			<tr>
	        			<th>글번호</th>
	        			<th>제목</th>
	        			<th>글쓴이</th>
	        			<th>날짜</th>
        			</tr>
        		</thead>
        		<tbody>
        			<c:forEach items="${day05list}" var="bean">
        				<tr>
        					<td><a href="detail?num=${bean.num }">${bean.num }</a></td>
        					<td><a href="detail?num=${bean.num }">${bean.sub }</a></td>
        					<td><a href="detail?num=${bean.num }">${bean.name }</a></td>
        					<td><a href="detail?num=${bean.num }">${bean.nalja }</a></td>
        				</tr>
        			</c:forEach>
        		</tbody>
			</table>
        </div>
      </div>
      <div class="row">
        <div class="col-md-6 col-md-offset-3">
          <p><a class="btn btn-primary" href="add" role="button">입력</a></p>
        </div>
      </div>

      <hr>

      <footer>
        <p>&copy; JINHUI 2019</p>
      </footer>
    </div> <!-- /container -->
</body>
</html>
