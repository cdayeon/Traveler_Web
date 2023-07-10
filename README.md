# Traveler : 우리나라 즐겨차키 (국내 여행 사이트)
#### Team project : 김요나, 김한결, 성진영, 정찬식, 천다연
#### 사용한 기술 스택 : Java, html, css, js
## 1. 주제 선정 이유
+ 코로나 종식으로 사람들이 대부분 해외로 여행을 가는 상황이 아쉬워 국내에 숨겨진 여행지를 소개하는 목적으로 만들게 되었습니다.
+ 기존의 여행사이트를 모티브로 하여 국내 여행지 소개를 하되,여행자들이 여행 후기를 작성하여 공유를 목적으로 하는 여행사이트를 개발하였습니다.
+ 여행 후기에 초점을 맞춰서 더 생동감있고 최신 정보를 알 수 있도록 하였습니다.
---
## 2. 프로젝트 짜임
### 2.1 Traveler 데이터베이스
+ 총 **10개**의 테이블과 **7개**의 시퀀스 생성 <br>

<img width="260" alt="스크린샷 2023-07-10 오후 3 58 35" src="https://github.com/cdayeon/Traveler_Web/assets/119835857/4bd89c3e-1b46-4e91-b878-dc2bf9a07703"> <br>
<img width="260" alt="스크린샷 2023-07-10 오후 4 00 23" src="https://github.com/cdayeon/Traveler_Web/assets/119835857/73e2f4f7-22fb-49c0-ad64-48bf50190336">
<br>
<br>
+ AREA : 지역별 여행지 소개 정보가 담겨있는 데이터 <br>
+ LIKEIT : 회원이 여행 후기 게시글에 '좋아요'를 누를 수 있도록 생성한 데이터 <br>
+ MEMBER : 회원의 이름, id, 비밀번호, 이메일, 전화번호, 생년월일이 담길 데이터 <br>
+ MUST_EAT : 지역별 음식점 정보가 담겨있는 데이터 <br>
+ MYIMG : 마이페이지의 이미지를 변경할 수 있도록 생성한 데이터 <br>
+ QNA : 회원이 문의사항을 작성하면 제목, 작성자, 내용이 담길 데이터 <br>
+ REGION : 메인페이지를 관리할 데이터 <br>
+ REGION_TOURISM : 지역별 관광사이트가 담겨있는 데이터 <br>
+ REVIEW : 회원이 여행 후기를 작성하면 제목, 내용, 지역, 등록날짜가 담길 데이터 <br>
+ REVIEW_COMMENT : 여행 후기 게시글의 답변이 달리면 id, 답변 내용, 등록날짜가 담길 데이터 <br>

### 2.2 Spring Framework
+ Controller, DAO, VO를 각각의 패키지에 나누어서 관리
+ util패키지는 페이징 처리를 관리하는 패키지

<img width="274" alt="스크린샷 2023-07-03 오전 1 11 17" src="https://github.com/cdayeon/Traveler_Web/assets/119835857/0a00d5b3-35ef-4bea-b7ee-19b246537067">
<br>

+ 데이터 베이스와 연결 및 SQL문 명령문
<img width="286" alt="스크린샷 2023-07-03 오전 1 11 58" src="https://github.com/cdayeon/Traveler_Web/assets/119835857/a13bf55b-78bf-43b5-8314-e451d491fc25">

+ JSP페이지도 각각 나누어서 관리
<img width="359" alt="스크린샷 2023-07-03 오전 1 14 11" src="https://github.com/cdayeon/Traveler_Web/assets/119835857/8783a0eb-3e00-480f-ae2e-83f6f3083de5">
<br>

---
## 3. 프로젝트 시현
### 홈페이지
<img width="1427" alt="스크린샷 2023-07-10 오후 5 02 51" src="https://github.com/cdayeon/Traveler_Web/assets/119835857/b355e791-a098-45cc-98ec-b6daf56570cb">

+ 즐겨차키 홈페이지로 header에는 홈페이지의 로고, 지역, 여행후기, 문의사항, 검색, 로그인이 있다.
+ 로고와 '홈'을 누르면 해당 홈페이지로 이동
+ '지역', '여행후기', '문의사항'을 누르면 각각의 페이지로 이동한다.
+ 검색에 서울, 인천, 부산 등등 '지역'을 검색하면 지역 페이지의 해당 지역으로 이동한다.
+ 로그인 이모티콘을 누르면 로그인 페이지로 이동한다.
