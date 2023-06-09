<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ONÓRE</title>
<%@ include file="../header.jspf"%>
<link rel="icon" href="<%=request.getContextPath()%>/resources/review/image/파비콘.png">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/review/css/review_write.css">
<script src="<%=request.getContextPath()%>/resources/review/js/review_write.js" defer></script>
</head>
<body>

	<%@ include file="../top.jspf"%>

	<div class="main"
		style="padding-top: 127px; width: auto; margin: 50px; margin-top: 0px;">
		<hr>
		<div class="write">
		<form class="mb-3" id="myform" action="./write" method="POST" enctype="multipart/form-data">
		<input type="hidden" value="${product.product_num }" name="product_num">
			<div class="container">
				<div class="a">
					<div name="prd_img">
						<img src="${product.product_thumbnail_1 }">
					</div>
				</div>
				<div class="b">
					<table>
						<tr>
							<th id="prd_name">${product.product_name }후기</th>
						</tr>
						<tr>
							<th>
								<fieldset>
									<!--  <div class="text-bold">제품을 평가해주세요</div>-->
									<input type="radio" name="review_rating" value="5" id="rate1"> 
									<label for="rate1">★</label>
									<input type="radio" name="review_rating" value="4" id="rate2">
								 	<label for="rate2">★</label>
									<input type="radio" name="review_rating" value="3" id="rate3"> 
									<label for="rate3">★</label>
									<input type="radio" name="review_rating" value="2" id="rate4"> 
									<label for="rate4">★</label>
									<input type="radio" name="review_rating" value="1" id="rate5"> 
									<label for="rate5">★</label>
								</fieldset>
							</th>
						</tr>
					</table>
				</div>
			</div>
			<hr>
			<input type="hidden" name="mem_id" value="${sessionScope.signIn.mem_id}">
			<!-- 리뷰작성폼 div 바깥으로 이동 2023.03.08 수정  -->
			<textarea  name="review_content" id="reviewContents" cols="150"
					rows="30" placeholder="리뷰를 작성해주세요"></textarea>
			
			<div class="container2">
				<div id="img-box">
					<img id="previewImg1" /> 
					<img id="previewImg2" /> 
					<img id="previewImg3" />
				</div>
				<br>
				<!-- 파일선택 input 을 각 div로 감쌈 2023.03.08 수정  -->
				<div class="sub-container2">
					<div id="firstImg">
						<input type="file" name="file" id="fileUpload1" accept="image/*" onchange="PreviewImage();" />
						<span id="imgBox1"></span>
						
					</div>
					<div id="secondImg">
						<input type="file" name="file" id="fileUpload2" accept="image/*" onchange="PreviewImage2();" />
						<span id="imgBox2"></span>
					 </div>
					 <div id="thirdImg">
						<input type="file" name="file" id="fileUpload3" accept="image/*" onchange="PreviewImage3();" />
						<span id="imgBox3"></span>
					 </div>	
					<br> 
				</div>
				<!-- 버튼 안밀리게 버튼만큼 위치조정 div 생성 -->
				<div style="height: 80px;">
				<input type="submit" id="write_btn" value="등록" >
				</div>
				<br>
			</div>
			</form>
		</div>
	</div>

	

	<%@ include file="../bottom.jspf"%>

</body>
</html>