<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
    <title>식당정보</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>

<body>
	<div id = "outer1" >
	<jsp:include page="../template/navbar.jsp"></jsp:include>
	    <div class="container">
	        <h2>식당 기본 정보 노출</h2>
	        <div class="media">
	            <div class="media-body">
	                <p>내용1?</p>
	                <p>내용2?</p><br>
	            </div>
	            
	            <div class="media-right">
	                <img src="img_avatar1.png" class="media-object" style="width:60px">
	            </div>
	        </div>
	        
	        
	        <hr>
	
	        <!-- Right-aligned media object -->
	        <div class="media">
	            <div class="media-body">
	                <h4 class="media-heading">멀티캠퍼스</h4>
	                <p>식당 주소</p>
	                <p>식당 전화번호</p>
	                <p>식당 음식종류(일식 양식 한식?)</p>
	                <p>식당 정보</p>
	
	                
	                
	            </div>
	            <div class="media-right">
	                <img src="img_avatar1.png" class="media-object" style="width:60px">
	            </div>
	        </div>
	    </div>
	</div>
</body>

</html>
