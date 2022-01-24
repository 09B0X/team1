<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


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
		$("#searchbutton").on('click', function() {
			var search = $("#search").val();
			$(location).attr("href", "get?id=" + getId);

		});
	});
</script>

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
<title>Insert title here</title>
</head>
<body>
	<div class="menu">
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

  <!-- .container>.row>.col>h1{게시물 목록} -->
  <div class="container">
    <div class="row">
      <div class="col">
        <h1>배우 목록</h1>
        <!-- table.table>thead>tr>th*4^^tbody -->
        <table class="table">
          <thead>
            <tr>
              <th></th>
              <th>이름</th>
              <th>생일</th>
              <th></th>
            </tr>
          </thead>
          <tbody>
            <c:forEach items="${list }" var="actor">
              <tr>
                <td><img src="${staticUrl}/Actor/${actor.photoName}"width=100 height=100></td>
                <td class="name">
                  <a href="actor?id=${actor.id}">
                    <c:out  value="${actor.name }" />
                  </a>
                  <!-- 
                  <c:if test="${board.replyCount > 0 }">
                    <i class="far fa-comments"></i> ${board.replyCount }
                  </c:if>
                  <c:out value="${board.nickName }" />
                             -->
               <td class="name">
               		<fmt:formatDate value="${actor.birth }" pattern="yyyy.MM.dd" />
               </td>
               <td>
               	
               	
               </td>              
              </tr>
               
            </c:forEach>
          </tbody>
        </table>
      </div>
    </div>
  </div>
 
</body>
</html>