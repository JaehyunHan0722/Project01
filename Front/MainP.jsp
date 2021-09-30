<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
		<style type="text/css">
			#outer1{
				height: 100px;
			}
			#outer2{
				height: 500px
			}
			#mydiv1{
				width: 15%;
				float: left;
			}
			#mydiv2{
				width: 250px;
				float: left;
			}
			#mydiv3{
				width: 15%;
				float: right;
			}
			.reviewbody{
				margin-top: 50px;
				float: left;
			}
			#menu {
				width: 15%;
				margin-right: 50px;
				float: left;
				
			}
		</style>
	</head>
	<body>
		<div class="container">
		<jsp:include page="../template/navbar.jsp"></jsp:include>
			<!-- <div id="outer1">
				<button type="button" class="btn" id="mydiv1">사이트이름</button>
				<button type="button" class="btn" id="mydiv3">로그인/회원가입</button>
			</div> -->
			
			<div class="container">
			  <h1 >무엇이 땡기세요??</h1>
			  <form action="/action_page.php">
			    <div class="input-group">
			      <input type="text" class="form-control" placeholder="키워드 검색" name="search">
			      <div class="input-group-btn">
			        <button class="btn btn-default" type="submit"><i class="glyphicon glyphicon-search"></i></button>
			      </div>
			    </div>
			  </form>
			</div>
			
			
			<div id="outer2">
				<div id="menu">
					<nav class="navbar bg-light" >
					  <ul class="navbar-nav">
					    <li class="nav-item">
					      <a class="nav-link" href="#">지역별 검색</a>
					    </li>
					  </ul>
					</nav>
					<nav class="navbar bg-light" >
					  <ul class="navbar-nav">
					    <li class="nav-item">
					      <a class="nav-link" href="#">메뉴별 검색</a>
					    </li>
					  </ul>
					</nav>
					<nav class="navbar bg-light" >
					  <ul class="navbar-nav">
					    <li class="nav-item">
					      <a class="nav-link" href="#">위치로 찾기</a>
					    </li>
					  </ul>
					</nav>
				</div>
				
					<div class="container reviewbody">
				  <h2>오늘의 리뷰</h2>
				  <p>회원님들이 직접 추천하는 오늘의 식당은?</p><br>
				  <div class="media">
				    <div class="media-left media-top">
				      <img src="img_avatar1.png" class="media-object" style="width:80px">
				    </div>
				    <div class="media-body">
				      <h4 class="media-heading">식당1</h4>
				      <p>별점1</p>
				      <p>리뷰제목1/작성자 아이디</p>
				      <p>좋아요1</p>
				    </div>
				  </div>
				  <hr>
				  <div class="media">
				    <div class="media-left media-middle">
				      <img src="img_avatar1.png" class="media-object" style="width:80px">
				    </div>
				    <div class="media-body">
				      <h4 class="media-heading">식당2</h4>
				      <p>별점2</p>
				      <p>리뷰제목2/작성자 아이디</p>
				      <p>좋아요2</p>
				    </div>
				  </div>
				  <hr>
				  <div class="media">
				    <div class="media-left media-bottom">
				      <img src="img_avatar1.png" class="media-object" style="width:80px">
				    </div>
				    <div class="media-body">
				      <h4 class="media-heading">식당3</h4>
				      <p>별점3</p>
				      <p>리뷰제목3/작성자 아이디</p>
				      <p>좋아요3</p>
				    </div>
				  </div>
				</div>
			</div>
		</div>
		
		
		
	</body>
</html>