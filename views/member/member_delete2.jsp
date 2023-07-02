<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- === 폰트 === -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<!-- === 폰트 === -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>회원탈퇴</title>
		<script type="text/javascript">
			function c_delete() {
				opener.location.href='mainpage.do';
				window.close();
			}
		
		</script>
		
		<style type="text/css">
			.show_delete_body{
				margin: 0 auto;
				font-family: 'Noto Sans KR', sans-serif;
				width: 500px;
				position: relative;
			}
			.show_delete_form{
				position: absolute;
				top: 10px;
				left: 160px;
			}
			#show_delete_button{
				width: 100px; 
				height: 30px;
				border-radius: 30px;
				border: none;
				background-color: #D8D8D8;
				color: black;
				font-size: 16px;
				cursor: pointer;
			}
			#show_delete_button:hover {
				background-color: #696969;
				transition: 0.4s;
				color: white;
			}
		</style>
	</head>
	<body class="show_delete_body">
		<form class="show_delete_form">
			<p align="center">탈퇴가 완료되었습니다.<br></p>
			<p align="center"><button id="show_delete_button" type="button" onclick="c_delete()">확인</button></p>
		</form>
	</body>
</html>