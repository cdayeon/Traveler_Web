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
		<title>비밀번호찾기</title>
		
		<script type="text/javascript">
		
			function change_pw() {
				
				var pw = f.pw.value.trim();
				var c_pw = f.c_pw.value.trim();
				var member_idx = f.member_idx.value.trim();
				
				//유효성 체크
				if(pw==''){
					alert('바꿀 비밀번호를 입력해주세요.');
					return;
				}
				
				if(pw!=c_pw){
					alert('입력한 비밀번호가 일치하지 않습니다!');
					return;
				}
				
				f.submit();
			
			}
		</script>
		
		<style type="text/css">
		.show_pw_body{
			margin: 0;
			font-family: 'Noto Sans KR', sans-serif;
		}
		.show_pw_form{
			width: 500px;
			height: 200px;
			margin: 0 auto;
		}
		.show_pw_table{
			border: none;
			margin-top: 10px;
		}
		.show_pw_td{
			width: 200px;
			height: 30px;
		}
		.show_pw_input{
			width: 100%;
			height: 100%;
			border-radius: 35px;
			border: 1px solid gray;
		}
		#update_pw_btn{
			width: 100%; 
			height: 100%;
			border-radius: 35px;
			border: none;
			background-color: #D8D8D8;
			color: black;
			font-size: 16px;
			cursor:pointer;
		}
		#update_pw_btn:hover {
			background-color: #696969;
			transition: 0.4s;
			color: white;
		}
		</style>
	</head>
	<body class="show_pw_body">
		<!-- 비밀번호 찾기-> 업데이트 형식으로 수정하기. -->
		<form class="show_pw_form" name="f" method="POST" action="change_pw.do">
			<input type="hidden" name="member_idx" value="${idx}" >
			<table class="show_pw_table" align="center">
				<tr>
					<th>비밀번호 변경</th>
					<td class="show_pw_td"><input class="show_pw_input" name="pw" type="password"></td>
				</tr>
				<tr>
					<th>비밀번호 변경 확인 </th>
					<td class="show_pw_td"><input class="show_pw_input" name="c_pw" type="password"></td>
				</tr>
				<tr>
					<td colspan="2" class="show_pw_td">
						<input id="update_pw_btn" type="button" value="비밀번호 변경" onclick="change_pw()" > 
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>