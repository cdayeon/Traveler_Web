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
			function img_upload(f) {
				var image = f.image.value;
				var member_idx = f.member_idx.value;
				
				f.method="POST";
				f.action="img_change.do";
				f.submit();
			}
		
		</script>
		<style type="text/css">
			.update_img_body{
				margin: 0 auto;
				font-family: 'Noto Sans KR', sans-serif;
				width: 500px;
				position: relative;
			}
			.update_img_form{
				width: 100%;
				height: 100%;
				position: absolute;
				top: 0;
				left: 0;
			}
			#update_img_tit{
				width: 200px;
				margin: 10px auto 0;
				text-align: center;
			}
			.update_img{
				width: 200px;
				position: absolute;
				top: 50px;
				left: 160px;
				
			}
			.update_img_btn{
				width: 100px;
				height: 30px;
				border-radius: 30px;
				border: none;
				background-color: #D8D8D8;
				color: black;
				font-size: 16px;
				cursor: pointer;
				position: absolute;
				top: 100px;
				left: 200px;
			}
			.update_img_btn:hover {
				background-color: #696969;
				transition: 0.4s;
				color: white;
			}
			
			
		</style>
	</head>
	<body class="update_img_body">
		<form class="update_img_form" enctype="multipart/form-data">
			<input type="hidden" value="${vo.member_idx}" name="member_idx">
			<p id="update_img_tit">이미지 변경</p>
			<input class="update_img" type="file" name="image">
			<input class="update_img_btn" type="button" value="등록하기" onclick="img_upload(this.form)">
		</form>
	</body>
</html>