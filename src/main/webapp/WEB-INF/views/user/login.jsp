<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
<style>
	body{
	 background-color: black;	
	}
a:link{
		color:white;
	}
	a:visited{
		color:white;
		display:inline;
	}
	ul{
		display:inline-block;
	}
	li{
		list-style-type: none;
		display:inline-block;
		color:black;
	}
	fmt{
		color:white;
	}
	th{
		color:white;
	}
	.nav-link{
		color:black;
	}
	.container{
		color:white;
	}
	.name{
		color:white;
	}
	.menu{
		display:flex;
		justify-content:center;
	}
	.MR{
		margin-right:350px;
		margin-left:00px;
	}
	.user{
		margin-left:100px;
	}
</style>

<title>Insert title here</title>
</head>
<body><div class="menu">
	<nav class="navbar navbar-expand-lg">
		<ul class="nav-item active">
			<li class="MR nav-item active">
				<a class="nav-link" href="../main/recommend">
				영화 추천
				</a>
			</li>
			<li class="nav-item active">
				<a class="nav-link" href="../movie/list">
				영화 목록
				</a>
			</li>
			<li class="nav-item active">
				<a class="nav-link" href="../actor/actorlist">
				배우 목록
				</a>
			</li>
			<li class="nav-item active">
				<a class="nav-link" href="../main/recommend">
				평론
				</a>
			</li>
			<li class="nav-item active">
				<a class="nav-link" href="../main/recommend">
				자유게시판
				</a>
			</li>
			<li class="user nav-item active">
				<a class="nav-link" href="../user/signup">
				회원가입
				</a>
			</li>
				<li class="nav-item active">
				<a class="nav-link" href="../user/login">
				로그인
				</a>
			</li>
				
		</ul>
		</div>
<b:navBar></b:navBar>
<!-- .container>.row>.col>h1{로그인} -->
<div class="container">
	<div class="row">
		<div class="col">
			<h1>로그인</h1>
            <!-- form>.form-group*2>label[for=input$]+input.form-control[name][required]^button.btn.btn-outline-primary{로그인} -->
            <form method="post">
            	<div class="form-group">
            		<label for="input1">아이디</label>
            		<input type="text" class="form-control" name="id" required>
            	</div>
            	<div class="form-group">
            		<label for="input2">패스워드</label>
            		<input type="password" class="form-control" name="password" required>
            	</div>
            	<button class="btn btn-outline-primary">로그인</button>
            </form>
		</div>
	</div>
</div>

<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
</body>
</html>