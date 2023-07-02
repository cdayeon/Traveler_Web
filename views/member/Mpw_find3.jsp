<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
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
			function nomal_login() {
				opener.location.href='nomal_login.do';
				window.close();
			}
		</script>
		
		<style type="text/css">
			.update_pw{
				margin: 0;
				font-family: 'Noto Sans KR', sans-serif;
			}
			.updated_pw_form{
				width: 500px;
				height: 200px;
				margin: 0 auto;
			}
			.updated_pw_table{
				margin-top: 10px;
			}
			.updated_pw_tr{
				margin-bottom: 10px;
			}
			#pw_close_btn{
				width: 50px;
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
		
		</style>
	</head>
	<body class="update_pw">
		<form class="updated_pw_form">
			<table class="updated_pw_table" align="center">
				<tr class="updated_pw_tr">
					<th>변경이 완료되었습니다.</th>
				</tr>
				<tr>
					<td>
						<input id="pw_close_btn" type="button" value="닫기" onclick="nomal_login()">
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>