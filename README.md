# Traveler : 우리나라 즐겨차키 (국내 여행 사이트)
### Team project : 김요나, 김한결, 성진영, 정찬식, 천다연
### 사용한 기술 스택 : Java, html, css, js
# 1. 주제 선정 이유
* 코로나 종식으로 사람들이 대부분 해외로 여행을 가는 상황이 아쉬워 국내에 숨겨진 여행지를 소개하는 목적으로 만들게 되었다.
* 기존의 여행사이트를 모티브로 하여 국내 여행지 소개를 하되, 여행자들이 여행 후기를 작성하여 공유를 목적으로 하는 여행사이트를 개발하였다.
* 여행 후기에 초점을 맞춰서 더 생동감있고 최신 정보를 알 수 있도록 하였다.
------
# 2. 프로젝트 짜임
## 2.1 Traveler 데이터베이스
* 총 **10개**의 테이블과 **7개**의 시퀀스를 생성했다.
<br>
<img width="260" alt="스크린샷 2023-07-10 오후 3 58 35" src="https://github.com/cdayeon/Traveler_Web/assets/119835857/4bd89c3e-1b46-4e91-b878-dc2bf9a07703">
<br>
<img width="260" alt="스크린샷 2023-07-10 오후 4 00 23" src="https://github.com/cdayeon/Traveler_Web/assets/119835857/73e2f4f7-22fb-49c0-ad64-48bf50190336">

* AREA : 지역별 여행지 소개 정보가 담겨있는 데이터 <br>
* LIKEIT : 회원이 여행 후기 게시글에 '좋아요'를 누를 수 있도록 생성한 데이터 <br>
* MEMBER : 회원의 이름, id, 비밀번호, 이메일, 전화번호, 생년월일이 담길 데이터 <br>
* MUST_EAT : 지역별 음식점 정보가 담겨있는 데이터 <br>
* MYIMG : 마이페이지의 이미지를 변경할 수 있도록 생성한 데이터 <br>
* QNA : 회원이 문의사항을 작성하면 제목, 작성자, 내용이 담길 데이터 <br>
* REGION : 메인페이지를 관리할 데이터 <br>
* REGION_TOURISM : 지역별 관광사이트가 담겨있는 데이터 <br>
* REVIEW : 회원이 여행 후기를 작성하면 제목, 내용, 지역, 등록날짜가 담길 데이터 <br>
* REVIEW_COMMENT : 여행 후기 게시글의 답변이 달리면 id, 답변 내용, 등록날짜가 담길 데이터 <br>
<br>

## 2.2 Spring Framework
<img width="274" alt="스크린샷 2023-07-03 오전 1 11 17" src="https://github.com/cdayeon/Traveler_Web/assets/119835857/0a00d5b3-35ef-4bea-b7ee-19b246537067">

* Controller, DAO, VO를 각각의 패키지에 나누어서 관리했다.
* util패키지는 페이징 처리를 관리하는 패키지이다.
<br>
<img width="286" alt="스크린샷 2023-07-03 오전 1 11 58" src="https://github.com/cdayeon/Traveler_Web/assets/119835857/a13bf55b-78bf-43b5-8314-e451d491fc25">

* 데이터 베이스와 연결 및 SQL 명령문이다.
<br>
<img width="359" alt="스크린샷 2023-07-03 오전 1 14 11" src="https://github.com/cdayeon/Traveler_Web/assets/119835857/8783a0eb-3e00-480f-ae2e-83f6f3083de5">

* JSP페이지도 각각 나누어서 관리했다.

------
# 3. 프로젝트 시현
## 홈페이지
<img width="1427" alt="스크린샷 2023-07-10 오후 5 02 51" src="https://github.com/cdayeon/Traveler_Web/assets/119835857/b355e791-a098-45cc-98ec-b6daf56570cb">

* 즐겨차키 홈페이지로 header에는 홈페이지의 로고, 지역, 여행후기, 문의사항, 검색, 로그인이 있다.
* 로고와 '홈'을 누르면 해당 홈페이지로 이동한다.
* '지역', '여행후기', '문의사항'을 누르면 각각의 페이지로 이동한다.
* 검색에 서울, 인천, 부산 등등 '지역'을 검색하면 지역 페이지의 해당 지역으로 이동한다.
* 로그인 이모티콘을 누르면 로그인 페이지로 이동한다.
* 홈페이지의 메인 타이틀과 이미지, 배경색은 일정 시간마다 변경되도록 구현했다.
<br>
<img width="1427" alt="스크린샷 2023-07-10 오후 5 10 00" src="https://github.com/cdayeon/Traveler_Web/assets/119835857/9a144a3c-f4fe-4ad1-bbcf-8da83ef69414">

* 홈페이지의 하단에도 슬라이드 배너 구현했다.
* footer에는 국내 여행사이트 SNS로 이동할 수 있도록 구현했다.

## 로그인 페이지
<img width="1440" alt="스크린샷 2023-07-10 오후 5 34 14" src="https://github.com/cdayeon/Traveler_Web/assets/119835857/96047e08-49ed-4ee2-88ba-411d867e8d79">
<br>
<img width="1440" alt="스크린샷 2023-07-14 오후 9 20 06" src="https://github.com/cdayeon/Traveler_Web/assets/119835857/06617a6c-d8f6-4cca-a311-7b638090857b">

* header에서 로그인 이미지를 누르면 로그인 페이지로 이동한다.
* 아이디와 비밀번호가 비어있는 채로 로그인을 시도할 경우, 아이디와 비밀번호를 입력해달라는 경고창이 나타난다.

<img width="1440" alt="스크린샷 2023-07-14 오후 9 39 38" src="https://github.com/cdayeon/Traveler_Web/assets/119835857/216be069-5624-4f6f-a579-017882eef281">

* 로그인을 하면 header의 로그인 이미지가 **마이페이지**와 **로그아웃**이미지로 변경된다.

## 회원가입 페이지
<img width="1440" alt="스크린샷 2023-07-14 오후 9 23 37" src="https://github.com/cdayeon/Traveler_Web/assets/119835857/5e2d4771-4fef-42fc-9be5-ded458ea096a">
<br>
<br>
<img width="1440" alt="스크린샷 2023-07-14 오후 9 24 58" src="https://github.com/cdayeon/Traveler_Web/assets/119835857/3d0cf530-f09e-4842-b74c-dbae45ee310e">

* 로그인 페이지에서 **회원가입 버튼**을 누르면 회원가입 페이지로 이동한다.
* 로그인 페이지와 마찬가지로 입력칸이 비워져있으면, 입력칸을 입력해달라는 경고창이 나타난다.

<br>
<img width="1440" alt="스크린샷 2023-07-14 오후 9 27 14" src="https://github.com/cdayeon/Traveler_Web/assets/119835857/b90d7852-fb0a-42ab-b598-325560d04982">
<br>
<br>
<img width="1440" alt="스크린샷 2023-07-14 오후 9 28 36" src="https://github.com/cdayeon/Traveler_Web/assets/119835857/2b5e2eb1-46e9-4be3-ac70-86a8c3bd1c3f">

* 아이디 중복체크를 하지 않으면 회원가입이 불가하도록 제한을 두었다.
* 중복된 아이디가 있으면 회원가입이 불가하도록 제한을 두었다.

## 지역 페이지
<img width="1440" alt="스크린샷 2023-07-14 오후 9 35 11" src="https://github.com/cdayeon/Traveler_Web/assets/119835857/76663dfd-a9e3-4440-91dc-b05e7cb11653">
<br>
<br>
<img width="1440" alt="스크린샷 2023-07-14 오후 9 36 08" src="https://github.com/cdayeon/Traveler_Web/assets/119835857/579c8883-53c8-4fe9-8c30-e63a89a16e3f">

* 각각의 **지역**버튼을 누르면 해당 지역을 소개하는 페이지로 이동한다.
* 각 지역의 관광지, 행사, 맛집 정보를 보여주는 페이지이다.

## 
