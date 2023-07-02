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
		<title>아이디찾기</title>
		<script src="resources/js/httpRequest.js"></script>
		<script type="text/javascript">
				function find(f) {
				//id를 찾기 위해 이름, 전화번호를 입력하고 입력받은 데이터를 넘겨주는 역할. 
				
				var name = f.name.value.trim();
				var tel = f.tel.value.trim();
				
				if(name==''){
					alert('이름 정보는 필수 입니다.');
					return;
				}
				if(tel==''){
					alert('전화번호 정보는 필수 입니다.');
					return;
				}
				
				var url="";
				var windowTargetName="Find_ID";
				var features="width=350, height=120, left=100, right=50, location=no, resizable=no";
				window.open(url, windowTargetName, features);
				f.method="POST";
				f.action="f_id.do"
				f.target=windowTargetName;
				f.submit();
		
		
				
				/* window.open("Mid_find2.jsp","아이디 찾기","width=400, height=300, left=100, right=50");*/
			}
			
		</script>
		<style type="text/css">
			.find_id_body{
				margin: 0;
				font-family: 'Noto Sans KR', sans-serif;
			}
			.find_id_form{
				width: 100%;
				height: 515px;
				margin: 0;
				position: relative;
			}
			.find_id_tit{
				padding-top: 5px;
				padding-bottom: 5px;
				width: 130px;
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
			#find_id_table{
				width: 500px;
				height: 200px;
				position:absolute;
				top: 200px;
				left: 455px;
				box-shadow: 2px 3px 5px 0px;
				border-radius: 10px;
			}
			.find_id_th{
				border: none;
				margin-top: 10px;
				font-size: 20px;
				width: 120px;
				padding-left: 20px;
			}
			.find_id_td{
				border: none;
				margin-top: 10px;
				font-size: 20px;
				width: 300px;
				padding: 0;
			}
			.find_id_input{
				width: 200px;
				height: 30px;
				border-radius: 30px;
				border: 1px solid gray;
				margin-left: 10px;
			}
			.find_id_btn{
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
			.find_id_btn:hover {
				background-color: #696969;
				transition: 0.4s;
				color: white;
			}
		</style>
	</head>
	<body class="find_id_body">
		<form class="find_id_form">
			<h1 class="find_id_tit">아이디 찾기</h1>
			<table border="1" id="find_id_table">
				<tr>
					<th class="find_id_th">이름</th>
					<td class="find_id_td"><input class="find_id_input" name="name"></td>
				</tr>
				<tr>
					<th class="find_id_th">전화번호</th>
					<td class="find_id_td"><input class="find_id_input" name="tel"></td>
				</tr>
				<tr>
					<td colspan="5" class="find_id_td" align="center">
						<input class="find_id_btn" type="button" value="아이디 찾기" onclick="find(this.form)">
					</td>
				</tr>
			</table>
		</form>
	<%@include file ="/WEB-INF/views/main/footer.jsp" %>
	</body>
</html>