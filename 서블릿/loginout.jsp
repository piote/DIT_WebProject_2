<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>Login/out</title>
</head>
<body>
	<div class="container">
		<h2>로그인과 로그아웃</h2>
		<hr>
	
	<form action="login" method="post">
		<div class="row" style="width: 750px">
		
			<div class="col-1">
				<div class="row">
					<div class="col-12">ID</div>
				</div>
				<div class="row">
					<div class="col-12">PW</div>
				</div>
			</div>
			
			<div class="col-3">
				<div class="row">
					<div class="col-12">
						<input type="text" name = "id">
					</div>
				</div>
				<div class="row">
					<div class="col-12">
						<input type="password" name = "pw">
					</div>
				</div>
			</div>
			
			<div class="col-2">
				<div class="row">
					<div class="col-12">
						<input type="submit" class="btn btn-primary" style="width: 80px; height: 60px" value = "제출">
					</div>
				</div>
			</div>
		 </div>
		
	</form>
	</div>
</body>
</html>