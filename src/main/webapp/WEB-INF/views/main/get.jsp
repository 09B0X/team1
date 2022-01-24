<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%--<%@ taglib prefix="b" tagdir="/WEB-INF/tags/movie"%> --%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="stylesheet" href="<%=request.getContextPath()%>/resource/css/icon/css/all.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

<title>Home</title>
<style>
	body {
		background-color: black;
		background: linear-gradient(
            to left,
            rgba(20, 20, 20, 0) 10%,
            rgba(20, 20, 20, 0.25) 25%,
            rgba(20, 20, 20, 0.5) 50%,
            rgba(20, 20, 20, 0.75) 75%,
            rgba(20, 20, 20, 1) 100%
          ), url(${staticUrl }/ThumbNail/${movie.thumbNail });
		background-size: cover;
		/* filter: blur(3px);
		opacity: 0.5; */
	}
	
	.container {
		margin-top: 500px;
		background-color: rgba(0,0,0,0);
	}
	
	h1, p {
		color: silver;
		font-weight: bold;
		text-shadow:1.5px 1.5px 1px #000;
	}
	
	#content {
		margin-top: 40px;
		margin-bottom: 50px;
	}
	
	p {
		margin-right: 100px;
		margin-bottom: 5px;
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
		color:white;
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
	.rating{
	position:fixed;
	margin:10px;
	padding:0px;
	top:60px;
	z-index: 10;
	right:400px;
	}
</style>
</head>
<body>
<div class="menu">
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
	
	<div class="container">
		<h1>${movie.title }</h1>
		<p id="content">${movie.content }</p>
		<p>출연: ${actor }</p>
		<p>장르: ${kategories }</p>
		
	</div>

	<ul class="rating">
		<li>
		<a  href="https://${movie.platform }.com">
		<img src="${staticUrl}/Logos/${movie.platformimg}"width=90 height=45></li>
		</a>
		<li><select name="ratings" class="select" id="rate">
			<option value="1">★</option>
			<option value="2">★★</option>
			<option value="3">★★★</option>
			<option value="4">★★★★</option>
			<option value="5">★★★★★</option>
		</li>
		<li>
			<input type="button" name="save" id="save" value="등록">
		</li>
	</ul>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
<script>
		
</body>
</html>
