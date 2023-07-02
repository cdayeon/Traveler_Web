<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!-- === 폰트 === -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<!-- === 폰트 === -->
<!DOCTYPE html>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<html>
	<head>
		<meta charset="UTF-8">
		<script src="${path}/resources/js/httpRequest.js"></script>
		<link href="${path}/resources/css/footer.css" rel="stylesheet" type="text/css">
	</head>
	<body class="footer_body">
		<footer>
			<div class="footer-container" style="list-style:none;">
				<h4>제휴업체를 맺은 다른 사이트들을 SNS에서 만나보세요!</h4>
					<ul>
						<li class="sns-icon">
							<a href="https://post.naver.com/korea_diary" class="blog1"><img src="resources/img/blog.jpg" style="width: 40px; height: 40px;"></a>
							<a href="https://post.naver.com/korea_diary" class="blog2"><img src="resources/img/blog2.jpg" style="width: 40px; height: 40px;"></a>
						</li>
						<li class="sns-icon">
							<a href="https://www.facebook.com/9suk9suklive" class="facebook1"><img src="resources/img/facebook.jpg" style="width: 40px; height: 40px;"></a>
							<a href="https://www.facebook.com/9suk9suklive" class="facebook2"><img src="resources/img/facebook2.jpg" style="width: 40px; height: 40px;"></a>							
						</li>
						<li class="sns-icon">
							<a href="https://twitter.com/kor_visitkorea" class="twitter1"><img src="resources/img/twitter.jpg" style="width: 40px; height: 40px;"></a>
							<a href="https://twitter.com/kor_visitkorea" class="twitter2"><img src="resources/img/twitter2.jpg" style="width: 40px; height: 40px;"></a> 							
						</li>
						<li class="sns-icon">
							<a href="https://story.kakao.com/ch/visitkorea/" class="kakaostory1"><img src="resources/img/kakaostory.jpg" style="width: 40px; height: 40px;"></a>
							<a href="https://story.kakao.com/ch/visitkorea/" class="kakaostory2"><img src="resources/img/kakaostory2.jpg" style="width: 40px; height: 40px;"></a>
						</li>
						<li class="sns-icon">
							<a href="https://www.instagram.com/kto9suk9suk/" class="instagram1"><img src="resources/img/instagram.jpg" style="width: 40px; height: 40px;"></a>
							<a href="https://www.instagram.com/kto9suk9suk/" class="instagram2"><img src="resources/img/instagram2.jpg" style="width: 40px; height: 40px;"></a>
						</li>
					</ul>
			<ul align="center" style="list-style:none; font-size: 12px;">
				<li><a href="info.do">개인정보처리방침</a></li>
				<li><a href="info2.do">이용약관</a></li>
				<li><a href="https://kto.visitkorea.or.kr/kor/helpDesk/copyrightGuide.kto">저작권정책</a></li>
				<li><a href="https://knto.or.kr/index#">고객서비스현장</a></li>
				<li><a href="https://kto.visitkorea.or.kr/kor/helpDesk/policy/emailRejection.kto">전자우편무단수집거부</a></li>
				<li><a href="https://knto.or.kr/index">찾아오시는 길</a></li>
			</ul>
			<h4 align="center" style="font-size:6px; color:gray;">우)21394인천광역시 부평구 시장로 7 5층   TEL : 032-262-5890   사업자등록번호 : 333-87-02608   통신판매업번호 : 제 2021-인천부평-2497호</h4>
			</div>
		</footer>
	</body>
</html>