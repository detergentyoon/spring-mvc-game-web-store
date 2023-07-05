<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Sloth Games Store</title>
  <link rel="icon" href="resources/static/imgs/favicon/favicon16.png" type="image/png">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
  <style>
	  .arcade-classic {
	  	font-family: "04b_19", sans-serif;
			font-size: 30px;
		}
		.icon-link {
			color: #99ff33;
			text-decoration: none;
		}
		.mb-5 .btn-light:hover {
			background-color: #99ff33;
			color: black;
		}
  </style>
</head>
<body style="background-color: #272727; color: white; font-family:'NanumGothic', sans-serif;">
<!-- symbol -->
<svg xmlns="http://www.w3.org/2000/svg" style="display: none;">
  <symbol id="arrow-right-circle" viewBox="0 0 16 16">
    <path d="M8 0a8 8 0 1 1 0 16A8 8 0 0 1 8 0zM4.5 7.5a.5.5 0 0 0 0 1h5.793l-2.147 2.146a.5.5 0 0 0 .708.708l3-3a.5.5 0 0 0 0-.708l-3-3a.5.5 0 1 0-.708.708L10.293 7.5H4.5z"/>
  </symbol>
</svg>

<div class="col-lg-8 mx-auto p-4 py-md-5">
  <header class="d-flex align-items-center pb-3 mb-5 border-bottom">
    <a href="/" class="d-flex align-items-center text-body-emphasis text-decoration-none">
	    <a href="store" class="nav-link">
	      <img src="resources/static/imgs/favicon/favicon64.png" alt="logo">&nbsp;
	      <span class="arcade-classic" style="color: #99ff33"> Sloth</span>
	      <span class="arcade-classic me-5" style="color: white;"> Games</span>      	
	    </a>
    </a>
  </header>

  <main>
    <h1><span style="color: #99ff33">Sloth</span> Games Store 시작하기 </h1><br>
    <p class="fs-5 col-md-12">
    	환영합니다! 우리는 간편하고 신속하게 비디오 게임을 구매할 수 있는 직관적인 서비스를 제공합니다.<br><br>
    	
    	사용자 친화적인 인터페이스와 간결한 구매 과정을 통해 최고의 쇼핑 경험을 선사합니다.<br>
    	매주 <strong style="color: #99ff33">최소 10%부터 최대 90%까지 할인</strong>된 가격으로 다양한 게임을 만나보세요!<br><br>
    	
    	강력한 검색 기능과 필터링 옵션을 통해 여러분이 원하는 게임을 손쉽게 찾아보세요!<br><br>
    	<strong style="color: #99ff33">단 몇 번의 클릭만으로</strong> 원하는 게임을 찾고 구매할 수 있습니다!
    </p>
    <div class="mb-5">
    	<span style="font-family:'NanumGothic', sans-serif; font-size: 25px;">알겠어요, 이제 시작합시다! &nbsp;&nbsp;
    		<a href="store" class="btn btn-light btn-lg px-4 a" style="font-family: '04b_19', sans-serif; font-size: 22px;">
    			PRESS START
    		</a>
    	</span>
    </div>

    <hr class="col-3 col-md-12 mb-5">

    <div class="row g-5">

      <div class="col-md-6">
        <h2>이용 가이드</h2>
        <p></p>
        <ul class="list-unstyled ps-0">
          <li>
            <a class="icon-link mb-1" href="/docs/5.3/getting-started/introduction/">
              <svg class="bi" width="16" height="16"><use xlink:href="#arrow-right-circle"></use></svg>
              Sloth Games Store quick start guide
            </a>
          </li>
          <li>
            <a class="icon-link mb-1" href="/docs/5.3/getting-started/webpack/">
              <svg class="bi" width="16" height="16"><use xlink:href="#arrow-right-circle"></use></svg>
              Sloth Games Store Webpack guide
            </a>
          </li>
          <li>
            <a class="icon-link mb-1" href="/docs/5.3/getting-started/parcel/">
              <svg class="bi" width="16" height="16"><use xlink:href="#arrow-right-circle"></use></svg>
              Sloth Games Store Parcel guide
            </a>
          </li>
          <li>
            <a class="icon-link mb-1" href="/docs/5.3/getting-started/vite/">
              <svg class="bi" width="16" height="16"><use xlink:href="#arrow-right-circle"></use></svg>
              Sloth Games Store Vite guide
            </a>
          </li>
          <li>
            <a class="icon-link mb-1" href="/docs/5.3/getting-started/contribute/">
              <svg class="bi" width="16" height="16"><use xlink:href="#arrow-right-circle"></use></svg>
              Contributing to Sloth Games Store
            </a>
          </li>
        </ul>
      </div>
      
      <div class="col-md-6">
        <h3>Sloth Games 공식 SNS </h2>
        <p></p>
        <ul class="list-unstyled ps-0">
          <li>
            <a class="icon-link mb-1" href="https://github.com/twbs/examples/tree/main/icons-font" rel="noopener" target="_blank">
              <svg class="bi" width="16" height="16"><use xlink:href="#arrow-right-circle"></use></svg>
              instargram
            </a>
          </li>
          <li>
            <a class="icon-link mb-1" href="https://github.com/twbs/examples/tree/main/parcel" rel="noopener" target="_blank">
              <svg class="bi" width="16" height="16"><use xlink:href="#arrow-right-circle"></use></svg>
              twitter
            </a>
          </li>
          <li>
            <a class="icon-link mb-1" href="https://github.com/twbs/examples/tree/main/vite" rel="noopener" target="_blank">
              <svg class="bi" width="16" height="16"><use xlink:href="#arrow-right-circle"></use></svg>
              facebook
            </a>
          </li>
        </ul>
      </div>
    </div>
  </main>
  
<footer>
		<jsp:include page="/footer" />
  </footer>
</div>
    <script src="/docs/5.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>