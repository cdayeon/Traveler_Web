# Traveler : 우리나라 즐겨차키 (국내 여행 사이트)
### Team project : 김요나, 김한결, 성진영, 정찬식, 천다연
### 사용한 기술 스택 : Java, html, css, js
# 1. 주제 선정 이유
* 코로나 종식으로 사람들이 대부분 해외로 여행을 가는 상황이 아쉬워 **국내에 숨겨진 여행지를 소개**하는 목적으로 만들게 되었다.
* 기존의 여행사이트를 모티브로 하여 국내 여행지 소개를 하되, **여행자들이 여행 후기를 작성하여 공유를 목적으로 하는 여행사이트를 개발**하였다.
* 여행 후기에 초점을 맞춰서 더 생동감있고 최신 정보를 알 수 있도록 하였다.
------
# 2. 프로젝트 짜임
## 2.1 Traveler 데이터베이스
* 총 **10개**의 테이블과 **7개**의 시퀀스를 생성했다.
<br>
<img width="260" alt="스크린샷 2023-07-10 오후 3 58 35" src="https://github.com/cdayeon/Traveler_Web/assets/119835857/4bd89c3e-1b46-4e91-b878-dc2bf9a07703">
<br>
<img width="260" alt="스크린샷 2023-07-10 오후 4 00 23" src="https://github.com/cdayeon/Traveler_Web/assets/119835857/73e2f4f7-22fb-49c0-ad64-48bf50190336">

* **AREA** : 지역별 여행지 소개 정보가 담겨있는 데이터 <br>
* **LIKEIT** : 회원이 여행 후기 게시글에 '좋아요'를 누를 수 있도록 생성한 데이터 <br>
* **MEMBER** : 회원의 이름, id, 비밀번호, 이메일, 전화번호, 생년월일이 담길 데이터 <br>
* **MUST_EAT** : 지역별 음식점 정보가 담겨있는 데이터 <br>
* **MYIMG** : 마이페이지의 이미지를 변경할 수 있도록 생성한 데이터 <br>
* **QNA** : 회원이 문의사항을 작성하면 제목, 작성자, 내용이 담길 데이터 <br>
* **REGION** : 메인페이지를 관리할 데이터 <br>
* **REGION_TOURISM** : 지역별 관광사이트가 담겨있는 데이터 <br>
* **REVIEW** : 회원이 여행 후기를 작성하면 제목, 내용, 지역, 등록날짜가 담길 데이터 <br>
* **REVIEW_COMMENT** : 여행 후기 게시글의 답변이 달리면 id, 답변 내용, 등록날짜가 담길 데이터 <br>
<br>

## 2.2 Spring Framework
<img width="274" alt="스크린샷 2023-07-03 오전 1 11 17" src="https://github.com/cdayeon/Traveler_Web/assets/119835857/0a00d5b3-35ef-4bea-b7ee-19b246537067">

* **Controller, DAO, VO**를 각각의 패키지에 나누어서 관리했다.
* **util패키지**는 **페이징 처리를 관리**하는 패키지이다.
<br>
<img width="286" alt="스크린샷 2023-07-03 오전 1 11 58" src="https://github.com/cdayeon/Traveler_Web/assets/119835857/a13bf55b-78bf-43b5-8314-e451d491fc25">

* **데이터 베이스 연결** 및 **SQL 명령문을 작성하는 xml파일**이다.
<br>
<img width="359" alt="스크린샷 2023-07-03 오전 1 14 11" src="https://github.com/cdayeon/Traveler_Web/assets/119835857/8783a0eb-3e00-480f-ae2e-83f6f3083de5">

* JSP는 영역에 맞게 나누어서 관리했다.

------
# 3. 프로젝트 시현
## 3.1 홈페이지
<img width="1427" alt="스크린샷 2023-07-10 오후 5 02 51" src="https://github.com/cdayeon/Traveler_Web/assets/119835857/b355e791-a098-45cc-98ec-b6daf56570cb">

* 즐겨차키 메인페이지로 header에는 홈페이지의 **로고, 지역, 여행후기, 문의사항, 검색, 로그인**이 있다.
* 다른 페이지들에서 **로고와 홈**을 누르면 메인페이지로 이동한다.
* **지역, 여행후기, 문의사항**을 누르면 각각의 페이지로 이동한다.
* 로그인 이미지를 누르면 로그인 페이지로 이동한다.
* 메인페이지의 <U>이미지와 자세히보기</U>를 누르면 해당 정보를 가진 **여행페이지 구석구석**으로 이동한다.

```
<head>
  <script type="text/javascript">
      function search(){
         var region = document.getElementById("search-region").value;
         var searchInput = document.getElementById('search-region');
         var searchImg = document.getElementById('search-img');
         
         if (searchInput.value.trim() == '') {
               alert('텍스트가 비어있습니다. 지역이름을 입력해주세요.'); // 텍스트가 비어있는 상태에서 돋보기 버튼을 누르면 alert을 띄우도록 설정
               return;
             } else {
               // 검색 페이지로 이동하는 로직
             location.href="area_info_result.do?a_region="+region;
             }
      }
  </script>
</head>
<body>
  <div>
    <input id="search-region" class="search-input" type="text" placeholder="어디로 어떤 여행을 떠날 건가요?">
    <img id="search-img" src="resources/img/search2.jpg" onclick="search()">
  </div>
</body>
```
* 검색란에 **지역**을 검색하면 해당 지역의 여행 정보를 가지고 있는 **지역 페이지로 이동**
 
```
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
```
* 홈페이지의 메인 타이틀과 이미지, 배경색은 일정 시간마다 변경되도록 구현했다.
<br>
<img width="1427" alt="스크린샷 2023-07-10 오후 5 10 00" src="https://github.com/cdayeon/Traveler_Web/assets/119835857/9a144a3c-f4fe-4ad1-bbcf-8da83ef69414">

* 홈페이지의 하단에도 슬라이드 배너 구현했다. (js/slide.js와 views/main/mainpage.jsp파일의 css 참고바람.)
* footer에는 국내 여행사이트 SNS로 이동할 수 있도록 구현했다.

## 3.2 로그인 페이지
```
<script>
	//ID/비밀번호 유효성 검사
	function userlogin(f) {
		var id = f.id.value.trim();
		var pw = f.pw.value.trim();
		
		if(id==''){
			alert('아이디를 입력해주세요.');
			return;
		}
		if(pw==''){
			alert('비밀번호를 입력해주세요.');
			return;
		}
		
		var url ='userlogin.do';
		var param="id="+id + "&pw="+pw;
		
		sendRequest(url,param,C_login,"POST");
	}
</script>
```
<br>
<img width="1440" alt="스크린샷 2023-07-14 오후 9 20 06" src="https://github.com/cdayeon/Traveler_Web/assets/119835857/06617a6c-d8f6-4cca-a311-7b638090857b">

* 메인페이지의 header에서 로그인 이미지를 누르면 로그인 페이지로 이동한다.
* 아이디와 비밀번호가 비어있는 채로 로그인을 시도할 경우, 유효성 검사를 통해 아이디와 비밀번호를 입력해달라는 경고창이 나타난다.

```
<div class="header-mypage">
    <c:choose>
	<!-- 로그인이 되어있을 경우, 마이페이지 이미지가 보이도록 설정 -->
       <c:when test="${not empty vo}">
	  <img id="mypage-img" alt="마이 페이지" src="resources/img/user.png" onclick="location.href='mypage.do'">
       </c:when>   
    </c:choose>
</div>
<div class="header-btn">
	<c:choose>
		<!-- 로그인이 되어있지 않을 경우, 로그인 이미지가 보이도록 설정 -->
		<c:when test="${empty vo}">
			<img class="header-log" src="resources/img/login2.jpg" alt="로그인" align="right" onclick="location.href='nomal_login.do'">
		</c:when>
		<!-- 로그인이 되어있을 경우, 로그아웃 이미지가 보이도록 설정 -->
		<c:when test="${not empty vo}">
			<img class="header-log" src="resources/img/logout2.jpg" alt="로그아웃" align="right" onclick="location.href='logout.do'">
		</c:when>
	</c:choose>	
</div>
```
<img width="1428" alt="스크린샷 2023-07-20 오후 11 55 18" src="https://github.com/cdayeon/Traveler_Web/assets/119835857/f89d91e2-2e3a-4d28-bc48-7d5c9db7fcb8">


* 로그인을 하면 header의 로그인 이미지가 **마이페이지**와 **로그아웃**이미지로 변경된다.


## 3.3 회원가입 페이지
```
<script type="text/javascript">
	//중복체크 확인용
	var id_check=false;
	//관리자 확인용
	var admin = "admin";
	function check() {
		//중복체크
		var id = document.getElementById("id").value.trim();
		if(id == 'admin') { //admin아이디는 관리자만 사용할 수 있도록 제한
			alert('사용할 수 없는 아이디 입니다.');
			return;
		}
		if(id==''){
			alert('아이디를 입력해주세요.');
			return;
		}
			var url = "id_check.do";
			var param= "id="+encodeURIComponent(id);
			
			sendRequest(url,param,C_id,"POST");	
	}
			
	function C_id() {
		if(xhr.readyState==4&&xhr.status==200){
		
			var data = xhr.responseText;
			var json = (new Function('return'+data))();
			
			if(json[0].res=='no'){
				alert('이미 사용중인 아이디입니다.');
				return;
			}else{
				alert('사용 가능한 아이디 입니다.');
				id_check=true;
			}
		}
	}
			
	function recheck() {
		id_check=false;
	}
			
	function insert(f) {
		
		var id =f.id.value.trim();
		var pw =f.pw.value.trim();
		var c_pw =f.c_pw.value.trim();
		var name =f.name.value.trim();
		var email =f.email.value.trim();
		var tel =f.tel.value.trim();
		var birth =f.birth.value.trim();

		//회원가입 유효성 검사
		if(id==''){
			alert('아이디를 입력해주세요.');
			return;
		}
		
		if(!id_check){
			alert('아이디 중복여부를 확인해주세요!')
			return;
		}
		
		if(pw==''){
			alert('비밀번호를 입력해주세요');
			return;
		}
		if(c_pw == '') {
			alert('비밀번호를 확인해주세요');
			return;
		}
		if(c_pw!=pw){
			alert('비밀번호가 다릅니다!');
			return;
		}
		if(name==''){
			alert('이름을 입력해주세요.')
			return;
		}
		if(email==''){
			alert('이메일을 입력해주세요.')
			return;
		}
		if(tel==''){
			alert('전화번호를 입력해주세요.')
			return;
		}
		if(birth==''){
			alert('생년월일을 입력해주세요(8자)')
			return;
		}
		
		f.method="POST";
		f.action="insert.do"
		f.submit();
		
	}
</script>
```
<br>
<img width="1440" alt="스크린샷 2023-07-14 오후 9 24 58" src="https://github.com/cdayeon/Traveler_Web/assets/119835857/3d0cf530-f09e-4842-b74c-dbae45ee310e">
<br>
<img width="1440" alt="스크린샷 2023-07-14 오후 9 27 14" src="https://github.com/cdayeon/Traveler_Web/assets/119835857/b90d7852-fb0a-42ab-b598-325560d04982">
<br>
<img width="1440" alt="스크린샷 2023-07-14 오후 9 28 36" src="https://github.com/cdayeon/Traveler_Web/assets/119835857/2b5e2eb1-46e9-4be3-ac70-86a8c3bd1c3f">

* 로그인 페이지에서 **회원가입 버튼**을 누르면 회원가입 페이지로 이동한다.
* 회원가입의 입력칸이 비워져있으면, 유효성 검사를 통해 입력칸을 입력해달라는 경고창이 나타난다.
* 중복된 아이디가 있거나, 아이디 중복체크를 하지 않으면 회원가입이 불가하도록 제한을 두었다.


## 3.4 지역 페이지
<img width="1440" alt="스크린샷 2023-07-14 오후 9 35 11" src="https://github.com/cdayeon/Traveler_Web/assets/119835857/76663dfd-a9e3-4440-91dc-b05e7cb11653">
<br>
<br>
<img width="1440" alt="스크린샷 2023-07-14 오후 9 36 08" src="https://github.com/cdayeon/Traveler_Web/assets/119835857/579c8883-53c8-4fe9-8c30-e63a89a16e3f">

* 각각의 **지역**버튼을 누르면 해당 지역을 소개하는 페이지로 이동한다.
* 각 지역의 관광지, 행사, 맛집 정보를 보여주는 페이지이다.


## 3.5 여행 후기 페이지
<img width="1440" alt="스크린샷 2023-07-14 오후 9 44 39" src="https://github.com/cdayeon/Traveler_Web/assets/119835857/f8db27ed-caa4-4f07-bef2-4efc415eb1a3">
<br>
<img width="1440" alt="스크린샷 2023-07-14 오후 9 46 10" src="https://github.com/cdayeon/Traveler_Web/assets/119835857/d7e46149-7622-4880-bd2d-b9671ebf88c9">

* 여행 후기 페이지는 로그인을 하지 않으면 이용할 수 없도록 제한을 두었다.
* 로그인 후 이용이 가능하도록, **로그인하기**버튼을 통해 **로그인 페이지**로 이동한다.
* 로그인 후 로그인하기 버튼이 **등록하기**버튼으로 변경된 것을 확인할 수 있다.

<br>
<img width="1440" alt="스크린샷 2023-07-14 오후 10 58 35" src="https://github.com/cdayeon/Traveler_Web/assets/119835857/8ce9df09-3604-4f7a-8c3f-18bb3180c9e7">
<br>
<img width="1440" alt="스크린샷 2023-07-14 오후 10 58 56" src="https://github.com/cdayeon/Traveler_Web/assets/119835857/bc0f5e25-cdc2-4e68-b9a1-b59de44b004e">

* **지역**을 선택하고 **제목, 여행 후기, 사진**을 선택한다.
* 입력을 완료하고 **작성하기** 버튼을 누르면 여행 후기가 등록된다.

<br>
<img width="1440" alt="스크린샷 2023-07-14 오후 10 22 25" src="https://github.com/cdayeon/Traveler_Web/assets/119835857/67fc2473-d670-49f9-97ec-7b06293afee0">

* 여행 후기 페이지에서 등록된 여행 후기의 **대표 이미지, 제목**이 보이는 것을 확인할 수 있다.

<br>
<img width="1440" alt="스크린샷 2023-07-14 오후 10 38 28" src="https://github.com/cdayeon/Traveler_Web/assets/119835857/8c618fb1-776b-4a12-bec7-887a5f55f2b7">
<br>
<img width="1440" alt="스크린샷 2023-07-14 오후 10 40 32" src="https://github.com/cdayeon/Traveler_Web/assets/119835857/f54ae643-61d5-468e-bad4-1131c3edb724">

* **제목**을 누르면 여행 후기의 **상세보기**가 가능하다.
* 등록한 여러 장의 사진과 내용을 볼 수 있고, 해당 후기에 **좋아요**와 **댓글**을 남길 수 있다.


## 3.6 여행지도 페이지
<img width="1440" alt="스크린샷 2023-07-14 오후 10 59 59" src="https://github.com/cdayeon/Traveler_Web/assets/119835857/8b409e9f-1bac-455a-bdd9-dd0593a9b27c">

* **카카오지도 API**를 활용하여 지역 맛집, 관광지를 검색하면 검색 주제와 관련된 장소들이 검색된다.
* 예를 들어, **홍대 맛집**을 검색하면 홍대 내에 음식점 위치들을 마커로 표시해준다.


## 3.7 문의사항 페이지
<img width="1440" alt="스크린샷 2023-07-14 오후 11 04 03" src="https://github.com/cdayeon/Traveler_Web/assets/119835857/80beb768-1dbc-4a20-8ae0-b4e6eaaa4efb">

* 문의사항 페이지도 여행 후기 페이지와 마찬가지로 **로그인**을 해야만 게시글 작성이 가능하다.
* 로그인이 되어있지 않은 상태에서 **글쓰기**버튼을 누르면 **로그인 페이지**로 이동한다.

<br>
<img width="1440" alt="스크린샷 2023-07-14 오후 11 09 14" src="https://github.com/cdayeon/Traveler_Web/assets/119835857/0a883b24-82a1-41bc-83f4-6b537527cae5">

* 문의사항에서는 **제목, 이름, 내용, 비밀번호**를 반드시 입력해야한다.
* **등록**버튼을 누르면 게시글이 등록되면서 문의사항 페이지로 이동한다.
* **취소**버튼을 누르면 게시글이 등록되지 않고 문의사항 페이지로 이동한다.

<br>
<img width="1440" alt="스크린샷 2023-07-14 오후 11 14 52" src="https://github.com/cdayeon/Traveler_Web/assets/119835857/f8743a88-2248-45d1-a2b0-7b1669e96499">
<br>
<img width="1440" alt="스크린샷 2023-07-14 오후 11 16 47" src="https://github.com/cdayeon/Traveler_Web/assets/119835857/5fe2783f-bba1-4ea1-91e2-25b9ef36def1">

* 제목을 누르면 문의사항 **상세보기**가 가능하다.
* 비밀번호를 입력해야만 **삭제**버튼을 눌렀을 시 삭제가 가능하다.
* **목록**버튼을 누르면 문의사항 목록으로 다시 되돌아간다.


## 3.8 관리자
<img width="1440" alt="스크린샷 2023-07-14 오후 11 19 08" src="https://github.com/cdayeon/Traveler_Web/assets/119835857/3658670c-5804-4e94-b17e-895991c0b3a8">

* 관리자 아이디는 **admin**으로 정하고, 회원이 해당 아이디로 회원가입을 시도할 경우 **사용할 수 없는 아이디입니다**라는 경고창이 표시된다.
* 관리자로 로그인 했을 시 **관리자입니다**라는 안내문구가 표시된다.
* 관리자의 역할은 **게시글 답변 제공**이다.

<br>
<img width="1440" alt="스크린샷 2023-07-14 오후 11 22 59" src="https://github.com/cdayeon/Traveler_Web/assets/119835857/85d8ce30-346e-4084-bfbb-5880495b842e">
<br>
<img width="1440" alt="스크린샷 2023-07-14 오후 11 24 05" src="https://github.com/cdayeon/Traveler_Web/assets/119835857/4a1bfcb9-a197-4b4a-b407-2b200896c19c">
<br>
<img width="1440" alt="스크린샷 2023-07-14 오후 11 24 17" src="https://github.com/cdayeon/Traveler_Web/assets/119835857/b6cc291c-effb-429e-90c4-d0b361795802">

* 관리자로 로그인했을 시, 문의사항 상세보기를 하면 **답변**버튼이 나타난다.
* 관리자만 회원의 문의사항에 답변을 등록할 수 있다.
* 관리자가 회원의 문의사항에 답변을 등록하면, 회원의 게시글 바로 아래에 답변이 등록된 것을 확인할 수 있다.


## 3.9 마이페이지
<img width="1440" alt="스크린샷 2023-07-14 오후 11 28 35" src="https://github.com/cdayeon/Traveler_Web/assets/119835857/ce3fe397-61a8-4d55-98c6-06d6af6f9bf1">
<br>
<img width="1440" alt="스크린샷 2023-07-14 오후 11 29 51" src="https://github.com/cdayeon/Traveler_Web/assets/119835857/c25b54ae-31c1-41ac-be83-b75780b22478">
<br>
<img width="1440" alt="스크린샷 2023-07-14 오후 11 30 01" src="https://github.com/cdayeon/Traveler_Web/assets/119835857/80999435-9951-46de-99f8-610553edc7bc">
<br>
<img width="1440" alt="스크린샷 2023-07-14 오후 11 30 13" src="https://github.com/cdayeon/Traveler_Web/assets/119835857/83f788bb-a53b-42da-976c-2cf47db74801">
<br>
<img width="1440" alt="스크린샷 2023-07-14 오후 11 30 24" src="https://github.com/cdayeon/Traveler_Web/assets/119835857/5757b8a4-1c52-442d-a2d3-298f26eca3df">
<br>
<img width="1440" alt="스크린샷 2023-07-14 오후 11 30 37" src="https://github.com/cdayeon/Traveler_Web/assets/119835857/71498f37-7b0a-464a-ab2f-9ba849d8914a">

* 회원의 마이페이지로 **회원정보수정, 회원탈퇴, 프로필 이미지 변경**이 가능하다.
* 해당 회원이 작성한 **문의사항 게시글**과 **좋아요목록**을 확인할 수 있다.

------
# 4. 프로젝트 회고
* 웹 사이트를 반응형으로 개발하지 않아, 화면의 해상도가 달라지면 깨지게 된다. 반응형을 적용하지 않은 점이 매우 아쉽다.
* 문의사항에서 내용을 작성할 때, 내용의 양이 많아지면 에러가 발생한다. -> 해당 에러는 DB에서 VACHAR2의 용량을 1000으로 변경하여 에러를 해결했다.
* 회원가입, 로그인, 회원정보수정 페이지들의 css가 아쉽다.
