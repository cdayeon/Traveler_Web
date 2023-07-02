<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, target-densitydpi=medium-dpi">
	<title>이용약관 | 대한민국 즐겨차키</title>
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
<script src="https://cdn.visitkorea.or.kr/resources/js/cdp/web/sphereAnalytics.min.js?v=18eb51c2-4c26-4687-b605-5948342d3188"></script>

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
<body>
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
				<h2>이용약관</h2>
			</div>
		</div>
		<!-- 이용약관 -->
		<div class="term_wrap">
			<h3 class="tit01">제1장 총칙</h3>
			<h4 class="tit02">제1조(목적)</h4>
			<p>본 약관은 한국관광공사(이하 "공사")가 제공하는 대한민국즐겨차키 서비스(이하 "서비스")의 이용과 관련하여 공사와 이용자의 권리, 의무 및 책임사항 그리고 기타 필요한 사항을 규정하는 것을 목적으로 합니다.</p>
			<h4 class="tit02">제2조(약관의 효력 및 변경)</h4>
			<p>약관의 내용은 서비스 화면에 게시하고 이용자가 동의함으로써 효력이 발생합니다. 공사는 합리적인 사유가 발생될 경우에는 이 약관을 변경할 수 있으며, 약관이 변경되는 경우에는 최소한 7일전에 공지합니다. 또한 새로운 서비스가 개설될 경우, 별도의 명시된 설명이 없는 한 이 약관에 따라 제공됩니다.</p>
			<ol>
				<li>
					① 본 약관은 공사가 서비스 화면을 통해 게시하고 이용자가 이에 동의함으로써 효력을 발생합니다.
				</li>
				<li>
					② 공사는 "약관의 규제 등에 관한 법률", "전기통신사업법령", "정보통신망 이용촉진 및 정보보호 등에 관한 법률", "개인정보보호법" 등 관련 법령을 위반하지 않는 범위에서 이 약관의 내용을 수정하거나 변경할 수 있습니다.
				</li>
				<li>
					③ 공사가 약관을 개정할 경우에는 기존약관과 개정약관 및 개정약관의 적용일자와 개정사유를 명시하여 현행약관과 함께 그 적용일자 7일 전부터 적용일 이후 상당한 기간 동안, 개정 내용이 회원에게 불리한 경우에는 그 적용일자 30일 전부터 적용일 이후 상당한 기간 동안 각각 이를 서비스 홈페이지에 고지합니다.
				</li>
				<li>
					④ 공사가 전항에 따라 회원에게 고지하면서 고지일로부터 개정약관 시행일 7일 후까지 거부의사를 표시하지 아니하면 승인한 것으로 본다는 뜻을 명확하게 고지하였음에도 의사표시가 없는 경우에는 변경된 약관을 승인한 것으로 봅니다. 회원이 개정약관에 동의하지 않을 경우 회원은 제6조 제1항의 규정에 따라 이용계약을 해지할 수 있습니다.
				</li>
			</ol>
			<h4 class="tit02">제3조(용어의 정의)</h4>
			<p>이 약관에서 사용하는 용어의 정의는 다음과 같습니다.</p>
			<ol>
				<li>
					① 이용자: 공사가 제공하는 서비스를 받는 소셜로그인 회원 및 비회원
				</li>
				<li>
					② 회원: 다른 서비스에서 가입한 정보를 바탕으로 대한민국즐겨차키 서비스 內 소셜로그인 인증을 받은 개인이나 법인 또는 법인에 준하는 단체
				</li>
				<li>
					③ 비회원: 소셜로그인 인증을 통하여 회원인증하지 않고, 공사가 제공하는 서비스를 이용하는 자
				</li>
				<li>
					④ 해지: 공사 또는 회원이 서비스 개통 후 이용계약을 해약하는 것
				</li>
				<li>
					⑤ 소셜로그인 인증 : 포털‧사회관계망서비스(SNS) 가입자가 해당 ID로 다른 웹사이트나 애플리케이션에 접속하는 기능
				</li>
			</ol>
			<h3 class="tit01">제2장 회원의 가입 및 관리</h3>
			<h4 class="tit02">제4조(회원가입)</h4>
			<p>이용자는 회원가입을 신청하려면 대한민국즐겨차키 서비스에서 제공하는 로그인메뉴를 통해 소셜로그인 인증을 받음으로써 회원가입이 이루어지며, 이 경우 이용약관 및 개인정보처리방침 내용에 동의한 것으로 간주합니다.</p>
			<h4 class="tit02">제5조(회원정보의 변경)</h4>
			<p>회원은 회원정보(패스워드, 닉네임, 프로필사진 등)의 수정을 원할 경우 로그인한 소셜서비스에서 제공하는 회원정보수정 메뉴를 통해 수정해야 하며, 변경하지 않은 정보로 인해 발생되는 문제의 책임은 회원에게 있습니다.</p>
			<h4 class="tit02">제6조(회원 탈퇴 및 자격상실, 서비스 이용제한 등)</h4>
			<ol>
				<li>
					① 회원은 탈퇴를 희망할 경우 탈퇴를 요청할 수 있으며, 공사는 관련법 등이 정하는 바에 따라 이를 처리합니다. 회원이 자발적으로 계약을 해지할 경우, 공사는 관련법 및 개인정보취급방침에 따라 인증정보를 삭제합니다. 회원이 다음 각 호의 사유에 해당하는 경우, 공사는 회원자격을 제한 및 정지시킬 수 있습니다.
					<ol>
						<li>
							가. 가입 신청 시에 허위 내용을 등록한 경우
						</li>
						<li>
							나. 다른 사람의 서비스 이용을 방해하거나 타인의 명예를 훼손하거나 그 정보를 도용하는 등 전자 거래 및 정보통신서비스 이용질서를 위협하는 경우
						</li>
						<li>
							다. 제공되는 정보를 변경하는 등 공사의 운영을 방해한 경우
						</li>
						<li>
							라. 법령과 본 약관이 금지하거나 미풍양속에 저해하는 행위를 하는 경우
						</li>
					</ol>
				</li>
				<li>
					② 공사는 회원자격 및 서비스 이용을 제한, 정지 시킨 후, 그 사유가 시정되지 아니하는 경우 회원자격을 상실시킬 수 있습니다.
				</li>
			</ol>
			<h3 class="tit01">제3장 서비스 이용</h3>
			<h4 class="tit02">제7조(서비스의 구분)</h4>
			<p>공사가 이용자에게 제공하는 서비스는 기본서비스와 부가서비스 등으로 구분 하며, 서비스의 종류와 내용 등은 공사가 공지나 서비스 이용안내에서 별도로 정하는 바에 의합니다.</p>
			<h4 class="tit02">제8조(서비스의 이용시간)</h4>
			<ol>
				<li>
					① 서비스는 연중무휴 1일 24시간 제공함을 원칙으로 하며, 공사가 업무상, 운영상, 기술상의 이유로 서비스의 전부 또는 일부가 일시 중지될 수 있으며, 이 경우 내용을 사전에 공지합니다.
				</li>
				<li>
					② 공사는 서비스 별로 이용 가능한 시간을 별도로 정할 수 있으며 이 경우 그 내용을 사전에 공지합니다.
				</li>
			</ol>
			<h4 class="tit02">제9조(서비스 변경)</h4>
			<p>공사는 상당한 이유가 있는 경우에 업무상, 운영상, 기술상의 필요에 따라 제공하고 있는 전부 또는 일부 서비스를 변경 및 중단 할 수 있으며, 이 경우 그 내용을 사전에 공지합니다.</p>
			<h3 class="tit01">제4장 의무 및 책임</h3>
			<h4 class="tit02">제10조(공사의 의무)</h4>
			<ol>
				<li>
					① 공사는 관련법과 이 약관에서 금지하거나 미풍양속에 반하는 행위를 하지 않으며, 계속적이고 안정적으로 서비스를 제공하기 위하여 최선을 다하여 노력합니다.
				</li>
				<li>
					② 공사는 서비스와 관련한 회원의 불만사항이 접수되는 경우 이를 즉시 처리하여야 하며, 즉시 처리가 곤란한 경우 그 사유와 처리 일정을 해당 회원에게 통지하여야 합니다.
				</li>
				<li>
					③ 공사는 서비스의 제공과 관련하여 알게 된 회원의 개인정보를 본인의 승낙 없이 제3자에게 누설, 배포하지 않고, 이를 보호하기 위하여 노력합니다. 회원의 개인정보보호 및 사용에 대해서는 관련법 및 개인정보취급방침에 따릅니다.
				</li>
			</ol>
			<h4 class="tit02">제11조(회원의 의무)</h4>
			<p>회원은 다음 행위를 하여서는 안 됩니다.</p>
			<ol>
				<li>
					① 신청 또는 변경 시 허위내용의 등록
				</li>
				<li>
					② 타인의 정보도용
				</li>
				<li>
					③ 공사가 게시한 정보의 변경
				</li>
				<li>
					④ 공사가 정한 정보 이외의 정보(컴퓨터 프로그램 등) 등의 송신 또는 게시
				</li>
				<li>
					⑤ 공사와 기타 제3자의 저작권 등 지적재산권에 대한 침해
				</li>
				<li>
					⑥ 공사 및 기타 제3자의 명예를 손상시키거나 업무를 방해하는 행위
				</li>
				<li>
					⑦ 외설 또는 폭력적인 메시지, 화상, 음성, 기타 미풍양속에 반하는 정보를 서비스에 공개 또는 게시하는 행위
				</li>
				<li>
					⑧ 공사의 동의 없이 영리를 목적으로 서비스를 사용하는 행위
				</li>
				<li>
					⑨ 기타 불법적이거나 부당한 행위
				</li>
			</ol>
			<h4 class="tit02">제12조(양도 금지)</h4>
			<p>회원은 서비스의 이용권한, 기타 이용 계약상 지위를 타인에게 양도, 증여할 수 없으며, 이를 담보로 제공할 수 없습니다.</p>
			<h4 class="tit02">제13조(게시물에 대한 권리 및 책임)</h4>
			<ol>
				<li>
					① 게시물에 대한 저작권을 포함한 모든 권리 및 책임은 이를 게시한 회원에게 있으며, 공사는 서비스 내에 게재할 권리를 갖습니다.
				</li>
				<li>
					② 공사는 회원이 서비스에 게시, 게재하거나 서비스를 통해 전송, 수신한 내용물 및 그 결과에 대하여 책임지지 않으며, 아래사항에 해당하는 경우 게시물을 임의로 삭제할 수 있습니다.
					<ol>
						<li>
							가. 타인을 비방하거나, 프라이버시를 침해하거나, 명예를 손상시키는 내용인 경우
						</li>
						<li>
							나. 공공질서 및 미풍양속에 위반되는 내용인 경우
						</li>
						<li>
							다. 서비스의 안정적인 운영에 지장을 주거나 줄 우려가 있는 경우
						</li>
						<li>
							라. 범죄행위에 관련된다고 판단되는 내용인 경우
						</li>
						<li>
							마. 공사의 지적재산권, 타인의 지적재산권 등 기타 권리를 침해하는 내용인 경우
						</li>
						<li>
							바. 특정제품의 선전 등 기타 상용목적으로 게시되는 내용인 경우
						</li>
						<li>
							사. 입력된 정보를 무단 개조하는 경우
						</li>
						<li>
							아. 타 회원의 회원 ID, 비밀번호를 도용하는 경우
						</li>
						<li>
							자. 게시판의 목적에 맞지 않는 사이버 시위 및 도배 목적의 내용인 경우
						</li>
						<li>
							차. 기타 관계법령에 위반된다고 판단되는 경우
						</li>
					</ol>
				</li>
			</ol>
			<h4 class="tit02">제14조(책임제한)</h4>
			<ol>
				<li>
					① 공사는 천재지변 또는 이에 준하는 불가항력으로 인하여 서비스를 제공할 수 없는 경우에는 서비스 제공에 관한 책임을 지지 않습니다.
				</li>
				<li>
					② 공사는 회원의 귀책사유로 인한 서비스 이용의 장애에 대하여는 책임을 지지 않습니다.
				</li>
				<li>
					③ 공사는 회원이 서비스와 관련하여 게재한 정보, 자료, 사실의 신뢰도, 정확성 등의 내용에 관하여는 책임을 지지 않습니다.
				</li>
				<li>
					④ 공사는 회원 간 또는 회원과 제3자 상호간에 서비스를 매개로 하여 거래 등을 한 경우에는 책임을 지지 않습니다.
				</li>
			</ol>
			<h4 class="tit02">제15조(분쟁의 해결)</h4>
			<p>본 약관은 대한민국법령에 의하여 규정되고 이행되며, 서비스 이용과 관련하여 공사와 회원간에 발생한 분쟁에 대해서는 민사소송법상의 주소지를 관할하는 법원을 합의관할로 합니다.</p>
			<h4 class="tit02">제16조(규정의 준용)</h4>
			<p>본 약관에 명시되지 않은 사항에 대해서는 관련법령에 의하고, 법에 명시되지 않은 부분에 대하여는 관습에 의합니다.</p>
			<h4 class="tit02">■ 부칙</h4>
			<p>본 약관은 2018년 9월 4일부터 적용됩니다.</p>
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
		
	</script>
</body>
</html>