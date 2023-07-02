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
			function m_delete(f) {
			
				var id = f.id.value.trim();
				f.method="POST";
				f.action="m_delete.do";
				f.submit();
			}
		</script>
		<style type="text/css">
			.delete_body{
				margin: 0 auto;
				font-family: 'Noto Sans KR', sans-serif;
				width: 500px;
				position: relative;
			}
			.delete_form{
				position: absolute;
				top: 30px;
				left: 50px;
			}	
			#delete_button{
				width: 100px; 
				height: 30px;
				border-radius: 30px;
				border: none;
				background-color: #D8D8D8;
				color: black;
				font-size: 16px;
				cursor: pointer;
			}
			#delete_button:hover {
				background-color: #696969;
				transition: 0.4s;
				color: white;
			}
			#warning{
				width: 5cm;
				height: 5cm;
				opacity: 0.3;
		    	margin: 0 auto;
		    	position: absolute;
				left: 163px;
			}
		</style>
	</head>
	<body class="delete_body">
		<img id="warning" alt="경고" src="resources/img/warning.png">
		<form class="delete_form">
			<input type="hidden" value="${vo.id }" name="id">
			<p align="center">정말로 회원 탈퇴를 진행하시겠습니까?<br></p>
			<p align="center" style="color: red">※해당 내용을 진행 할 시 발생하는 결과는 되돌릴 수 없습니다.<br></p>
			<p align="center"><button id="delete_button" type="button" onclick="m_delete(this.form)"> 탈퇴하기</button></p>
		</form>
	</body>
</html>