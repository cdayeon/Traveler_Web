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
		<title>아이디찾기</title>
		<script type="text/javascript">
			function nomal_login() {
				opener.location.href='nomal_login.do';
				window.close();
			}
			
			function Mpw_find() {
				opener.location.href='Mpw_find.do';
				window.close();
			}
		
		</script>
	
		<style type="text/css">
			.show_id_body{
				margin: 0;
				font-family: 'Noto Sans KR', sans-serif;
			}
			.show_id_table{
				border: none;
				margin-top: 10px;
			}
			.close_btn{
				width: 120px;
				height: 40px;
				border-radius: 35px;
				border: none;
				background-color: #D8D8D8;
				color: black;
				font-size: 16px;
				cursor:pointer;
			}
			.close_btn:hover {
				background-color: #696969;
				transition: 0.4s;
				color: white;
			}
		</style>
	</head>
	<body class="show_id_body">
		<form>
			<table align="center" class="show_id_table">
				<tr>
					<th class="show_id_table">탐색된 계정 : </th>
					<td class="show_id_table">${id}</td>
				</tr>
			</table>
			<!-- 닫는 버튼 만들어야함 + 팝업 닫힐 때 메인페이지를 노말 로그인 화면으로 변경해야함 + 닫는 버튼 누르면 팝업 닫히게해야함. -->
			<table align="center" class="show_id_table">
				<tr>
					<td class="show_id_table">
						<input class="close_btn" type="button" value="로그인 하기" onclick="nomal_login()" >
					</td>			
					<td class="show_id_table">
						<input class="close_btn" type="button" value="비밀번호 찾기" onclick="Mpw_find()">
					</td>			
				</tr>
			</table>
		</form>
	</body>
</html>