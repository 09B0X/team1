<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="b" tagdir="/WEB-INF/tags/movie"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="stylesheet" href="<%=request.getContextPath()%>/resource/css/icon/css/all.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

<title>Movie</title>
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
</style>
</head>
<body>
	<b:navBar></b:navBar>
	
	<div class="container">
		<h1>${movie.title }</h1>
		<p id="content">${movie.content }</p>
		<p>출연: ${actor }</p>
		<p>장르: ${kategories }</p>
	</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>

</body>
</html>
