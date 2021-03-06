<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resource/css/icon/css/all.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

<script>
	$(document).ready(function() {
		$(".card").on('click', function() {
			var getId = $(this).attr('id');
			$(location).attr("href", "get?id=" + getId);

		});
	});
</script>

<title>Insert title here</title>
<style>
body {
	background-color: black;
}

#title {
	color: white;
}

.card {
	background-color: transparent;
}

.card:hover {
	cursor: pointer;
	background-color: white;
}


.card-group {
    overflow-x: auto;
    white-space: nowrap;
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
</style>
</head>
<body>
<div class="menu">
	<nav class="navbar navbar-expand-lg">
		<ul class="nav-item active">
			<li class="MR nav-item active">
				<a class="nav-link" href="../main/recommend">
				μν μΆμ²
				</a>
			</li>
			<li class="nav-item active">
				<a class="nav-link" href="../movie/list">
				μν λͺ©λ‘
				</a>
			</li>
			<li class="nav-item active">
				<a class="nav-link" href="../actor/actorlist">
				λ°°μ° λͺ©λ‘
				</a>
			</li>
			<li class="nav-item active">
				<a class="nav-link" href="../main/recommend">
				νλ‘ 
				</a>
			</li>
			<li class="nav-item active">
				<a class="nav-link" href="../main/recommend">
				μμ κ²μν
				</a>
			</li>
			<li class="user nav-item active">
				<a class="nav-link" href="../user/signup">
				νμκ°μ
				</a>
			</li>
				<li class="nav-item active">
				<a class="nav-link" href="../user/login">
				λ‘κ·ΈμΈ
				</a>
			</li>
				
		</ul>
		</div>
	<b:navBar></b:navBar>
	
	<div class="container">
		<div class="row">
			<div class="col" id="title">
				<h1>μν λͺ©λ‘</h1>
			</div>
			<div>
				<li>
				<a href="recommendbyd?id=${id }">μ΅μ  μΆμ²</a>
				</li>
				
				<li>
				<a href="recommendbym?kate=sf">μ₯λ₯΄λ‘ μΆμ²</a>
				</li>
				
				<li>
				<a href="recommendbya?id=${id }">λ°°μ°λ‘ μΆμ²</a>
				</li>
			</div>
			<div>
				<a href=""></a>
			</div>
		</div>

		<div class="row row-cols-1 row-cols-md-5">
			<c:forEach items="${movieList }" var="movie">
				<div class="col mb-4">
					<div class="card" id="${movie.id }">
						<img src="${staticUrl }/ThumbNail/${movie.thumbNail }">
						<%-- <div class="card-body">
							<h5 class="card-title">${movie.title }</h5>
							<p class="card-text">
								<small class="text-muted">Last updated 3 mins ago</small>
							</p>
						</div> --%>
					</div>
				</div>
			</c:forEach>
		</div>

	</div>
	
	<c:if test="${not empty result }">
		<div class="modal" tabindex="-1" id="modal1">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title">μ²λ¦¬ κ²°κ³Ό</h5>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<p>${result }</p>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary" data-dismiss="modal">λ«κΈ°</button>
					</div>
				</div>
			</div>
		</div>
	</c:if>

	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>

	<script>
		$(document).ready(function() {
			if (history.state == null) {
				$("#modal1").modal('show');
				history.replaceState({}, null);
			}
		});
	</script>
</body>
</html>