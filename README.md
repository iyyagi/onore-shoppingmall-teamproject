# :pushpin:남성구두 수제화 쇼핑몰(Onore Team Project)
<hr>

http://118.67.135.214:8888/OnoreTeamProject/main/ <br>
FHD 1920 x 1080 최적화 <br>
관리자 ID : admin <br>
관리자 PW : 1q2w3e4r! <br>


## 1. 제작 기간 & 참여 인원
프로젝트 기간 2022.02.13 ~ 2022.03.17(약 5주) <br>
프로젝트 인원 : 5명

![메인](https://user-images.githubusercontent.com/115913274/225919477-74ebd1a4-c6c1-42a6-b7c6-6270233d5d94.png) <br>
![메인페이지](https://user-images.githubusercontent.com/115913274/226086462-27d793ed-7dc9-4e69-93e2-d4154d2d7ba0.png)



## 2. 사용 기술<br>
![기술](https://user-images.githubusercontent.com/115913274/226156447-d04d6508-eaf8-4ca8-b54d-bb9ad47c021b.JPG)

## 3. ER Diagram
![erd](https://user-images.githubusercontent.com/115913274/226086362-71784bdc-b6ca-4eac-aba7-6bed0fbdc6af.JPG)

## 4. Usecase Diagram
![usecase](https://user-images.githubusercontent.com/115913274/226086393-f2bea01a-5303-4ac3-bc32-5037c5f855fc.png)

## 5. 컨트롤러 구성
![컨트롤러](https://user-images.githubusercontent.com/115913274/226087062-e9b1d4ae-6df1-41bb-98a9-d1f0934a3454.JPG) <br>
서비스에서 비즈니스 로직을 포함하고 컨트롤러에서는 콜만 수행토록 구현

## 6. 패키지 구성
![패키지 구성](https://user-images.githubusercontent.com/115913274/226153349-c965e144-cd59-4329-be7b-267f361d0f3c.JPG) <br>

## 7. 구현 기능
- 전체적인 페이지는 CSS, JS를 사용하여 구현 

### 상품 카테고리 비동기 통신 구현
![bandicam-2023-03-19-16-02-02-212](https://user-images.githubusercontent.com/115913274/226159567-254c27e8-3a21-4a4d-bc69-332353d40ae8.gif)

- JavaScript로 비동기 요청 <br>
- ShopRestController, ShopService에서 요청 처리 후 반환<br>


### QnA 게시판 CRUD 구현
- QnaController 요청 후 QnaService에서 반환<br>

![CRUD](https://user-images.githubusercontent.com/115913274/226153204-cbd83108-3af2-4fc5-8af3-868220ada38d.gif)


### 마이페이지 구현
- VIEW : MemberController 요청 후 MemberService에서 반환<br>
- 더보기 : MyapgeController 요청 후 MyPagePopUpSerivce에서 반환<br>
![bandicam-2023-03-19-09-18-36-666](https://user-images.githubusercontent.com/115913274/226146952-ac6dfd0f-3183-4c46-bd5b-8f7a7093154a.gif)

### Kakao API 활용
![kakaoapi](https://user-images.githubusercontent.com/115913274/226154435-d9890159-824d-47a1-93d4-ee38861bccbe.JPG) <br>
![apicode](https://user-images.githubusercontent.com/115913274/226155876-881e15ed-f8e3-4022-b4b2-e2419163210b.JPG)

</br>


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
