<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
<head>
	<title>즐겨차키</title>
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Amatic+SC:wght@700&family=Lilita+One&family=Noto+Sans+KR:wght@100&display=swap" rel="stylesheet">
	<style>
		#main_body{
			margin: 0;
			font-family: 'Noto Sans KR', sans-serif;
		}
		#container{
			width: 100%;
			height: 500px;
			position: relative;
			background-color: rgb(243, 250, 203);
		}
		.sub_tit{
			width: 100px;
			height: 30px;
			background-color: black;
			color: white;
			border-radius: 30px 50px 50px 5px;
			position: absolute;
			top: 230px;
			left: 250px;
			text-align: center;
			font-size: 15px;
			line-height: 28px;
			transition: left .3s ease-out;
		}
		.main_tit{
			width: 370px;
			height: 90px;
			position: absolute;
			top: 300px;
			left: 250px;
			font-size: 33px;
			text-align: justify;
			font-weight: 900;
			transition: left .3s ease-out;
			letter-spacing: -4px;
		}
		
		.main_a{
			position: absolute;
			top: 420px;
			left: 250px;
			text-decoration: underline;
		}
		
		#main_img{
			width: 700px;
			height: 450px;
			border-radius: 10px;
			position: absolute;
			right: 30px;
			top: 130px;
			transition: left .3s ease-out;
		}
		#main_btns{
			position: absolute;
			width: 60px;
			height: 25px;
			top: 40px;
			left: 470px;
			display: inline;
		}
		#prev_btn{
			width: 20px;
			height: 20px;
		}
		#next_btn{
			width: 20px;
			height: 20px;
			padding-left: 10px;
		}
		.page_btn{
			text-decoration: none;
			cursor: pointer;
		}
		#bar{
			margin: 0;
			padding-bottom: 7px;
			width: 10px;
			display: inline-block;
			border-top: 1px solid black;
		}
		#page{
			width: 100%;
			height: 160px;
			position: relative;
		}
		#page_div{
			position: absolute;
			left: 420px;
			top: 37px;
			font-size: 16px;
			font-weight: 600;
		}
		#main_hr{
			position: absolute;
			margin: 0;
			width: 150px;
			left: 250px;
			top: 50px;
		}
		#special_box{
			/* border: 1px solid black; */
			width: 100%;
			height: 700px;
			position: relative;
		}
		#bg{
			width: 100%;
			height: 420px;
		}
		#special_top{
			width: 940px;
			height: 220px;
			top: 0;
			position: absolute;
			margin: 0 270px;
		}
		#sp_subtit{
			width: 110px;
			height: 30px;
			border-radius: 0 0 10px 10px;
			font-size: 15px;
			color: white;
			background-color: #4C4C4C;
			display: flex;
			justify-content: center;
			padding-top: 5px;
		}
		#sp_img{
			position: absolute;
			top: 0;
			right: 0;
		}
		#sp_tit{
			font-size: 36px;
			margin-top: 35px;
			margin-bottom: 0;
			color: #4C4C4C;
		}
		.sp_p{
			font-size: 15px;
			font-weight: 500;
			color: #4C4C4C;
		}
		#special_bottom {
			width: 940px;
			height: 450px;
			position: absolute;
			top: 220px;
			margin-top: 20px;
			margin-left: 250px;
			margin-right: 270px;
			background-color: white;
			border-radius: 10px 10px 10px 10px;
		}
		#bot_tit{
			width: 200px;
			height: 37px;
			margin: 25px auto 25px;
			font-size: 17px;
			background-color: #4C4C4C;
			color: white;
			font-weight: 300;
			border-radius: 50px;
			display: flex;
			justify-content: center;
			line-height: 35px;
		}
		#sp_card{
			list-style: none;
			padding: 0;
			padding-top: 20px;
			display: flex;
		    box-sizing: content-box;
		    justify-content: center;
		}
		.sp_card_list{
			width: 275px;
			height: 300px;
			margin: 0 20px;
		}
		.edition{
			width: 100%;
			height: 300px;
			margin-top: 30px;
			
		}
		.edition_inner{
			width: 980px;
			height: 100%;
			/* border: 1px solid black; */
			margin: 0 270px;
			position: relative; 
		}
		.edition_img{
			width: 450px;
			height: 250px;
			/* border: 1px solid black; */
			border-radius: 30px;
			margin: 20px 0px 20px 30px;
			display: inline;
		}
		.edition_cont{
			margin: 0;
			width: 450px;
			height: 250px;
			/* border: 1px solid black; */
			display: inline-block;
			position: absolute;
			top: 25px;
			right: 15px;
			
		}
		.edition_cont_tit{
			padding: 0 10px 5px 10px;
			font-size: 25px;
			font-weight: 800;
			border-radius: 50px;
			border: 1px dashed gray;
			color: blacd;
		}
		.edition_cont_ul{
			padding: 0;
			margin: 0;
			width: 100%;
			height: 200px;
			list-style: none;
			margin-top: 20px;
			font-size: 17px;
			font-weight: 800;
		}
		.edition_cont_li{
			width: 100%;
			height: 50px;
			margin: 0px 0px 0px 5px;
		}
		.edition_cont_em{
			font-style: normal;
			color: #FF6C6C;
		}
		/* 메인페이지 하단 슬라이드 배너 css */
		.slide {
		  /* layout */
		  display: flex;
		  flex-wrap: nowrap;
		  /* 컨테이너의 내용물이 컨테이너 크기(width, height)를 넘어설 때 보이지 않도록 하기 위해 hidden을 준다. */
		  overflow: hidden;
		
		  /* position */
		  /* slide_button의 position absolute가 컨테이너 안쪽에서 top, left, right offset이 적용될 수 있도록 relative를 준다. (기본값이 static인데, static인 경우 그 상위 컨테이너로 나가면서 현재 코드에선 html을 기준으로 offset을 적용시키기 때문) */
		  position: relative;
		
		  /* size */
		  width: 100%;
		  height: 160px;
		  margin-top: 70px;
		  margin-bottom: 100px;
		  /* slide drag를 위해 DOM요소가 드래그로 선택되는것을 방지 */
		  user-select: none;
		}
		.banner_list {
		  /* layout */
		  display: flex;
		 /*  align-items: center; */
		 /* justify-content: center; */
		
		  /* position - 버튼 클릭시 left offset값을 적용시키기 위해 */
		  position: relative;
		  left: 0px;
		
		
		  /* size */
		  width: 100%;
		  height: 100%;
		  /* flex item의 flex-shrink는 기본값이 1이므로 컨테이너 크기에 맞게 줄어드는데, 슬라이드를 구현할 것이므로 줄어들지 않도록 0을 준다. */
		  flex-shrink: 0;
		
		  /* transition */
		  transition: left 0.15s;
		}
		.slide_tit{
			/* size */
		    width: 230px;
		    height: 30px;
		    
		    /* slide-list 안에서 slide_tit의 position */
		    position: relative;
		    top: 28px;
		    left: 500px;
		    
		     /* font */
		   font-size: 15px;
		   font-weight: 800;
		}
		.slide_cont{
			display:flex;
	
			/* size */
		    width: 300px;
		    height: 60px;
		    
		    /* slide-list 안에서 slide_cont의 position */
		    position: relative;
		    top: 55px;
		    left: 270px;
		    
		    /* font */
		   font-size: 23px;
		   font-weight: 800;
		}
		.slide_img{
			display:flex;
			
			/* size */
			width: 170px;
			height: 100%;
			
			/* slide-list 안에서 slide-img의 position */
		    position: relative;
		    left: 250px;
			
		}
		.slide_button {
		   /* layout */
		   display: flex;
		   justify-content: center;
		   align-items: center;
		
		   /* position */
		   position: absolute;
		   /* 버튼이 중앙에 위치하게 하기위해 계산 */
		   top: calc(50% - 16px);
		
		   /* size */
		   width: 32px;
		   height: 32px;
		
		   /* style */
		   border-radius: 100%;
		   background-color: inherit;
		   cursor: pointer;
		}
		
		.slide_prev_button {
		   left: 10px;
		}
		.slide_next_button {
		   right: 10px;
		}
		/* 각 슬라이드가 변경되는 것을 시각적으로 확인하기 쉽도록 각 슬라이드별 색상 적용 */
		.banner_list.slide1 {
		   background-color: #b2e7c9;
		}
		.banner_list.slide2 {
		   background-color: #caf3ef;
		}
		.banner_list.slide3 {
		   background-color: #f6f6ff;
		}
		/* 페이지네이션 스타일 */
		.slide_ul, .slide_ul li {
		   list-style-type: none;
		   padding: 0;
		   margin: 0;
		}
		.slide_pagination {
		   /* layout */
		   display: flex;
		   gap: 5px;
		
		   /* position */
		   position: absolute;
		   bottom: 0;
		   /* left:50%, translateX(-50%)를 하면 가로 가운데로 위치시킬 수 있다. */
		   left: 50%;
		   transform: translateX(-50%);
		}
		.slide_pagination > li {
		   /* 현재 슬라이드가 아닌 것은 투명도 부여 */
		   color: #7fb5ff88;
		   cursor: pointer;
		   font-size: 25px;
		}
		.slide_pagination > li.active {
		   /* 현재 슬라이드 색상은 투명도 없이 */
		   color: #7fb5ff;
		}
		
		.slide_item_duplicate {
		   display: flex;
		   align-items: center;
		   justify-content: center;
		   position: relative;
		   left: 0px; 
		   width: 100%;
		   height: 300px;
		   flex-shrink: 0;
		   transition: left 0.15s;
		}
	/* 메인페이지 하단 슬라이드 배너 css */
	</style>

	<!-- 메인페이지의 타이틀, 메인이미지, 배경색 변환 -->
	<script type="text/javascript">
	  var num = 1;
	  var path = "resources/img/";
	
	  // 5초마다 배경색, 타이틀, 이미지 변경
	  setInterval(next, 5000);
	
	  function prev() {
	    num--;
	    if (num < 1) {
	      num = 7;
	    }
	    changeSlide();
	  }
	
	  function next() {
	    num++;
	    if (num > 7) {
	      num = 1;
	    }
	    changeSlide();
	  }
	
	  function changeSlide() {
	    var main_img = document.getElementById("main_img");
	    var main_num = document.getElementById("main" + num);
	    var page_num = document.getElementById("page_num");
	    var container = document.getElementById("container");
	
	    // 모든 슬라이드 요소를 숨김 처리
	    var slideElements = document.querySelectorAll("#container > div");
	    slideElements.forEach(function(element) {
	      element.style.display = "none";
	    });
	
	    // 현재 슬라이드를 표시
	    main_num.style.display = "";
	    main_img.src = path + num + ".jpg";
	
	    // 배경색과 페이지 번호 업데이트
	    var backgroundColors = [
	      "rgb(243, 250, 203)",
	      "rgb(217, 253, 255)",
	      "rgb(252, 243, 224)",
	      "rgb(255, 231, 211)",
	      "rgb(252, 223, 238)",
	      "rgb(255, 219, 228)",
	      "rgb(192, 228, 255)"
	    ];
	    container.style.backgroundColor = backgroundColors[num - 1];
	    page_num.innerHTML = num;
	  }
	</script>
	
</head>
<body id="main_body">
	<div id="container">
		<%@include file ="/WEB-INF/views/main/header.jsp" %>
		<div id="main1">
			<div class="sub_tit">
				여름 여행
			</div>
			<div class="main_tit">
				다채롭게 자연을 <br>
				즐기는 함안여행
			</div>
			<a class="main_a" href="https://korean.visitkorea.or.kr/detail/rem_detail.do?cotid=3301d3ce-aa66-483d-8e78-66b4cac3a426">
				자세히 보기
			</a>
			<a href="https://korean.visitkorea.or.kr/detail/rem_detail.do?cotid=3301d3ce-aa66-483d-8e78-66b4cac3a426">
				<img id="main_img" alt="갤러리" src="resources/img/1.jpg">
			</a>
		</div>
		<div id="main2" style="display:none">
			<div class="sub_tit">
				수도권 여행
			</div>
			<div class="main_tit">
				나들이로 딱 좋은 <br>
				수원 여행
			</div>
			<a class="main_a" href="https://korean.visitkorea.or.kr/detail/rem_detail.do?cotid=b3e8cc50-c792-4c9a-8fac-49376c99ef41">
				자세히 보기
			</a>
			<a href="https://korean.visitkorea.or.kr/detail/rem_detail.do?cotid=b3e8cc50-c792-4c9a-8fac-49376c99ef41">
				<img id="main_img" alt="갤러리" src="resources/img/2.jpg">
			</a>
		</div>
		<div id="main3" style="display:none">
			<div class="sub_tit">
				기차 여행
			</div>
			<div class="main_tit">
				취향에 따라 즐기자! <br>
				테마별 기차여행
			</div>
			<a class="main_a" href="https://korean.visitkorea.or.kr/detail/rem_detail.do?cotid=0d7d7a4c-da0d-4416-bd00-3a85c904cdf1">
				자세히 보기
			</a>
			<a href="https://korean.visitkorea.or.kr/detail/rem_detail.do?cotid=0d7d7a4c-da0d-4416-bd00-3a85c904cdf1">
				<img id="main_img" alt="갤러리" src="resources/img/3.jpg">
			</a>
		</div>
		<div id="main4" style="display:none">
			<div class="sub_tit">
				노을 명소
			</div>
			<div class="main_tit">
				붉게 물든 노을 아래<br>
				낭만적인 서울
			</div>
			<a class="main_a" href="https://korean.visitkorea.or.kr/detail/rem_detail.do?cotid=b30c2e42-dd00-463a-b726-0e40b1d13bbb">
				자세히 보기
			</a>
			<a href="https://korean.visitkorea.or.kr/detail/rem_detail.do?cotid=b30c2e42-dd00-463a-b726-0e40b1d13bbb">
				<img id="main_img" alt="갤러리" src="resources/img/4.jpg">
			</a>
		</div>
		<div id="main5" style="display:none">
			<div class="sub_tit">
				야경 명소
			</div>
			<div class="main_tit">
				신선한 저녁에 즐기는 <br>
				알록달록 인천 명소
			</div>
			<a class="main_a" href="https://korean.visitkorea.or.kr/detail/rem_detail.do?cotid=7cf983d9-35e7-49e0-914d-1e67665be577">
				자세히 보기
			</a>
			<a href="https://korean.visitkorea.or.kr/detail/rem_detail.do?cotid=7cf983d9-35e7-49e0-914d-1e67665be577">
				<img id="main_img" alt="갤러리" src="resources/img/5.jpg">
			</a>
		</div>
		<div id="main6" style="display:none">
			<div class="sub_tit">
				추억 여행
			</div>
			<div class="main_tit">
				취향대로 골라 떠나는 <br>
				우리만의 수학여행
			</div>
			<a class="main_a" href="https://korean.visitkorea.or.kr/detail/rem_detail.do?cotid=d88ca6d2-a3f2-4780-b80a-33ffa26db809">
				자세히 보기
			</a>
			<a href="https://korean.visitkorea.or.kr/detail/rem_detail.do?cotid=d88ca6d2-a3f2-4780-b80a-33ffa26db809">
				<img id="main_img" alt="갤러리" src="resources/img/6.jpg">
			</a>
		</div>
		<div id="main7" style="display:none">
			<div class="sub_tit">
				여름꽃 여행
			</div>
			<div class="main_tit">
				몽글몽글 피어난 <br>
				전국 수국 명소
			</div>
			<a class="main_a" href="https://korean.visitkorea.or.kr/detail/rem_detail.do?cotid=9b251ab6-7f28-4547-a5bb-508644372dc9">
				자세히 보기
			</a>
			<a href="https://korean.visitkorea.or.kr/detail/rem_detail.do?cotid=9b251ab6-7f28-4547-a5bb-508644372dc9">
				<img id="main_img" alt="갤러리" src="resources/img/7.jpg">
			</a>
		</div>
	</div>
	<div id="page">
		<hr id="main_hr">
		<div id="page_div">
			<span id="page_num">1</span>
				/
			<span>7</span>
		</div>
		<div id="main_btns">
			<!-- 이전버튼 -->
			<a class="page_btn" onclick="prev();">
					<img id="prev_btn" alt="이전" src="resources/img/main-left.png">
			</a>
			<!-- 다음버튼 -->
			<a class="page_btn" onclick="next();">
					<img id="next_btn" alt="다음" src="resources/img/main-right.png">
			</a>
		</div>
	</div>
	<div id="special_box">
		<img id="bg" alt="bg" src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=1072c599-d65c-440c-ab62-db163e3a41d7">
		<div id="special_top">
			<span id="sp_subtit">여행가는 달</span>
			<img id="sp_img" alt="" src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=e065c20d-bd3a-48f4-906c-5c9d4f83429a">
			<h2 id="sp_tit">2023 여행가는 달</h2>
			<p class="sp_p">
				여행이 활짝! 일상이 반짝! <br>
				대한민국은 절찬여행중
			</p>
			<p class="sp_p">2023. 6. 1. ~ 2023. 6. 30.</p>
		</div>
		<div id="special_bottom">
			<h3 id="bot_tit">할인 받고 여행 가자!</h3>
			<ul id="sp_card">
				<li class="sp_card_list">
					<a href="https://korean.visitkorea.or.kr/travelmonth/benefits/traffic.do">
						<img src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=32dc63d3-70f3-45a8-a0fd-961fa659822e">
					</a>
				</li>
				<li class="sp_card_list">
					<a href="https://korean.visitkorea.or.kr/travelmonth/benefits/stay.do">
						<img src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=69cfdd50-43e4-487f-b5ad-bec316d51c13">
					</a>
				</li>
				<li class="sp_card_list">
					<a href="https://korean.visitkorea.or.kr/travelmonth/trend/list.do">
						<img src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=3554f88a-cace-4855-98c6-822648cbcafa">
					</a>
				</li>
			</ul>
		</div>
	</div>
	<div class="edition">
		<div class="edition_inner">
			<a href="https://korean.visitkorea.or.kr/notice/news_detail.do?nwsid=ff20cf50-6db6-4d7f-84b9-84efc7e23c43">
				<img class="edition_img" src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=1a0e6891-487f-45e7-a03e-422200eb80a0">
			</a>
			<div class="edition_cont">
				<a class="edition_cont_tit">오늘의 여행 소식</a>
				<ul class="edition_cont_ul">
					<li class="edition_cont_li">
						<a href="https://korean.visitkorea.or.kr/notice/news_detail.do?nwsid=f4c3915e-0bb0-4bee-b556-f1e00945ac8c">
							<em class="edition_cont_em">여름 휴가지 추천 |</em>
							숨어있는 여름섬 대공개
						</a>
					</li>
					<li class="edition_cont_li">
						<a href="https://korean.visitkorea.or.kr/notice/news_detail.do?nwsid=55d41a04-1b00-4ca3-a939-810f1a6cc023">
							<em class="edition_cont_em">모집 공고 |</em>
							한국관광사진기자단 '크리에이터P' 1기
						</a>
					</li>
					<li class="edition_cont_li">
						<a href="https://korean.visitkorea.or.kr/notice/news_detail.do?nwsid=e99d897d-7ae6-4874-8d00-6e421d89888b">
							<em class="edition_cont_em">세계 문자 여행 |</em>
							인천시 국립세계문자박물관 개관
						</a>
					</li>
					<li class="edition_cont_li">
						<a href="https://korean.visitkorea.or.kr/notice/news_detail.do?nwsid=f2da8bed-c357-405a-b87f-62c3b6e23c5a">
							<em class="edition_cont_em">댕댕이 버스 |</em>
							태안으로 가는 댕댕버스 출발
						</a>
					</li>
				</ul>
			</div>
		</div>
	</div>
	<div class="slide slide_wrap">
		<div class="banner_list slide1">
			<div class="slide_tit">지역 관광 활성화 사업</div>
			<div class="slide_cont">
				디지털 관광주민증 <br>
				발급받고 혜택받자!
			</div>
			<img class="slide_img" src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=0cc00c1b-5679-4f7c-bea8-b72b772c49b2"> 
		</div>
		<div class="banner_list slide2">
			<div class="slide_tit">산 정상 날씨 알려드려요!</div>
			<div class="slide_cont">
				산사랑♥등산러 <br>
				조끼 두께 안내 지도
			</div>
			<img class="slide_img" src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=93950f80-e78b-43d6-8a5d-233549907a09"> 
		</div>
		<div class="banner_list slide3">
			<div class="slide_tit">2023 K-여행페스타</div>
			<div class="slide_cont">
				축제와 행사로 가득한 <br>
				K-여행페스타로 떠나요!
			</div>
			<img class="slide_img" src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=32373fc7-1513-4582-bc71-e6d551f2fb78"> 
		</div>
		<div><img class="slide_prev_button slide_button" src="resources/img/qna_left.png"></div>
	    <div><img class="slide_next_button slide_button" src="resources/img/qna_right.png"></div>
	    <ul class="slide_ul slide_pagination"></ul>
	</div>
	
<script src="resources/js/slide.js"></script>
<%@include file ="/WEB-INF/views/main/footer.jsp" %>
</body>
</html>
