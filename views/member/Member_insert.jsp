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
		<title>회원가입</title>
		<script src="resources/js/httpRequest.js"></script>
		<script type="text/javascript">
			//중복체크 확인용
			var id_check=false;
			//어드민 확인용
			var admin = "admin";
			function check() {
				//중복체크
				var id = document.getElementById("id").value.trim();
				if(id == 'admin') {
					alert('사용할 수 없는 아이디 입니다.');
					return;
				}
				/* if(id.indexOf(admin) !== -1){
					alert('admin이 들어가는 아이디는 사용할 수 없습니다!')
					alert('관리자 계정은 DB에서 추가해주세요.')
					//어드민 계정은 DB에서 추가하기.
					return;
				} */
				if(id==''){
					alert('아이디를 입력해주세요.');
					return;
				}
					var url = "id_check.do";
					var param= "id="+encodeURIComponent(id);
					
					sendRequest(url,param,C_id,"POST");	
			}//check end
			
			function C_id() {
				if(xhr.readyState==4&&xhr.status==200){
				
					var data = xhr.responseText;
					var json = (new Function('return'+data))();
					
					if(json[0].res=='no'){
						alert('이미 사용중인 아이디입니다.');
						return;
					}else{
						alert('사용 가능한 아이디 입니다.');
						id_check=true;
					}
				}
			}//c_id end
			
			function recheck() {
				id_check=false;
			}
			
			function insert(f) {
				
				var id =f.id.value.trim();
				var pw =f.pw.value.trim();
				var c_pw =f.c_pw.value.trim();
				var name =f.name.value.trim();
				var email =f.email.value.trim();
				var tel =f.tel.value.trim();
				var birth =f.birth.value.trim();
				
				if(id==''){
					alert('아이디를 입력해주세요.');
					return;
				}
				
				if(!id_check){
					alert('아이디 중복여부를 확인해주세요!')
					return;
				}
				
				if(pw==''){
					alert('비밀번호를 입력해주세요');
					return;
				}
				if(c_pw == '') {
					alert('비밀번호를 확인해주세요');
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
				if(email==''){
					alert('이메일을 입력해주세요.')
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
				f.action="insert.do"
				f.submit();
				
			}
		</script>
	
		<style type="text/css">
		
			.member_insert_body{
				margin: 0;
				font-family: 'Noto Sans KR', sans-serif;
			}
			.member_insert_form{
				width: 100%;
				height: 515px;
				margin: 0;
				position: relative;
			}
			.login_title{
				width: 130px;
				height: 30px;
				font-size: 20px;
				margin: 0 auto;
				position: absolute;
				top: 40px;
				left: 643px;
				box-shadow: 2px 3px 5px 0px;
				border-radius: 35px;
				text-align: center;
				line-height: 30px;
			}
			#insert_table{
				width: 500px;
				height: 400px;
				position:absolute;
				top: 70px;
				left: 455px;
				box-shadow: 2px 3px 5px 0px;
				border-radius: 10px;
			}
			.insert_th{
				border: none;
				margin-top: 10px;
				font-size: 20px;
				width: 120px;
				padding-left: 20px;
			}
			.insert_td{
				border: none;
				margin-top: 10px;
				font-size: 20px;
				width: 300px;
				padding: 0;
			}
			.insert_input{
				width: 200px;
				height: 30px;
				border-radius: 30px;
				border: 1px solid gray;
				margin-left: 10px;
			}
			.insert_id_check{
				width: 100px;
				height: 30px;
				font-size: 16px;
				border: none;
				border-radius: 35px;
				background-color: #D8D8D8;
				cursor: pointer;
			}
			.insert_button{
				position: absolute;
				top: 480px;
				left: 457px;
				width: 500px; 
				height: 30px;
				border: none;
				border-radius: 35px;
				background-color: #D8D8D8;
				color: black;
				font-size: 16px;
				cursor: pointer;
			}
			.insert_id_check:hover {
				background-color: #696969;
				transition: 0.4s;
				color: white;
			}
			.insert_button:hover {
				background-color: #696969;
				transition: 0.4s;
				color: white;
			}
		</style>
	</head>
	<body class="member_insert_body">
		<form class="member_insert_form">
			<h1 class="login_title">회원가입</h1>
			<table id="insert_table">
				<tr>
					<th	class="insert_th">아이디</th>
						<td class="insert_td">
							<input class="insert_input" name="id" id="id" onchange="recheck()">
							<input class="insert_id_check" type="button" value="중복 체크" onclick="check()">
						 <!-- id중복체크 여부 확인 -->
						</td>
				</tr>
				<tr>
					<th class="insert_th">비밀번호</th>
						<td class="insert_td">
							<input class="insert_input" name="pw" type="password">
						</td>
				</tr>
							<tr>
					<th class="insert_th">비밀번호 확인</th>
						<td class="insert_td">
							<input class="insert_input" name="c_pw" type="password">
						</td>
				</tr>
				<tr>
					<th class="insert_th">이름</th>
						<td class="insert_td">
							<input class="insert_input" name="name">
						</td>
				</tr>
				<tr>
					<th class="insert_th">E-Mail</th>
						<td class="insert_td">
							<input class="insert_input" name="email">
						</td>
				</tr>
				<tr>
					<th class="insert_th">전화번호</th>
						<td class="insert_td">
							<input class="insert_input" name="tel">
						</td>
				</tr>
				<tr>
					<th class="insert_th">생년월일</th>
						<td class="insert_td">
						 	<input class="insert_input" name="birth">
						</td>
				</tr>
			</table>
			<table>
				<tr>
					<td style="border: hidden" align="center" >
						<input class="insert_button" type="button" value="가입 하기" onclick="insert(this.form)">
					</td>
				</tr>
			</table>
		</form>
		<%@include file ="/WEB-INF/views/main/footer.jsp" %>
	</body>
</html>