<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Header</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
  
  <script src="/resources/static/js/header.js"></script>
  <style>
	  .arcade-classic {
	    font-family: "04b_19", sans-serif;
	    font-size: 30px;
	  }
  	.fixed-header {
      position: fixed;
      top: 0;
      left: 0;
      width: 100%;
      z-index: 9999;
    }
    .text-bg-custom {
      background-color: #222222;
    }
    .container {
      margin-bottom: 5px;
    }
    .fixed-header .form-control:focus {
      box-shadow: 0 0 0 0.2rem rgba(255, 255, 255, 0.5);
      border-color: #ffffff;
    }
    .custom-link {
      color: white;
			text-decoration: none;
    }
    .custom-link:hover {
      color: white;
      text-decoration: none;
    }
    .custom-link:visited {
		  color: white;
		}
		.custom-link::after {
			/* Dropdown 메뉴의 화살표 표시를 없앰 */
      display: none !important;
    }
		.nav .dropdown-menu {
			background-color: #222222;
		}
		.dropdown-menu .dropdown-item {
			color: white;
		}
		.nav .dropdown-item:hover {
			background-color: #333333;
			color: white;
		}
		.dropdown:hover .dropdown-menu {
			/* 마우스를 호버링하면 자동으로 dropdown-menu가 펼쳐짐 */
	    display: block;
		}
		.text-end .btn-custom {
			background-color: #99ff33;
		}
		.text-end .btn-custom:hover {
			background-color: #66cc00;
			color: white;
		}
		.text-white {
			font-size: 15px;
		}
		.headerblank {
			padding-bottom: 160px;
		}
  </style>
</head>
<body>
  <header class="p-3 text-bg-custom fixed-header">
    <div class="container">
      <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
      	<a href="store" class="nav-link px-2 text-secondary">
      		<img src="resources/static/imgs/favicon/favicon64.png" alt="logo">&nbsp;
      		<span class="arcade-classic" style="color: #99ff33"> Sloth</span>
      		<span class="arcade-classic me-5" style="color: white;"> Games</span>
      	</a>
        <div class="d-flex align-items-center mb-2 mb-lg-0 text-white text-decoration-none">
          <svg class="bi me-2" width="40" height="32" role="img" aria-label="Bootstrap"><use xlink:href="#bootstrap"></use></svg>
        </div>
        <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
          <li><a href="gameTabs" class="nav-link px-2 text-white">상점</a></li>
          <li><a href="#" class="nav-link px-2 text-white">라이브러리</a></li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle custom-link" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">커뮤니티</a>
            <ul class="dropdown-menu">
              <li><a class="dropdown-item" href="#">자유게시판</a></li>
              <li><a class="dropdown-item" href="#">뉴스</a></li>
            </ul>
          </li>
          <li>
	          <%-- 세션이 부여된 경우에는 "마이페이지"를 사용자명으로 바꾸고 개인 페이지로 이동시킴 --%>
            <c:choose>
						  <c:when test="${not empty sessionScope.loggedInUser}">
						  	<%-- nickname이 null인 경우, 사용자 아이디 표시 --%>
						  	<c:choose>
						  		<c:when test="${empty nickname}">
						  			<a style="color: #99ff33!important;" href="/myPage/?${sessionScope.loggedInUser.user_id}" class="nav-link px-2 text-white">${user_id}</a>
						  		</c:when>
						  		<c:otherwise>
						  			<a style="color: #99ff33!important;" href="/myPage/?${sessionScope.loggedInUser.user_id}" class="nav-link px-2 text-white">${nickname}</a>
						  		</c:otherwise>
						  	</c:choose>
						  </c:when>
						  <c:otherwise>
						    <a href="login" class="nav-link px-2 text-white">마이페이지</a>
						  </c:otherwise>
						</c:choose>
          </li>
        </ul>

        <form class="col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3" role="search">
          <input type="search" class="form-control" placeholder="Search..." aria-label="Search">
        </form>

        <div class="text-end">
          <%-- 세션이 부여된 상태에서는 로그인과 회원가입 버튼을 숨기고 로그아웃 버튼을 나타냄 --%>
          <c:choose>
            <c:when test="${not empty sessionScope.loggedInUser}">
            	<button type="button" class="btn btn-outline-light" onclick="location.href='/logout'">로그아웃</button>
            </c:when>
            <%-- 세션이 없는 상태에서는 로그인과 회원가입 버튼을 나타내고 로그아웃 버튼을 숨김  --%>
            <c:otherwise>
              <button type="button" class="btn btn-light" onclick="location.href='/login'">로그인</button>
              <button type="button" class="btn btn-light btn-custom" onclick="location.href='/register'">회원가입</button>
            </c:otherwise>
          </c:choose>
        </div>
      </div>
    </div>
  </header>
  <div class="headerblank"></div> <!-- 헤더 때문에 가려지는 부분만큼(전체화면 기준) 여백 생성 -->
</body>
</html>