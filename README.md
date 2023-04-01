# :pushpin:남성구두 수제화 쇼핑몰(Onore Team Project)
<hr>

http://118.67.135.214:8888/OnoreTeamProject/main/ <br>
네이버 클라우드 플랫폼 활용하여 홈페이지 배포 <br>
OS : CentOS 7, DB : Oracle XE <br>
FHD 1920 x 1080 최적화 <br>

※ 코드 수정 작업 중에는 홈페이지 접속이 원활하지 않을 수 있습니다.

## 1. 제작 기간 & 참여 인원
프로젝트 기간 2022.02.13 ~ 2022.03.21(5주) <br>
프로젝트 인원 : 5명

![메인](https://user-images.githubusercontent.com/115913274/225919477-74ebd1a4-c6c1-42a6-b7c6-6270233d5d94.png) <br>
![메인페이지](https://user-images.githubusercontent.com/115913274/226086462-27d793ed-7dc9-4e69-93e2-d4154d2d7ba0.png)

## 전체 기능

### 1. 회원가입, 로그인, 회원정보수정 구현
  - 회원가입 : 아이디 중복확인, 비밀번호 암호화, 정규 표현식 활용
  - 로그인 : 비밀번호 복호화, 세션 및 쿠키 저장
  - 아이디/비밀번호 찾기 : 이름, 아이디, 이메일 존재 여부 확인, 임시 비밀번호 생성 후 암호화 및 이메일 전송
  - 회원정보 및 비밀번호 수정 : 이메일/연락처 정규표현식, 신규 비밀번호 암호화
  - 회원탈퇴 : 세션 삭제 및 DB 삭제

### 2. 공지사항, About, 로케이션 구현
  - Location : 카카오 API 
  - 공지사항 : 게시판, 상세페이지 구현
  - About : About 페이지 구현
 
### 3. 상품 페이지, 파일 업로드, Qna 게시판 구현
  - 상품 페이지 카테고리 비동기 통신 구현
  - 상품 상세페이지 필요 기능 구현
  - 파일업로드 등록, 수정, 삭제 구현
  - Qna 게시판 등록, 수정, 삭제 구현
  - 에러페이지 처리 400, 404, 500
  - 네이버 클라우드 플랫폼 활용 : CentOS 7, Oracle DB 구축 / 배포
 
### 4. 상품 상세페이지, 페이징 처리, 후기 게시판 구현
  - 상품 상세페이지 옵션 선택, 주문하기 , 장바구니 버튼, 해당 상품 후기, 문의 구현
  - 게시판 페이지네이션 구현
  - 후기 게시판 등록, 수정, 삭제 구현
  - 마이페이지 내 후기 팝업창 구현
 
### 5. 장바구니, 주문 및 결제 구현
  - 장바구니 : 각 계정별 장바구니 페이지, 수량 변경, 상품 개별 주문, 선택 상품 주문, 전체 상품 주문, 선택 상품 삭제, 장바구니 비우기
  - 주문 : 주문자 및 배송지 정보 입력, 쿠폰 할인 및 포인트 할인, 결제 방식 선택
  - 결제 : 결제 API를 활용한 결제, 결제 완료 후 완료 데이터 전송
  - 주문 완료 : 주문한 상품 정보 출력

### 6. 관리자 페이지 구현
  - 매출 통계 : 일별, 월별, 연별 통계
  - 주문관리
  - 공지사항 등록 및 관리
  - 게시글 관리
  - 상품 관리
 <br>

## 2. 사용 기술<br>
![기술](https://user-images.githubusercontent.com/115913274/226156447-d04d6508-eaf8-4ca8-b54d-bb9ad47c021b.JPG)

## 3. ER Diagram
![erd](https://user-images.githubusercontent.com/115913274/226086362-71784bdc-b6ca-4eac-aba7-6bed0fbdc6af.JPG)

## 4. Usecase Diagram
![usecase](https://user-images.githubusercontent.com/115913274/226086393-f2bea01a-5303-4ac3-bc32-5037c5f855fc.png)

## 5. 컨트롤러 구성
![컨트롤러](https://user-images.githubusercontent.com/115913274/226087062-e9b1d4ae-6df1-41bb-98a9-d1f0934a3454.JPG) <br>
서비스에서 비즈니스 로직을 포함하고 컨트롤러에서는 콜만 수행토록 구현

## 6. 패키지 구성 (Controller, Service, DTO, mapper)
![패키지 구성](https://user-images.githubusercontent.com/115913274/226153349-c965e144-cd59-4329-be7b-267f361d0f3c.JPG) <br>

## 7. 구현 기능
- 전체적인 페이지는 CSS, JS를 사용하여 구현 

### 상품 카테고리 비동기 통신 구현
![bandicam-2023-03-19-16-02-02-212](https://user-images.githubusercontent.com/115913274/226159567-254c27e8-3a21-4a4d-bc69-332353d40ae8.gif)

- JavaScript로 비동기 요청 <br>
- ShopRestController, ShopService에서 요청 처리 후 반환<br>


### QnA 게시판 CRUD + 파일 업로드 구현
- QnaController 요청 후 QnaService에서 반환<br>
![CRUD](https://user-images.githubusercontent.com/115913274/226153204-cbd83108-3af2-4fc5-8af3-868220ada38d.gif)


### 마이페이지 구현
- VIEW : MemberController 요청 후 MemberService에서 반환<br>
- 더보기 : MyapgeController 요청 후 MyPagePopUpSerivce에서 반환<br>
![bandicam-2023-03-19-09-18-36-666](https://user-images.githubusercontent.com/115913274/226146952-ac6dfd0f-3183-4c46-bd5b-8f7a7093154a.gif)

</br>

### 에러페이지 구현
![error](https://user-images.githubusercontent.com/115913274/229286594-3851a516-d45d-4b02-993d-3f6ebfa4429f.JPG) 
에러페이지 처리 400, 404, 500

## 8. 문제점

프로젝트 기능 구현 중 사진 파일 업로드 구현이 가장 힘들었다.
1. 사진 업로드 시 중복되는 파일이름은 어떻게 처리할 것인지?
2. 사진 경로와 사진파일은 어떻게 데이터베이스에 저장할 것인지?


## 9. 해결방안
기본적인 파일 IO에 대한 이해가 필요했으며 데이터베이스에는 대부분 파일 자체를 저장하지 않는다는 것을 알게 되었다.<br>
1. 자바에서 사용 가능한 UUID (범용 고유 식별자)를 사용하여 중복되는 파일 이름을 해결하였다. <br>
2. 데이터베이스에 QNA_IMG_PATH, QNA_IMG_1 등 VARCHAR2 타입으로 경로와 이름만 저장하였다. <br>

![파일업로드](https://user-images.githubusercontent.com/115913274/226154045-aa17b171-7bc4-4f21-b005-7295fc444770.JPG) <br>
![파일저장](https://user-images.githubusercontent.com/115913274/226154200-7a9bdef1-addc-4dfb-b6fc-424fc89d2b53.JPG)

## 10. 개인 회고
프로젝트 전체적으로 봤을 때 혼자서 했으면 구현 못했을 기능들을 팀원들과 함께 의논하고 고민하면서 해결했던 기능들도 많이 있었다. <br>
학원 수업에서 배웠던 내용으로 최대한 구현해 보려고 노력했고 최대한 구글링 하지 않고 혼자서 해결하려는 시간을 많이 보냈던 것 같다.<br>
