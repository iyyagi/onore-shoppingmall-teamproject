# :pushpin:남성구두 수제화 쇼핑몰(Onore Team Project)
<hr>

## 1. 제작 기간 & 참여 인원
프로젝트 기간 2022.02.13 ~ 2022.03.17(4주) <br>
프로젝트 인원 : 5명

![메인](https://user-images.githubusercontent.com/115913274/225919477-74ebd1a4-c6c1-42a6-b7c6-6270233d5d94.png)


## 2. 사용 기술<br>
![사용기술](https://user-images.githubusercontent.com/115913274/226086031-faccc5e6-e769-4bcd-9bba-6945566ce0f0.JPG)

## 3. ER Diagram




## 4. Usecase Diagram
![usecase](https://user-images.githubusercontent.com/115913274/225920164-f885f38b-62fc-4da9-aa29-b4bfb6ef664e.png)


## 5. 기능
- 전체적인 UI는 CSS, JS를 이용하여 구

<details>
<summary><b>기능 설명</b></summary>
<div markdown="1">

### 5.1. 첫 시작 
![썸네일](https://user-images.githubusercontent.com/115913274/224521385-8c18030d-b6eb-413a-89dd-e77c77ad8f7d.JPG) <br>
화면을 마우스로 클릭 하면 키오스크로 이동된다.

### 5.2. 메뉴 선택
![키오스크](https://user-images.githubusercontent.com/115913274/224521414-c2f5162a-6b28-4e3e-8e98-6dd723d8c57d.JPG) <br>
![옵션](https://user-images.githubusercontent.com/115913274/224521429-ef3a1bb3-93dc-4b18-bb98-5c0d6c45abf5.JPG)
![결제하기](https://user-images.githubusercontent.com/115913274/224521461-08f8036d-4b9e-4cac-b6a1-fc918196e6e0.JPG)
![결제](https://user-images.githubusercontent.com/115913274/224521450-1e0dc2b8-6af4-45a3-94e4-4750eeba4bfd.JPG)
![결제완료](https://user-images.githubusercontent.com/115913274/224521474-5dd49e3c-b821-48d9-a39f-b1aa9cf0f721.JPG) <br>
메뉴를 선택 및 옵션을 설정하여 결제를 진행한다.



### 5.3. 관리자 화면 이동
![첫 화면](https://user-images.githubusercontent.com/115913274/224521505-0cf32d38-163d-4aff-a38a-76f478b90371.JPG)
![관리페이지](https://user-images.githubusercontent.com/115913274/224521514-3118e78e-217b-4e91-8c66-831aae249a53.JPG) <br>

키오스크 메인화면 홈버튼을 누르면 관리자로 넘어갈 수 있다.

### 5.4. 상품관리
![상품관리](https://user-images.githubusercontent.com/115913274/224521602-1998635b-3da3-4e05-9f85-be7abec13be1.JPG)
![수정](https://user-images.githubusercontent.com/115913274/224521605-affd0bf3-49cc-47b6-a604-5c234581f442.JPG)
![삭제](https://user-images.githubusercontent.com/115913274/224521609-e7a9daac-ede8-4b29-bdee-8e0aac2d785d.JPG) <br>

 상품 관리에서 키오스크의 메뉴를 추가, 수정, 삭제가 가능하다.

 ### 5.5. 마감
![마감](https://user-images.githubusercontent.com/115913274/224521672-e9815cb0-0587-4d22-9f40-cd3608122d82.JPG)<br>
하루 매출의 결과를 확인할 수 있다.
 
 ### 5.6. 영수증 조회
 ![영수증 조회](https://user-images.githubusercontent.com/115913274/224521801-7127a6cd-c7b5-4a9d-a98f-31d20c35be18.JPG) <br>
 판매된 영수증을 조회할 수 있다. 환불을 하게되면 DB에서 삭제가 된다.
 
 ### 5.7. 매출요약
![일별차트](https://user-images.githubusercontent.com/115913274/224524740-1c445868-8361-430a-ab07-89cc3f6d286b.JPG)
![월별차트](https://user-images.githubusercontent.com/115913274/224524742-8fe11fa3-0524-4336-9b8f-105f5671df92.JPG)
![연별차트](https://user-images.githubusercontent.com/115913274/224524744-916a8387-6b7c-4820-a8e0-6091fd9cb1c3.JPG) 

판매가 완료된 상품의 경우 매출요약에서 확인이 가능하다 일, 월, 연으로 구분하여 매출 통계를 확인할 수 있다.
 <br>

</div>
</details>

</br>

## 6. 패키지 구성
![패키지구성](https://user-images.githubusercontent.com/115913274/224521912-bd07ea62-8d27-4461-9142-21203b1740d1.JPG)


## 7. 프로젝트 시연
![1차 프로젝트 시연](https://user-images.githubusercontent.com/115913274/224521096-1a348960-572c-4e2c-ad65-05d070aeb7d5.gif)

## 8. 문제점
 UI의 Combobox와 JChart를 연동하는 과정에서의 이슈

## 9. 해결방안
JTable, JChart 각각 별도의 SQL 구성이 필요했으며 스택오버플로우와 JFreeChart 개발자 가이드를 참고하여 해결하였음

## 10. 개인 회고
프로젝트의 주요 기능을 직접 설계하고 개발하면서 일부 미흡했던 문제 해결 방식을 개선할 수 있었다.
또한 처음으로 혼자가 아닌 팀원들과 함께 프로그램을 완성 시키면서 스스로의 프로그래밍에 대한 높은 관심과 집중력을 확인할 수 있는 계기가 되었다.
