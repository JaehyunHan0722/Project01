<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>새로운 리뷰 형식</title>
	    <meta charset="utf-8">
	    <meta name="viewport" content="width=device-width, initial-scale=1">
	    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	    
	</head>
	<body>
	
  		
  		<div id = "outer1" >
		<jsp:include page="../template/navbar.jsp"></jsp:include>
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
		
		
			<div class="container">
				<div class="container" >
					<div id="outer2">
						<div class="container" style="float: left">
				 	   	 <h2>Form control: textarea</h2>
			  	    	 <p>The form below contains a textarea for comments:</p>
				    	<form>
				    		<div class="form-group">
				       			<label for="comment">Comment:</label>
				        		<textarea class="form-control" rows="5" id="comment"></textarea>
				        		<div id="test_cnt">(0/100)</div>
				        		<script type="text/javascript">
				        			$(document).ready(function() {
					        		    $('#test').on('keyup', function() {
					        		        $('#test_cnt').html("("+$(this).val().length+" / 100)");
					        		 
					        		        if($(this).val().length > 100) {
					        		            $(this).val($(this).val().substring(0, 100));
					        		            $('#test_cnt').html("(100 / 100)");
					        		        }
					        		    });
					        		});
				        		</script>
				    		</div>
						</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		
	</body>
</html>