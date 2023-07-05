<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>로그인</title>
	<link rel="icon" href="/resources/static/imgs/favicon/favicon16.png" type="image/x-icon">
	<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet" /> <!-- Font Awesome -->
	<link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap" rel="stylesheet" /> <!-- Google Fonts -->
	<link href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.2.0/mdb.min.css" rel="stylesheet" /> <!-- MDB -->
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.2.0/mdb.min.js"></script> <!-- MDB -->
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script> <!-- jQuery -->
	
	<script src="/resources/static/js/login.js"></script>
	<style>
	/** @media 쿼리를 통해 화면의 크기가 768px 이하일 경우, form의 너비를 90%로 설정하여 화면에 꽉 차도록 설정
		*  -> 모바일 환경 혹은 창의 크기를 줄이거나 늘렸을 때에도 정가운데 위치를 유지 */
		@media only screen and (max-width: 768px) {
			.loginform {
				width: 90%;
			}
		}
		
		html, body {
			height: 100%;
			margin: 0;
			padding: 0;
			overflow: hidden;
		}
		
		iframe {
			width: 100%;
			height: 100%;
			position: fixed;
			top: 0;
			left: 0;
			border: none; /** iframe 주위에 경계선을 없앰 */
			pointer-events: none; /* 마우스 이벤트를 무시 */
		}
		
		iframe:focus {
			outline: none;
		}
		
		.overlay {
			position: fixed; /** 스크롤과 상관없이 고정된 위치에 요소를 배치 */
			top: 0;
			left: 0;
			/** top과 left 속성은 브라우저 창의 좌측 상단 모서리를 기준으로 측정되기 때문에,
			*  top: 0; left: 0;의 경우, 요소가 브라우저 창의 좌측 상단 모서리에 고정됨 */
			width: 100%;
			height: 100%;
			background-color: rgba(0, 0, 0, 0.4);
			z-index: 999; /* overlay를 iframe 위에 덮음 */
		}
		.loginform {
			width: 450px;
			background-color: rgba(0, 0, 0, 0.5);
			padding: 30px;
			z-index: 1000; /* .loginform 요소가 .overlay 요소 위에 나타나도록 */
			border-radius: 10px;
		}
		.mb-4 .form-control {
			background-color: rgba(0, 0, 0, 0.5);
			text-color: white; /* input 박스 색 */
			color: white; /* 글자 색 */
		}
		
		input[type=checkbox] {
			accent-color: #99ff33;
			-webkit-transform: scale(1.1); /* Safari & Chrome */
		}
		
		.btn-white:hover {
			background-color: #99ff33;
		}
		
		.btn-white:active {
			background-color: #66ff33;
		}
	</style>
</head>
<body>
	<div style="position: relative;">
		<!-- 동영상 불투명도 덮개 -->
		<div class="overlay">

			<!-- 로그인 폼 -->
			<form action="login" method="post" class="loginform" style="position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%);">

				<!-- ID input -->
				<div class="form-outline mb-4">
					<input type="text" id="user_id" class="form-control" name="user_id" />
					<label class="form-label" for="user_id" style="color: white;">아이디</label>
				</div>
				<!-- Password input -->
				<div class="form-outline mb-4">
					<input type="password" id="password" class="form-control" name="password" />
					<label class="form-label" for="password" style="color: white;">비밀번호</label>
				</div>

				<!-- 2 column grid layout for inline styling -->
				<div class="row mb-4">
					<div class="col d-flex justify-content-center">

						<!-- Checkbox -->
						<div class="form-check">
							<input class="saveId" type="checkbox" value="" id="form2Example31" />
							<label class="form-check-label" for="form2Example31" style="color: white"> 아이디 저장 </label>
						</div>
					</div>
					<div class="col">
						<a href="#" style="color: #99ff33;">아이디/비밀번호 찾기</a>
					</div>
				</div>

				<!-- Submit button -->
				<button type="submit" class="btn btn-block btn-white mb-4" style="box-shadow: none;">로그인</button>

				<!-- Register buttons -->
				<div class="text-center">
					<p style="color: #ffffff">회원이 아니신가요? &emsp;&emsp;
						<a href="/register" style="color: #99ff33;">가입하기</a>
					</p>

					<!-- 타 플랫폼 연동 버튼 -->
					<button type="button" class="btn btn-link btn-floating mx-1">
						<i class="fab fa-facebook-f" style="color: #66cc00;"></i>
					</button>
					<button type="button" class="btn btn-link btn-floating mx-1">
						<i class="fab fa-google" style="color: #66cc00;"></i>
					</button>
					<button type="button" class="btn btn-link btn-floating mx-1">
						<i class="fab fa-twitter" style="color: #66cc00;"></i>
					</button>
				</div>
			</form>
		</div>
	</div>
	</div>
		<iframe src="https://www.youtube.com/embed/-87ds4AGjxs?start=23&controls=0&loop=1&autoplay=1&mute=1&playlist=-87ds4AGjxs"
			title="YouTube video player" frameborder="0"
			allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
			allowfullscreen>
		</iframe>
	</div>
	
	<!-- 모달 창 -->
	<div class="modal fade" id="errorModal" tabindex="-1" role="dialog" aria-labelledby="errorModalLabel" aria-hidden="true">
	    <div class="modal-dialog" role="document">
	        <div class="modal-content">
	            <div class="modal-header">
	                <h5 class="modal-title" id="errorModalLabel">로그인 실패</h5>
	                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	                    <span aria-hidden="true">&times;</span>
	                </button>
	            </div>
	            <div class="modal-body">
	            	아이디 또는 비밀번호가 일치하지 않습니다.
	            </div>
	            <div class="modal-footer">
	                <button type="button" class="btn btn-secondary" data-dismiss="modal">확인</button>
	            </div>
	        </div>
	    </div>
	</div>
</body>
</html>