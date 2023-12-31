<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, target-densitydpi=medium-dpi">
	<title>개인정보처리방침 | 대한민국 즐겨차키</title>
	<link rel="shortcut icon" type="image/x-icon" href="/resources/images/favicon.ico"><!-- 0904 파비콘 추가 -->
	<link rel="stylesheet" type="text/css" href="../resources/css/swiper.min.css">
	<link rel="stylesheet" type="text/css" href="../resources/css/common.css">
	<link rel="stylesheet" type="text/css" href="../resources/css/content.css">
	<script src="../resources/js/jquery-1.11.2.min.js"></script>
	<script src="../resources/js/swiper.min.js"></script>
	<script src="../resources/js/common.js"></script>
    <script src="../resources/js/global.js?v=20201027"></script>
	<!--[if lt IE 9]>
		<script src="../resources/js/html5shiv.js"></script>
	<![endif]-->





<script type="text/javascript" charset="UTF-8">
var custInfo = {
		uuid : null, //SNS_ID
		loginYn : 'N', //로그인여부
		firstYn : 'N', //최초로그인여부
		gender : 'null', //성별
		grade : 'null', //여행구독레벨
		birthYr : 0, //생년월일
		rsdeNm : 'null', //거주지명
		favoriteCnt : null, //즐겨찾기수
		commentCnt : null, //댓글수
		joinYmd : null, //가입일
	    channel : null, //SNS채널구분
	    device : appYn == 'Y' ? device : mobileYn == 'Y' ? 'mobileweb' : 'pcweb', //device 구분
	    cardAreaNm : null //digitcard area Name
}
</script>

<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=G-LYY1LJZCC4"></script>
<script type="text/javascript" charset="UTF-8">
    window.dataLayer = window.dataLayer || [];
    dataLayer.push({
        'user_id': custInfo.uuid,         //기본페이지뷰 시 호출되는 uuid값 활용
        'first_login': custInfo.firstYn,  //기본페이지뷰 시 호출되는 firstYn값 활용
        'gender_div': custInfo.gender,    //기본페이지뷰 시 호출되는 gender값 활용
        'birth_year': custInfo.birthYr,   //기본페이지뷰 시 호출되는 birthYr값 활용
        'city_name': custInfo.rsdeNm,     //기본페이지뷰 시 호출되는 rsdeNm값 활용
        'join_date': custInfo.joinYmd,    //기본페이지뷰 시 호출되는 joinYmd값 활용
        'method': custInfo.channel,        //기본페이지뷰 시 호출되는 channel값 활용

        'dimension7': custInfo.uuid,
        'dimension8': custInfo.joinYmd,
        'dimension9': custInfo.loginYn,
        'dimension10': custInfo.channel,
        'dimension11': custInfo.device,
    });
    function gtag(){dataLayer.push(arguments);}
    gtag('js', new Date());

    gtag('config', 'G-LYY1LJZCC4', {

        otd_nm : ""
    });
</script>
<!-- Google Tag Manager -->
<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
        new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
    j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
    'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
})(window,document,'script','dataLayer','GTM-PJVBVKB');</script>
<!-- End Google Tag Manager -->


<script src="https://www.googleoptimize.com/optimize.js?id=OPT-5JVS3BG"></script>
<script src="https://www.googleoptimize.com/optimize.js?id=OPT-NQVD2Q2"></script>
<script src="https://cdn.visitkorea.or.kr/resources/js/cdp/web/sphereAnalytics.min.js?v=e3d9830d-a7c2-4615-b0f9-eadb472e6180"></script>

<script type="text/javascript">
var otd_nm = "";
if( appYn == 'N') {
	(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
		(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
		m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
		})(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

		ga('create', 'UA-92880258-1', 'auto');
		ga('require', 'displayfeatures');

        otd_nm = "";
        ga('set', 'dimension5', otd_nm);
} else {
	(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
		(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
		m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
		})(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

		ga('create', 'UA-92878657-1', 'auto');
		ga('require', 'displayfeatures');
		ga('send', 'pageview');
        otd_nm = "";
        ga('set', 'dimension5', otd_nm);
}
</script>

<meta name="referrer" content="unsafe-url">
</head>
<body >
<!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-PJVBVKB"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->

<!-- Facebook Pixel Code -->



<!-- End Facebook Pixel Code -->

<!-- Facebook Pixel Code Start 2021-02-16-->



<!-- End Facebook Pixel Code -->

	<!-- skip -->
	
	<!-- // skip -->
	
	<!-- header -->
	<header id="gnbCommon" class="sub">
	</header>
	<!-- //header -->
	
	<!-- contents -->
	<div id="contents" style="width:900px; margin:0px 300px;">
		<div class="tit_cont tit_term">
			<div class="tit_pos">
				<h2>개인정보처리방침</h2>
			</div>
		</div>
		<!-- 이용약관 -->
		<div class="term_wrap">
			<p>
				&lt;한국관광공사&gt;대한민국즐겨차키 홈페이지 및 모바일 서비스(이하 "대한민국즐겨차키 서비스")가 취급하는 개인정보는 개인정보보호법에 따라 이용자의 개인정보 보호 및 권익을 보호하고 개인정보와 관련한 이용자의 고충을 원활하게 처리할 수 있도록 다음과 같은 처리방침을 두고 있습니다.
			</p>
			<p>대한민국즐겨차키 서비스는 개인정보처리방침을 개정하는 경우 웹사이트 공지사항(또는 개별공지)을 통하여 공지할 것입니다.</p>

			<p>○ 본 방침은 2021년 01월 25일부터 시행됩니다.</p>
			<h3 class="tit02">제1조 (개인정보의 처리 목적)</h3>
			<p>
				대한민국즐겨차키 서비스는 개인정보를 다음의 목적을 위해 처리합니다. 처리한 개인정보는 다음의 목적이외의 용도로는 사용되지 않으며 이용 목적이 변경될 시에는 사전 동의를 구할 예정입니다.
			</p>
			<ol>
				<li>
					가. 회원가입 및 관리 <br>
					회원 가입의사 확인, 회원제 서비스 제공에 따른 본인 식별 인증, 회원자격 유지 관리, 서비스 부정이용 방지, 각종 고지 통지 등을 목적으로 개인정보를 처리합니다.
				</li>
				<li>
					나. 민원사무 처리 <br>
					민원인의 신원 확인, 민원사항 확인, 사실조사를 위한 연락 통지, 처리결과 통보 등을 목적으로 개인정보를 처리합니다.
				</li>
				<li>
					다. 재화 또는 서비스 제공 <br>
					서비스 제공, 콘텐츠 제공, 맞춤 서비스 제공, 요금결제 정산 등을 목적으로 개인정보를 처리합니다.
				</li>
				<li>
					라. 마케팅 및 광고에의 활용 <br>
					신규 서비스 개발 및 맞춤 서비스 제공, 이벤트 및 광고성 정보 제공 및 참여기회 제공, 인구통계학적 특성에 따른 서비스 제공 및 광고 게재, 학술연구 또는 시장조사, 서비스의 유효성 확인, 접속빈도 파악 또는 회원의 서비스 이용에 대한 통계 등을 목적으로 개인정보를 처리합니다.
				</li>
			</ol>
			<h3 class="tit02">제2조 (처리하는 개인정보의 항목)</h3>
			<p>대한민국즐겨차키 서비스는 다음의 개인정보 항목을 처리하고 있습니다.</p>
			<ol>
				<li>
					가. 회원 서비스 이용을 위한 소설로그인 인증 절차가 있으며, 이에 따른 이용자의 아이디와 비밀번호 등 민감한 개인정보는 보유하지 않으며 수집되는 정보는 아래와 같습니다.
					<div class="board_wrap">
						<div class="tbl_col type_scroll type_scroll left_tb">
							<strong class="stit">※ SNS 채널별 수집항목</strong>
							<table>
								<caption>처리하는 개인정보의 항목에 대한 수집되는 정보에 대한 구분, 수집항목으로 구분된 정보 테이블</caption>
								<colgroup>
									<col class="th_w" />
									<col />
								</colgroup>
								<thead>
								<tr>
									<th scope="col">구분</th>
									<th scope="col">수집항목</th>
								</tr>
								</thead>
								<tbody>
								<tr>
									<td>페이스북</td>
									<td>이름, 닉네임, 프로필 사진</td>
								</tr>
								<tr>
									<td>네이버</td>
									<td>이름, 닉네임, 프로필 사진</td>
								</tr>
								<tr>
									<td>카카오톡</td>
									<td>닉네임, 프로필 사진</td>
								</tr>
								<tr>
									<td>트위터</td>
									<td>스크린네임, 프로필 사진</td>
								</tr>
								<tr>
									<td>구글</td>
									<td>+이름, 프로필 사진</td>
								</tr>
								<tr>
									<td>인스타그램</td>
									<td>이름, 프로필 사진</td>
								</tr>
								</tbody>
							</table>
						</div>

						<div class="tbl_col type_scroll type_scroll right_tb">
							<strong class="stit">※ 추가 수집항목</strong>
							<table>
								<caption>처리하는 개인정보의 항목에 대한 수집되는 정보에 대한 구분, 수집항목으로 구분된 정보 테이블</caption>
								<colgroup>
									<col class="th_w" />
									<col />
								</colgroup>
								<thead>
								<tr>
									<th scope="col">구분</th>
									<th scope="col">수집항목</th>
								</tr>
								</thead>
								<tbody>
								<tr>
									<td>거주지역</td>
									<td>18개 광역시도 및 시군구</td>
								</tr>
								<tr>
									<td>성별</td>
									<td>남성, 여성</td>
								</tr>
								<tr>
									<td>출생 연도</td>
									<td>출생연도(YYYY)(ex>1999)</td>
								</tr>
								<tr>
									<td>여행 목적</td>
									<td>풍경여행, 엑티비티/레저여행, 휴식/힐링여행, 맛_여행, 체험/관광, 축제/공연/문화예술여행, 역사/배움여행 중 택 1</td>
								</tr>
								<tr>
									<td>여행 동반 유형</td>
									<td>친구/모임, 가족과, 부부/연인, 나홀로, 반려견과 중 택 1</td>
								</tr>
								</tbody>
							</table>
							<p>* 위 정보는 희망자에 한해 선택적으로 수집되며, <br/>맞춤형 여행정보 제공, 인구통계 분석에만 활용 됩니다.</p>
						</div>
					</div>
				</li>
				<li>
					나. 서비스 개선목적을 위한 이용자의 "브라우저 종류", "OS", "방문일시", "IP"항목을 자동 수집합니다.
				</li>
				<li>
					다. 개인정보 자동수집 장치(cookie)의 설치, 운영 및 그 거부에 관한 사항
					<ol>
						<li>
							1. 공사는 고객님의 정보를 저장하고 수시로 찾아내는 '쿠키(cookie)'를 운용합니다.
							쿠키는 웹사이트가 고객님의 컴퓨터 브라우저 및 휴대폰(인터넷익스플로러 등)으로 전송하는 소량의 정보로서
							고객님이 웹사이트에 본인 인증을 통해 접속하면 고객님의 브라우저에 있는 쿠키의 내용을 읽고,고객님의 추가정보를 고객님의 컴퓨터에서 찾아 서비스를 제공하게 됩니다.<br/>
							이러한 쿠키 정보는 고객님께 유용하고 보다 편리한 맞춤 서비스를 제공하는데 사용되게 됩니다.
						</li>
						<li>
							2. 그러나 쿠키 정보는 고객님의 컴퓨터를 식별할 수는 있지만 고객 개개인을 식별하지는 않습니다.
							고객님은 쿠키에 대한 사용여부를 선택할 수 있습니다. 웹 브라우저의 옵션 설정을 통해 모든 쿠키를 허용할 수도 있고,
							 쿠키가 저장될 때마다 확인을 거치거나 모든 쿠키의 저장을 거부할 수도 있습니다.<br/>
							단, 쿠키의 저장을 거부할 경우에는 서비스 제공에 필요한 일부 서비스는 이용할 수 없습니다.
						</li>
					</ol>
				</li>
			</ol>
			<h3 class="tit02">제3조 (개인정보의 처리 및 보유 기간)</h3>
			<p>이용자의 개인정보는 회원 탈퇴시 지체 없이 파기합니다. </p>
			<h3 class="tit02">제4조 (단말기 접근에 대한 권한동의 및 범위) </h3>
			<p>
				대한민국즐겨차키 서비스는 이용자가 어플리케이션을 통해 서비스를 제공받고자 했을 경우, 이용에 필요한 권한 동의여부를 제공하며, ‘동의’버튼을 클릭하면 해당 권한 접근에 대해 허용한 것으로 간주합니다.
			</p>
			<ol>
				<li>
					<strong class="tit">가. 단말기에 대한 정의</strong><br>
					대한민국즐겨차키 어플리케이션 서비스를 설치 및 사용할 수 있는 스마트폰 및 태블릿PC 등을 말합니다.
				</li>
				<li>
					<strong class="tit">나. 단말기 접근 권한 안내</strong>
					<div class="tbl_col type_tbl02 type_scroll">
						<table>
							<caption>단말기 접근 권한 안내에 대한 권한명, 사용이유로 구분되는 정보 테이블</caption>
							<thead>
								<tr>
									<th scope="col">권한명</th>
									<th scope="col">사용이유</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>Internet</td>
									<td>	인터넷 연결</td>
								</tr>
								<tr>
									<td>Access_Fine_Location</td>
									<td>사용자의 위치확인</td>
								</tr>
								<tr>
									<td>Access_Coarse_Location</td>
									<td>사용자의 위치확인</td>
								</tr>
								<tr>
									<td>WRITE_EXTERNAL_STORAGE</td>
									<td>사진업로드 및 임시파일 저장</td>
								</tr>
								<tr>
									<td>READ_EXTERNAL_STORAGE</td>
									<td>사진업로드 및 임시파일 저장</td>
								</tr>
								<tr>
									<td>ACCESS_NETWORK_STATE</td>
									<td>와이파이를 통한 네트워크 연결</td>
								</tr>
								<tr>
									<td>CD2_MESSAGE</td>
									<td>푸시메시지</td>
								</tr>
								<tr>
									<td>RECEIVE</td>
									<td>푸시메시지</td>
								</tr>
								<tr>
									<td>WAKE_LOCK</td>
									<td>푸시메시지</td>
								</tr>
							</tbody>
						</table>
					</div>
				</li>
			</ol>
			<h3 class="tit02">제5조 (개인정보의 제3자 제공)</h3>
			<p>
				대한민국즐겨차키 서비스는 원칙적으로 이용자의 개인정보를 제1조 (개인정보의 처리 목적)에서 명시한 범위 내에서 처리하며, 이용자의 사전 동의 없이는 본래의 범위를 초과하여 처리하거나 제3자에게 제공하지 않습니다.
			</p>
			<h3 class="tit02">제6조 (개인정보처리 위탁)</h3>
			<ul>
				<li>
					① 대한민국즐겨차키 서비스는 원활한 개인정보 업무처리를 위하여 다음과 같이 개인정보 처리업무를 위탁하고 있습니다.
					<div class="tbl_row type_tbl01 type_scroll">
						<table>
							<caption>개인정보 처리업무 위탁 정보 테이블</caption>
							<tbody>
								<tr>
									<th scope="row">위탁받는 자(수탁자)</th>
									<td>(주)유니에스아이엔씨</td>
								</tr>
								<tr><!-- 0204 추가 -->
									<th scope="row">위탁부서 / 담당자</th>
									<td>국내디지털마케팅팀 / 박효정</td>
								</tr>
								<tr>
									<th scope="row">위탁하는 업무의 내용</th>
									<td>
										<ul>
											<li>
												‧ 대한민국즐겨차키 서비스 운영관리 및 회원정보 관리 보호를 위한 기술적 처리 <br>
											</li>
											<li>
												‧ 온라인 민원사무 처리의 기술적 처리 지원 <br>
											</li>
											<li>
												‧ 디지털 재화 및 정보 서비스 제공에 따른 기술적 처리 <br>
											</li>
											<li>
												‧ 정보서비스 이용 촉진을 위한 온라인 이벤트 구현, 통계분석 등 기술적 처리 지원 <br>
											</li>
											<li>‧ 이벤트 진행 및 경품 배송을 위해 개인 정보 위탁 또는 이벤트 경품배송 등의 서비스 제공</li><!-- 0204 추가 -->
											<li>‧ 기타 개인정보 보호를 위한 기술적 조치 및 관리 지원</li>
										</ul>
									</td>
								</tr>
								<tr><!-- 0204 추가 -->
									<th scope="row">위탁 기간</th>
									<td>2023.1.1~2023.12.31</td>
								</tr>
							</tbody>
						</table>
					</div>
				</li>
				<li>
					② 대한민국즐겨차키 서비스는 위탁계약 체결시 개인정보 보호법 제26조에 따라 위탁업무 수행목적 외 개인정보 처리금지, 기술적·관리적 보호조치, 재위탁 제한, 수탁자에 대한 관리·감독, 손해배상 등 책임에 관한 사항을 계약서 등 문서에 명시하고, 수탁자가 개인정보를 안전하게 처리하는지를 감독하고 있습니다.
				</li>
				<li>
					③ 위탁업무의 내용이나 수탁자가 변경될 경우에는 지체 없이 본 개인정보처리방침을 통하여 공개하고 필요한 경우 사전 동의를 구하도록 하겠습니다.
				</li>
			</ul>
			<h3 class="tit02">제7조 (정보주체의 권리, 의무 및 그 행사방법) </h3>
			<ol>
				<li>
					① 정보주체(만 14세 미만인 경우에는 법정대리인을 말함)는 언제든지 다음 각 호의 개인정보 보호 관련 권리를 행사할 수 있습니다.
					<ol>
						<li>
							1. 개인정보 열람요구
						</li>
						<li>
							2. 오류 등이 있을 경우 정정 요구
						</li>
						<li>
							3. 삭제요구
						</li>
						<li>
							4. 처리정지 요구
						</li>
					</ol>
				</li>
				<li>
					② 제1항에 따른 권리 행사는 개인정보보호법 시행규칙 별지 제8호 서식에 따라 작성 후 서면, 전자우편, 모사전송(FAX) 등을 통하여 하실 수 있으며, 이에 대해 지체 없이 조치하겠습니다.
				</li>
				<li>
					③ 정보주체가 개인정보의 오류 등에 대한 정정 또는 삭제를 요구한 경우에는 정정 또는 삭제를 완료할 때까지 당해 개인정보를 이용하거나 제공하지 않습니다.
				</li>
				<li>
					④ 제1항에 따른 권리 행사는 정보주체의 법정대리인이나 위임을 받은 자 등 대리인을 통하여 하실 수 있습니다. 이 경우 개인정보보호법 시행규칙 별지 제11호 서식에 따른 위임장을 제출하셔야 합니다.
				</li>
				<li>
					⑤ 개인정보 열람 및 처리정지 요구는 개인정보보호법 제35조 제4항, 제37조 제2항에 의하여 정보주체의 권리가 제한 될 수 있습니다.
				</li>
				<li>
					⑥ 개인정보의 정정 및 삭제 요구는 다른 법령에서 그 개인정보가 수집 대상으로 명시되어 있는 경우에는 그 삭제를 요구할 수 없습니다.
				</li>
				<li>
					⑦ 정보주체 권리에 따른 열람의 요구, 정정·삭제의 요구, 처리정지의 요구 시 열람 등 요구를 한 자가 본인이거나 정당한 대리인인지를 확인합니다.
					<ul>
						<li>
							* [개인정보보호법 시행규칙 별지 제8호] 개인정보(열람, 정정·삭제, 처리정지) 요구서<a class="btnDown" href="javascript:DownLoadHwp(2);">개인정보 열람 요구서</a>
						</li>
						<li>
							* [개인정보보호법 시행규칙 별지 제11호] 위임장<a class="btnDown" href="javascript:DownLoadHwp(1);">위임장</a>
						</li>
					</ul>
				</li>
			</ol>
			<h3 class="tit02">제8조 (개인정보의 파기)</h3>
			<p>
				대한민국즐겨차키 서비스는 이벤트 경품발송 완료등 개인정보 처리목적이 달성된 경우에는 지체 없이 해당 개인정보를 파기합니다. 파기의 절차, 기한 및 방법은 다음과 같습니다.
			</p>
			<h3 class="tit02">파기절차</h3>
			<p>
				이용자가 입력한 정보는 목적 달성 후 별도의 DB에 옮겨져(종이의 경우 별도의 서류) 내부 방침 및 기타 관련 법령에 따라 일정기간 저장된 후 혹은 즉시 파기됩니다. 이 때, DB로 옮겨진 개인정보는 법률에 의한 경우가 아니고서는 다른 목적으로 이용되지 않습니다.
			</p>
			<h3 class="tit02">파기기한</h3>
			<p>
				이용자의 개인정보는 개인정보의 보유기간이 경과된 경우에는 보유기간의 종료일로부터 5일 이내에, 개인정보의 처리 목적 달성, 해당 서비스의 폐지, 사업의 종료 등 그 개인정보가 불필요하게 되었을 때에는 개인정보의 처리가 불필요한 것으로 인정되는 날로부터 5일 이내에 그 개인정보를 파기합니다.
			</p>
			<h3 class="tit02">파기방법</h3>
			<p>
				전자적 파일 형태의 정보는 기록을 재생할 수 없는 기술적 방법을 사용합니다. <br>
				종이에 출력된 개인정보는 분쇄기로 분쇄하거나 소각을 통하여 파기합니다.
			</p>
			<h3 class="tit02">제9조 (개인정보의 안전성 확보 조치)</h3>
			<p>대한민국즐겨차키 서비스는 개인정보보호법 제29조에 따라 다음과 같이 안전성 확보에 필요한 기술적/관리적 및 물리적 조치를 하고 있습니다.</p>
			<h3 class="tit02">개인정보 취급 직원의 최소화 및 교육</h3>
			<p>
				개인정보를 취급하는 직원을 지정하고 담당자에 한정시켜 최소화 하여 개인정보를 관리하는 대책을 시행하고 있습니다.
				개인정보 영향평가 실시 개인정보 취급 관련 안정성 확보와 관리체계 개선을 위해 개인정보보호법 시행령 제35조 및 부칙 제6조에 따라 개인정보 영향평가 실시의무를 준수합니다. <br>
				내부관리계획의 수립 및 시행 개인정보의 안전한 처리를 위하여 내부관리계획을 수립하고 시행하고 있습니다. <br>
				개인정보의 암호화 개인정보를 안전하게 저장 전송할 수 있는 암호화 기술의 적용 또는 이에 상응하는 조치를 통해 관리하고 있습니다.
			</p>
			<h3 class="tit02">해킹 등에 대비한 기술적 대책 </h3>
			<p>
				대한민국즐겨차키 서비스는 해킹이나 컴퓨터 바이러스 등에 의한 개인정보 유출 및 훼손을 막기 위하여 보안프로그램을 설치하고 주기적인 갱신 점검을 하며 외부로부터 접근이 통제된 구역에 시스템을 설치하고 기술적/물리적으로 감시 및 차단하고 있습니다.
			</p>
			<h3 class="tit02">개인정보에 대한 접근 제한</h3>
			<p>개인정보를 처리하는 데이터베이스시스템에 대한 접근권한의 부여,변경,말소를 통하여 개인정보에 대한 접근통제를 위하여 필요한 조치를 하고 있으며 침입차단시스템을 이용하여 외부로부터의 무단 접근을 통제하고 있습니다.</p>
			<h3 class="tit02">접속기록의 보관 및 위변조 방지</h3>
			<p>
				개인정보처리시스템에 접속한 기록을 최소 6개월 이상 보관, 관리하고 있으며, 접속 기록이 위변조 및 도난, 분실되지 않도록 보안기능 사용하고 있습니다.
			</p>
			<h3 class="tit02">문서보안을 위한 잠금장치 사용</h3>
			<p>개인정보가 포함된 서류, 보조저장매체 등을 잠금장치가 있는 안전한 장소에 보관하고 있습니다.</p>
			<h3 class="tit02">비인가자에 대한 출입 통제</h3>
			<p>개인정보를 보관하고 있는 물리적 보관 장소를 별도로 두고 이에 대해 출입통제 절차를 수립, 운영하고 있습니다.</p>
			<h3 class="tit02">제10조 (개인정보보호책임자)</h3>
			<p>
				한국관광공사는 개인정보를 보호하고 개인정보와 관련한 불만을 처리하기 위하여 아래와 같이 개인정보 보호책임자 및 실무담당자를 지정하고 있습니다. (개인정보보호법 제31조 제1항에 따른 개인정보보호 책임자)
			</p>
			<h3 class="tit02">개인정보보호책임자</h3>
			<!-- 0227 수정 -->
			<p>
				성명 : 조희진 <br>
				소속/직책 : 디지털혁신실장 <br>
			</p>
			<h3 class="tit02">개인정보보호담당자</h3>
			<p>
				부서명 : 디지털인프라팀 <br>
				담당자 : 서승연 <br>
				연락처 : 033-738-3527 / syseo29@knto.or.kr
			</p>
			<!-- //0227 수정 -->
			<h3 class="tit02">제11조 (개인정보 처리방침 변경)</h3>
			<p>이 개인정보처리방침은 시행일로부터 적용되며, 법령 및 방침에 따른 변경내용의 추가, 삭제 및 정정이 있는 경우에는 변경사항의 시행 7일 전부터 공지사항을 통하여 고지할 것입니다.</p>
			<h3 class="tit02">제12조 (권익침해 구제방법)</h3>
			<p>
				개인정보주체는 개인정보침해로 인한 구제를 받기 위하여 개인정보분쟁조정위원회, 한국인터넷진흥원 개인정보침해신고센터 등에 분쟁해결이나 상담 등을 신청할 수 있습니다. 이 밖에 기타 개인정보침해의 신고 및 상담에 대하여는 아래의 기관에 문의하시기 바랍니다.
			</p>
			<h3 class="tit02">개인정보 침해신고센터 (한국인터넷진흥원 운영)</h3>
			<p>
				소관업무 : 개인정보 침해사실 신고, 상담 신청 <br>
				홈페이지 : privacy.kisa.or.kr <br>
				전화 : (국번없이) 118 <br>
				주소 : (138-950) 서울시 송파구 중대로 135 한국인터넷진흥원 개인정보침해신고센터 <br>
				개인정보 분쟁조정위원회 (한국인터넷진흥원 운영) <br>
				소관업무 : 개인정보 분쟁조정신청, 집단분쟁조정 (민사적 해결) <br>
				홈페이지 : privacy.kisa.or.kr <br>
				전화 : (국번없이) 118 <br>
				주소 : (138-950) 서울시 송파구 중대로 135 한국인터넷진흥원 개인정보침해신고센터 <br>
				대검찰청 사이버범죄수사단 : 02-3480-3573 (www.spo.go.kr) <br>
				경찰청 사이버범죄수사단 : 1566-0112 (www.netan.go.kr)<br/>
			</p>
			<h3 class="tit02">제13조(개인정보의 열람청구를 접수 처리하는 부서)</h3>
			<ol>
				<li>
					① 정보주체는 개인정보 보호법 제35조에 따른 개인정보의 열람 청구를 아래의 부서에 할 수 있습니다.<br/>국내디지털마케팅팀은 정보주체의 개인정보 열람청구가 신속하게 처리되도록 노력하겠습니다.<br/>
					개인정보 열람청구 접수∙처리 부서 부서명 : 국내디지털마케팅팀 <br/>
					담당자 : 정진영<br/>
					연락처 : &lt;전화 : 033-738-3849&gt;, &lt;이메일: jjy606@knto.or.kr&gt;
				</li>
				<li>
					② 정보주체께서는 제1항의 열람청구 접수․처리부서 이외에, 행정안전부의 ‘개인정보보호 종합지원 포털’ 웹사이트(www.privacy.go.kr)를
					통하여서도 개인정보 열람청구를 하실 수 있습니다.<br/>
					행정안전부 개인정보보호 종합지원 포털 → 개인정보 민원 → 개인정보 열람등 요구 (본인확인을 위하여 아이핀(I-PIN)이 있어야 함)
				</li>
			</ol>
			
			<br><br>
				
		</div>
		<!-- // 이용약관 -->
	</div>
	<!-- //contents -->
	
	<!-- 공지사항 , 유관기관, footer-->
	<div id="footer">
	</div>
	<!-- //공지사항 , 유관기관, footer-->
	
	<script type="text/javascript">
	
		function nextLogin(){
		}
	
		function goOld(num){
			window.open('/html/term03_pop'+num+'.html', 'term03', 'top=10, left=10, width=650, height=800, status=no, menubar=no, toolbar=no, resizable=no');
		}
	
		function DownLoadHwp(kind) {
	
			if( kind == '1') {
				window.open(mainurl+'/resources/etc/term_warrant.hwp'); 
			} else {
				window.open(mainurl+'/resources/etc/term_userinfo.hwp');
			}
		}
	
	</script>
</body>
</html>