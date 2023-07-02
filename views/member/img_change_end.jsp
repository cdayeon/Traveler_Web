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
		<title>이미지변경</title>
		<script type="text/javascript">
			function c_end() {
				opener.location.href='mypage.do';
				window.close();
			}
		</script>
		
		<style type="text/css">
			.img_changed_body{
				margin: 0 auto;
				font-family: 'Noto Sans KR', sans-serif;
				width: 500px;
				position: relative;
			}
			#img_changed_btn{
				width: 100px; 
				height: 30px;
				border-radius: 30px;
				border: none;
				background-color: #D8D8D8;
				color: black;
				font-size: 16px;
				cursor: pointer;
				position: absolute;
				left: 200px;
				
			}
			#img_changed_btn:hover {
				background-color: #696969;
				transition: 0.4s;
				color: white;
			}
			
			#img_changed_p{
				width: 100%;
				margin-top: 20px;
				text-align: center;
			}
		</style>
	</head>
	<body class="img_changed_body">
		<p id="img_changed_p">이미지 등록이 완료되었습니다.<br></p>
		<button id="img_changed_btn" type="button" onclick="c_end()">확인</button>
	</body>
</html>