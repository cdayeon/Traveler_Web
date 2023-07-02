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
		<title>비밀번호 찾기</title>
		
		<script type="text/javascript">
			function find(f) {
				//아이디,이메일,전화번호 값을 받고, 해당 값이 저장된 idx를 찾아 비밀번호 정보를 수정할 수 있는 페이지로 이동.
				var id = f.id.value.trim();
				var tel = f.tel.value.trim();
				
				if(id==''){
					alert('아이디 정보는 필수 입니다.');
					return;
				}
				if(tel==''){
					alert('전화번호 정보는 필수 입니다.');
					return;
				}
				
				var url="";
				var windowTargetName="Find_PW";
				var features="width=480, height=140, left=100, right=50, location=no, resizable=no";
				window.open(url, windowTargetName, features);
				f.method="POST";
				f.action="f_pw.do"
				f.target=windowTargetName;
				f.submit();
			}
		</script>
		
		<style type="text/css">
			.find_pw_body{
				margin: 0;
				font-family: 'Noto Sans KR', sans-serif;
				
			}
			.find_pw_form{
				width: 100%;
				height: 515px;
				margin: 0;
				position: relative;
			}
			.find_pw_tit{
				padding-top: 5px;
				padding-bottom: 5px;
				width: 150px;
				height: 30px;
				font-size: 20px;
				margin: 0 auto;
				position: absolute;
				top: 130px;
				left: 643px;
				box-shadow: 2px 3px 5px 0px;
				border-radius: 35px;
				text-align: center;
				line-height: 30px;
			}
			#find_pw_table{
				width: 500px;
				height: 200px;
				position:absolute;
				top: 200px;
				left: 455px;
				box-shadow: 2px 3px 5px 0px;
				border-radius: 10px;
			}
			.find_pw_th{
				border: none;
				margin-top: 10px;
				font-size: 20px;
				width: 120px;
				padding-left: 20px;
			}
			.find_pw_td{
				border: none;
				margin-top: 10px;
				font-size: 20px;
				width: 300px;
				padding: 0;
			}
			.find_pw_input{
				width: 200px;
				height: 30px;
				border-radius: 30px;
				border: 1px solid gray;
				margin-left: 10px;
			}
			.find_pw_btn{
				width: 200px;
				height: 30px;
				border: none;
				border-radius: 35px;
				background-color: #D8D8D8;
				color: black;
				font-size: 16px;
				cursor: pointer;
				margin-left: 50px;
				padding: 0;
			}
			.find_pw_btn:hover {
				background-color: #696969;
				transition: 0.4s;
				color: white;
			}
		</style>
	</head>
	<body class="find_pw_body">
		<form class="find_pw_form">
			<h1 class="find_pw_tit">비밀번호 찾기</h1>
			<table id="find_pw_table">
				<tr>
					<th class="find_pw_th">아이디</th>
					<td class="find_pw_td">
						<input class="find_pw_input" name="id">	
					</td>
				</tr>
				<tr>
					<th class="find_pw_th">전화번호</th>
					<td class="find_pw_td">
						<input class="find_pw_input" name="tel">	
					</td>
				</tr>
				<tr>
					<td colspan="5" class="find_pw_td" align="center">
						<input id="button" class="find_pw_btn" type="button" value="비밀번호 찾기" onclick="find(this.form)">
					</td>
				</tr>
			</table>
		</form>
	<%@include file ="/WEB-INF/views/main/footer.jsp" %>
	</body>
</html>