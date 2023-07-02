<%@page import="vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
		<title>마이페이지</title>
		<link rel="stylesheet" href="resources/css/mypage.css" />
		<script src="resources/js/httpRequest.js"></script>
		<script type="text/javascript" src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
		
		<script type="text/javascript">
			//회원 탈퇴
			function m_delete_pass(f) {
				
				var id = f.id.value.trim();	
				var url="";
				var windowTargetName="m_delete_pass";
				var features="width=480, height=200, left=100, right=50, location=no, resizable=no";
				window.open(url, windowTargetName, features);
				f.method="POST";
				f.action="m_delete_pass.do"
				f.target=windowTargetName;
				f.submit();
			}
			
			function my_img() {
				
				var url="my_img.do";
				var windowTargetName="m_delete_pass";
				var features="width=320, height=180, left=100, right=50, location=no, resizable=no";
				window.open(url, windowTargetName, features);
				target=windowTargetName;
			}
		</script>
	</head>
	<body class="mypage_body">
		<div class="mypage_cont">
			<div class="mybox">
		 	<div id="myimg" >
			 	<c:set var="filename" value="${m_ivo.filename}" />
			 	<c:choose>
			 		<c:when test="${empty filename}">
				 		<p>	<img id="img" alt="image" src="${pageContext.request.contextPath }/resources/img/myimg_icon.png"> </p>
			 		</c:when>
					<c:when test="${filename ne 'null'}">
						<p> <img id="img" alt="image" src="${pageContext.request.contextPath }/resources/my_img/${m_ivo.filename}"> </p>
					</c:when>
			 	</c:choose>
		 	</div>
		 	<div id="mypage_name"> ${vo.name}</div>
		 	<div id=myid>
		 		<form class="button_form">
			 		<input name="id" type="hidden" value="${vo.id }">
			 		<input id="member_update" type="button" value="회원 정보 수정" onclick="location.href='m_update.do'">	
			 		<input id="member_delete" type="button" value="회원 탈퇴" onclick="m_delete_pass(this.form)" >
			 		<br><br>
			 		<input id="myimg_button" type="button" value="프로필 이미지 변경" onclick="my_img()"> 
		 		</form>
		 	</div>
		 </div>
		 
		 <div class="banner_outline">
		 		<div class="banner_list">
		 		 	<button type="button" onclick="location.href='#';" style='cursor:pointer;'><img src="resources/img/1.jpg" width="600px"></button>
		 		</div>
		 		<div class="banner_list">
		 		 	<button type="button" onclick="location.href='#';" style='cursor:pointer;'><img src="resources/img/2.jpg" width="600px"></button>
		 		</div>
		 		 <div class="banner_list">
		 		 	<button type="button" onclick="location.href='#';" style='cursor:pointer;'><img src="resources/img/4.jpg" width="600px"> </button>
		 		</div>
		 		 <div class="banner_list">
		 		 	<button type="button" onclick="location.href='#';" style='cursor:pointer;'><img src="resources/img/5.jpg" width="600px"> </button>
		 		</div>
		 		<div class="banner_list">
		 		 	<button type="button" onclick="location.href='#';" style='cursor:pointer;'><img src="resources/img/7.jpg" width="600px"></button>
		 		</div>
				<div>
		 			<button class="banner_button button_left" type="button"><img alt="좌측버튼" src="resources/img/qna_left.png"></button>
		 			<button class="banner_button button_right" type="button"><img alt="우측버튼" src="resources/img/qna_right.png"></button>
		 		</div>
		 		<ul id="ul1" class="banner_pagination"></ul>
		 </div>
		
		<div class="my_menu">
			<span class="my_tit">마이페이지</span>
			<button class="my_button1" type="button" onclick="location.href='my_qna.do'">Q&A</button>
			<button class="my_button2" type="button" onclick="location.href='likeit_list.do'">찜목록</button>
		</div>
		</div>
		<script src="resources/js/banner.js"></script>
		<%@include file ="/WEB-INF/views/main/footer.jsp" %>
	</body>
</html>