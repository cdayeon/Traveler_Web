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
	<title>즐겨차키 로그인</title>
	<script src="resources/js/httpRequest.js"></script>
	<script type="text/javascript">
	
		//ID/비밀번호 유효성 검사
		function userlogin(f) {
			var id = f.id.value.trim();
			var pw = f.pw.value.trim();
			
			if(id==''){
				alert('아이디를 입력해주세요.');
				return;
			}
			if(pw==''){
				alert('비밀번호를 입력해주세요.');
				return;
			}
			
			var url ='userlogin.do';
			var param="id="+id + "&pw="+pw;
			
			sendRequest(url,param,C_login,"POST");
		}
		//로그인 콜백 메서드
			function C_login() {
				if(xhr.readyState ==4 && xhr.status==200){
					
					var data = xhr.responseText;
					var json = (new Function('return'+data))();
					
					if(json[0].check == 'id_null'){
						alert('해당 아이디는 존재하지 않습니다.');
						return;
					} else if(json[0].check == 'pw_error'){
						alert('비밀번호가 일치하지 않거나 틀립니다.');
						return;
					} else if(json[0].check == 'admin'){
						alert('관리자 입니다.')
						location.href="mainpage.do";
					} else{
						location.href="mainpage.do";
						//나중에 메인화면으로 연결할것.
					}
				}
			}	
	
	</script>
	<style type="text/css">
		.login_body {
			margin: 0;
			font-family: 'Noto Sans KR', sans-serif;
		}
		.login_form{
			width: 100%;
			height: 515px;
			margin: 0;
			position: relative;
		}
		.login_title{
			width: 180px;
			height: 50px;
			font-size: 30px;
			margin: 0 auto;
			position: absolute;
			top: 100px;
			left: 640px;
			box-shadow: 2px 3px 5px 0px;
			border-radius: 35px;
			text-align: center;
			line-height: 50px;
		}
		#login_table{
			width: 600px;
			height: 200px;
			position:absolute;
			top: 180px;
			left: 420px;
			box-shadow: 2px 3px 5px 0px;
			border-radius: 10px;
		}
		.login_th{
			border: none;
			margin-top: 10px;
			font-size: 20px;
			width: 100px;
			padding-left: 20px;
		}
		.login_td{
			border: none;
			margin-top: 10px;
			font-size: 20px;
			width: 300px;
			padding: 0;
		}
		.login_input{
			width: 300px;
			height: 30px;
			border-radius: 30px;
			border: 1px solid gray;
			margin-left: 10px;
			
		}
		#button_table{
			position: absolute;
			top: 400px;
			left: 407px;
			border: none;
		}
		#login_button{
			width: 300px; 
			height: 30px;
			border-radius: 30px;
			border: none;
			background-color: #D8D8D8;
			color: black;
			font-size: 16px;
			cursor: pointer;
			margin-left: 60px;
			padding: 0;
		}
		.bottom_button{
			width: 200px; 
			height: 30px;
			border-radius: 30px;
			border: none;
			background-color: #D8D8D8;
			color: black;
			font-size: 16px;
			cursor: pointer;
		}
		#login_button:hover {
			background-color: #696969;
			transition: 0.4s;
			color: white;
		}
		.bottom_button:hover {
			background-color: #696969;
			transition: 0.4s;
			color: white;
		}
	</style>
		
	
</head>
<body class="login_body">
	<form class="login_form">
		<h1 class="login_title">#즐겨차키</h1>
		<table id="login_table">
			<tr>
				<th class="login_th">아이디</th>
				<td class="login_td">
					<input class="login_input" name="id">
				</td>
			</tr>
			<tr >
				<th class="login_th">비밀번호</th>
				<td class="login_td">
					<input class="login_input" name="pw" type="password">
				</td>
			</tr>
			<tr>
				<td colspan="5" align="center" class="login_td">
					<input id="login_button" type="button" value="로그인" onclick="userlogin(this.form)">
				</td>
			</tr>
		</table>
		<table border="1" id="button_table">
			<tr>
				<td colspan="5" align="center" style="border: hidden;">
					<input class="bottom_button" type="button" value="아이디 찾기" onclick="location.href='Mid_find.do'">
					|
					<input class="bottom_button" type="button" value="비밀 번호 찾기" onclick="location.href='Mpw_find.do'">
					|
					<input class="bottom_button" type="button" value="회원 가입" onclick="location.href='Member_insert.do'">
				</td>
			</tr>
		</table>
			<!-- 배너 및 로고 등의 요소 추가(필요시) -->
	</form>
	<%@include file ="/WEB-INF/views/main/footer.jsp" %>
</body>
</html>