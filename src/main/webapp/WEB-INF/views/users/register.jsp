<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>회원가입</title>
	<link rel="icon" href="/resources/static/imgs/favicon/favicon16.png" type="image/x-icon">

	<!-- Font Awesome -->
	<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet" />
	<link rel="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css"> <!-- 아이콘 -->
	<!-- Google Fonts -->
	<link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap" rel="stylesheet" />
	<!-- MDB -->
	<link href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.2.0/mdb.min.css" rel="stylesheet" />
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.2.0/mdb.min.js"></script>
	<style>
		@media only screen and (max-width: 768px) {
			.registerform {
				/** @media 쿼리를 통해 화면의 크기가 768px 이하일 경우, form의 너비를 90%로 설정하여 화면에 꽉 차도록 설정
					*  -> 모바일 환경 혹은 창의 크기를 줄이거나 늘렸을 때에도 정가운데 위치를 유지 */
				width: 90%;
			}
		}
		
		html, body {
			height: 100%;
			margin: 0;
			padding: 0;
			overflow: hidden;
		}
		
		.overlay {
			position: fixed; /** 스크롤과 상관없이 고정된 위치에 요소를 배치 */
			top: 0;
			left: 0;
			/** top과 left 속성은 브라우저 창의 좌측 상단 모서리를 기준으로 측정되기 때문에,
			*  top: 0; left: 0;의 경우, 요소가 브라우저 창의 좌측 상단 모서리에 고정됨 */
			width: 100%;
			height: 100%;
			background-color: rgba(0, 0, 0, 0.6);
		}
		
		.registerform {
			width: 500px;
			background-color: rgba(0, 0, 0, 0.5);
			padding: 30px;
			border-radius: 10px;
		}
		
		/* 사용자 정보 input box */
		.mb-4 .form-control {
			background-color: rgba(0, 0, 0, 0.5); /* input 박스 색 */
			color: white; /* 글자 색 */
		}
		
		/* 비밀번호 input box의 입력 정보 보기 아이콘 */
		.password-toggle {
			position: absolute;
			top: 50%;
			right: 0.5rem;
			transform: translateY(-50%);
			cursor: pointer;
			font-size: 1rem; /* 아이콘 크기 고정 */
		}
		.password-toggle.show {
			font-size: 1rem; /* 아이콘 크기 조정 */
			margin-right: 0.5rem;
		}
		.password-toggle i {
			font-size: 1rem; /* 아이콘 크기 조정 */
		}
		.form-control[type="password"] ~ .password-toggle {
			font-size: 1rem; /* 아이콘 크기 조정 */
			margin-right: 0.5rem;
		}
		
		/* 비밀번호 확인 input box의 입력 정보 보기 아이콘 */
		.repeatPassword-toggle {
			position: absolute;
			top: 50%;
			right: 0.5rem;
			transform: translateY(-50%);
			cursor: pointer;
			font-size: 1rem; /* 아이콘 크기 고정 */
		}
		.repeatPassword-toggle.show {
			font-size: 1rem; /* 아이콘 크기 조정 */
			margin-right: 0.5rem;
		}
		.repeatPassword-toggle i {
			font-size: 1rem; /* 아이콘 크기 조정 */
		}
		.form-control[type="password"] ~ .repeatPassword-toggle {
			font-size: 1rem; /* 아이콘 크기 조정 */
			margin-right: 0.5rem;
		}
	</style>
</head>
<body>
	<div style="position: relative;">
		<!-- 불투명도 덮개 -->
		<div class="overlay">
			<form action="register" method="post" class="registerform"
				style="position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%);">

				<!-- SNS 연동 -->
				<div class="text-center mb-3">
					<button type="button" class="btn btn-link btn-floating mx-1">
						<i class="fab fa-facebook-f" style="color: #99ff33;"></i>
					</button>
					<button type="button" class="btn btn-link btn-floating mx-1">
						<i class="fab fa-google" style="color: #99ff33;"></i>
					</button>
					<button type="button" class="btn btn-link btn-floating mx-1">
						<i class="fab fa-twitter" style="color: #99ff33;"></i>
					</button>
				</div>

				<!-- 아이디 input -->
				<div class="form-outline mb-4">
					<input type="text" id="user_id" name="user_id" class="form-control" />
					<label class="form-label" for="registerId" style="color: #ffffff;">아이디</label>
				</div>

				<!-- 비밀번호 input -->
				<div class="form-outline mb-4">
					<input type="password" id="password" name="password" class="form-control" />
					<i class="password-toggle fas fa-eye-slash"></i>
				  <label class="form-label" for="registerPassword" style="color: #ffffff;">비밀번호</label>
				</div>
				
				<!-- 비밀번호 확인 input -->
				<div class="form-outline mb-4">
					<input type="password" id="repeatPassword" name="repeatPassword" class="form-control" />
					<i class="repeatPassword-toggle fas fa-eye-slash"></i>
					<label class="form-label" for="registerRepeatPassword" style="color: #ffffff;">비밀번호 확인</label>
				</div>

				<!-- 이름 input -->
				<div class="form-outline mb-4">
					<input type="text" id="name" name="name" class="form-control"/>
					<label class="form-label" for="registerName" style="color: #ffffff;">이름</label>
				</div>

				<!-- 생년월일 input -->
				<div class="row">
					<div class="col-md-4">
						<div class="form-outline mb-4">
							<select id="birthYear" name="birthYear" class="form-control">
								<option value="" selected disabled>년</option>
								<% for (int i = 1923; i <= 2023; i++) { %>
										<option value="<%=i%>"><%=i%></option>
								<% } %>
							</select>
						</div>
					</div>
					<div class="col-md-4">
						<div class="form-outline mb-4">
							<select id="birthMonth" name="birthMonth" class="form-control">
								<option value="" selected disabled>월</option>
								<% for (int i = 1; i <= 12; i++) {
										String month = (i < 10) ? "0" + i : String.valueOf(i); %>
			    					<option value="<%= month %>"><%= month %></option>
								<% } %> <!--  삼항 연산자를 사용하여 i 값이 10보다 작을 경우에만 앞에 0을 붙이도록 처리 -->
							</select>
						</div>
					</div>
					<div class="col-md-4">
						<div class="form-outline mb-4">
							<select id="birthDay" name="birthDay" class="form-control">
								<option value="" selected disabled>일</option>
								<% for (int i = 1; i <= 31; i++) {
										String day = (i < 10) ? "0" + i : String.valueOf(i); %>
			    					<option value="<%= day %>"><%= day %></option>
								<% } %>
							</select>
						</div>
					</div>
				</div>

				<!-- 성별 input -->
				<div class="form-outline mb-4">
					<select id="gender" name="gender" class="form-control">
						<option value="" selected disabled>성별</option>
						<option value="male">남</option>
						<option value="female">여</option>
					</select>
				</div>

				<!-- 본인 확인 이메일 input -->
				<div class="form-outline mb-4">
					<input type="email" id="email" name="email" class="form-control" />
					<label class="form-label" for="registerEmail" style="color: #ffffff;">이메일</label>
				</div>

				<!-- 약관동의 Checkbox -->
				<div class="form-check d-flex justify-content-center mb-4">
					<input type="checkbox" value="" id="registerCheck" style="accent-color: #99ff33" aria-describedby="registerCheckHelpText" />
					<label class="form-check-label" for="registerCheck" style="color: #ffffff;">&nbsp; 약관을 읽었으며 이에 동의합니다.</label>
				</div>

				<!-- Submit button -->
				<button type="submit" id="registerButton" class="btn btn-primary btn-block mb-3"
								style="background-color: #99ff33; color: black; font-size: 15px; box-shadow: none;">회원가입</button>
			</form>
		</div>

		<!-- 배경화면 -->
		<img src="/resources/static/imgs/background/registerBg.jpg" alt="registerBg" />
	</div>

<script src="/resources/static/js/register.js"></script>

</body>
</html>