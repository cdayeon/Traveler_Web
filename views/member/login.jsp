<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%@include file ="/WEB-INF/views/main/header.jsp" %>

<!-- === 폰트 === -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<!-- === 폰트 === --> --%>
<!DOCTYPE html>
<html>
	<%-- <head>
		<meta charset="UTF-8">
		<title>로그인</title>
	
		<style type="text/css">
			.login_body {
				margin: 0;
				font-family: 'Noto Sans KR', sans-serif;
			}
			.login_form {
				width: 100%;
				height: 515px;
				margin: 0;
				position: relative;
			}
			.login_box {
				width: 400px;
				height: 80px;
				position: absolute;
				top: 200px;
				left: 520px;
				padding-top: 50px;
			}
			#login_button1{
				width: 170px;
				height: 40px;
				background-color: black;
				border: none;
				border-radius: 35px;
				color: white;
				font-size: 16px;
				cursor:pointer;
				margin-left: 20px;
			}
			#login_button2{
				width: 170px;
				height: 40px;
				background-color: black;
				border: none;
				border-radius: 35px;
				color: white;
				font-size: 16px;
				cursor:pointer;
				margin-left: 20px;
			}
			#login_button1:hover {
				background-color: #A9A9A9;
				transition: 0.4s;
				color: black;
			}
			#login_button2:hover {
				background-color: #A9A9A9;
				transition: 0.4s;
				color: black;
			}
		</style>
	</head>
	<body class="login_body">
		<!-- 버튼 2개 제작 -> 어드민 로그인과 통상 로그인 두개 버튼 만들어서 각기 위치로 이동. -->
		<!-- 이미지등의 삽입등의 디자인 수정은 추후에. -->
		<form class="login_form">
			<div class="login_box">
				<input id="login_button1" type="button" value="일반 로그인" onclick="location.href='nomal_login.do'">
				<input id="login_button2" type="button" value="관리자 로그인" onclick="location.href='admin_login.do'">
			</div>
		</form>
		<%@include file ="/WEB-INF/views/main/footer.jsp" %>
	</body> --%>
</html>