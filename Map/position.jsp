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
		<script type="text/css">
			#mapbox{
				background-color: #a7ccce;
				padding-left: 100px;
				padding-top: 20px;
				padding-bottom: 30px;
				background-image: url("../../images/background.gif");
				background-repeat: no-repeat;
				border: solid white 1px;
				border-radius: 20px;
				overflow: auto;
			}
		</script>
		<title>현재 위치 확인 및 저장시작</title>
	</head>
	<body>
		
			<div id = "outer1" >
			<jsp:include page="../template/navbar.jsp"></jsp:include>
			<jsp:include page="../template/sidebar.jsp"></jsp:include>
		<div class="container">
			<div>
				<h1>지도</h1>
			</div>
				<div class="container" >
			  	 <input type="text" class="form-control" placeholder="리뷰를 작성할 식당을 검색해주세요." name="search">
			  	<table>
				  	<tr>
				  		<th>검색결과</th>
				  	<tr><td><a href="#">식당1</a></td></tr>
				  	<tr><td><a href="#">식당2</a></td></tr>
				  	<tr><td><a href="#">식당3</a></td></tr>
				  	<tr><td><a href="#">식당4</a></td></tr>
				</table>

				</div>
				
			
			
		<div id="outer2">
			
				
		</div>
		</div>
		</div>
		
		
		
	</body>
</html>