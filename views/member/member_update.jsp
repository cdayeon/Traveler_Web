<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file ="/WEB-INF/views/main/header.jsp" %>
    
<!-- === 폰트 === -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<!-- === 폰트 === -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>회원정보수정</title>
		<script type="text/javascript">
		function update(f) {
			
			var id =f.id.value.trim();
			var pw =f.pw.value.trim();
			var c_pw =f.c_pw.value.trim();
			var name =f.name.value.trim();
			var email =f.email.value.trim();
			var tel =f.tel.value.trim();
			var birth =f.birth.value.trim();
			var member_idx = f.member_idx.value.trim();
			
			if(pw==''){
				alert('비밀번호를 입력해주세요');
				return;
			}
			
			if(c_pw!=pw){
				alert('비밀번호가 다릅니다!');
				return;
			}
			
			if(name==''){
				alert('이름을 입력해주세요.')
				return;
			}
			
			if(tel==''){
				alert('전화번호를 입력해주세요.')
				return;
			}
			
			if(birth==''){
				alert('생년월일을 입력해주세요(6자 혹은 8자)')
				return;
			}
			
			f.method="POST";
			f.action="member_update.do"
			f.submit();
			
		}
		
		</script>
		
		<style type="text/css">
			.member_update_body{
				margin: 0;
				font-family: 'Noto Sans KR', sans-serif;
			}
			.member_update_form{
				width: 100%;
				height: 515px;
				margin: 0;
				position: relative;
			}
			#update_table{
				width: 500px;
				height: 400px;
				position:absolute;
				top: 75px;
				left: 475px;
				box-shadow: 2px 3px 5px 0px;
				border-radius: 10px;
			}
			.update_title{
				width: 170px;
				height: 30px;
				font-size: 20px;
				margin: 0 auto;
				position: absolute;
				top: 30px;
				left: 650px;
				box-shadow: 2px 3px 5px 0px;
				border-radius: 35px;
				text-align: center;
				line-height: 30px;
			}
			.update_th{
				border: none;
				margin-top: 10px;
				font-size: 20px;
				width: 120px;
				padding-left: 20px;
			}
			.update_td{
				border: none;
				margin-top: 10px;
				font-size: 20px;
				width: 300px;
				padding: 0;
			}
			.update_input{
				width: 200px;
				height: 30px;
				border-radius: 30px;
				border: 1px solid gray;
				margin-left: 10px;
			}
			.update_button{
				position: absolute;
				top: 490px;
				left: 477px;
				width: 500px; 
				height: 30px;
				border: none;
				border-radius: 35px;
				background-color: #D8D8D8;
				color: black;
				font-size: 16px;
				cursor: pointer;
			}
			.update_button:hover {
			background-color: #696969;
			transition: 0.4s;
			color: white;
			}	
			</style>
	</head>
	<body class="member_update_body">
		<form class="member_update_form">
			<h1 class="update_title">회원정보수정</h1>
			<table id="update_table">
				<tr>
					<th class="update_th">아이디</th>
					<td class="update_td">
						<input class="update_input" name="id" value="${vo.id }" readonly="readonly">
						<input name="member_idx" value="${vo.member_idx }" type="hidden">
					</td>
				</tr>
				<tr>
					<th class="update_th">비밀번호</th>
					<td class="update_td">
						<input class="update_input" name="pw" type="password">
					</td>
				</tr>
				<tr>
					<th class="update_th">비밀번호 확인</th>
					<td class="update_td">
						<input class="update_input" name="c_pw" type="password">
					</td>
				</tr>
				<tr>
					<th class="update_th">이름</th>
					<td class="update_td">
						<input class="update_input" name="name">
					</td>
				</tr>
				<tr>
					<th class="update_th">E-Mail</th>
					<td class="update_td">
						<input class="update_input" name="email">
					</td>
				</tr>
				<tr>
					<th class="update_th">전화번호</th>
					<td class="update_td">
						<input class="update_input" name="tel">
					</td>
				</tr>
				<tr>
					<th class="update_th">생년월일</th>
					<td class="update_td">
						<input class="update_input" name="birth">
					</td>
				</tr>
			</table>
			<table>
				<tr>
					<td style="border: hidden" align="center" >
						<input class="update_button" type="button" value="수정 하기" onclick="update(this.form)">
						
					</td>
				</tr>
			</table>
		</form>
		<%@include file ="/WEB-INF/views/main/footer.jsp" %>
	</body>
</html>