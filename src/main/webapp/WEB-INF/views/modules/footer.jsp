<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Footer</title>
  <%-- BootStrap include --%>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>

  <style>
    body {
      background-color: #333333;
      font-family: 'NanumGothic', sans-serif;
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
  </style>
</head>
<body>
  <div class="container">
    <footer class="py-3 my-4">
      <ul class="nav justify-content-center border-bottom pb-3 mb-3">
        <li class="nav-item">
          <a href="store" class="nav-link px-2 custom-link">
          	<img src="resources/static/imgs/favicon/favicon32.png" alt="favicon">
          </a>
        </li>
        <li class="nav-item">
          <a href="#" class="nav-link px-2 custom-link">개인정보보호정책</a>
        </li>
        <li class="nav-item">
          <a href="#" class="nav-link px-2 custom-link">저작권</a>
        </li>
        <li class="nav-item">
          <a href="serviceInfo" class="nav-link px-2 custom-link">서비스</a>
        </li>
        <li class="nav-item">
          <a href="#" class="nav-link px-2 custom-link">이용약관</a>
        </li>
        <li class="nav-item">
          <a href="#" class="nav-link px-2 custom-link">환불</a>
        </li>
      </ul>
      <p class="text-center custom-link">© 2023 noMadCoder Team. All rights reserved.</p>
    </footer>
  </div>
</body>
</html>
