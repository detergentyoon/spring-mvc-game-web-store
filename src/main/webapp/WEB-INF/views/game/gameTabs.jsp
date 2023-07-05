<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<% request.setCharacterEncoding("utf-8");%>
<%@ page import="java.net.URLEncoder" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.111.3">
<title>Sloth Games Store</title>
<link rel="icon" href="resources/static/imgs/favicon/favicon16.png" type="image/x-icon">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<style>
  body.v6 {
      position: relative;
      min-height: 100%;
      font-family: Arial, Helvetica, sans-serif;
      color: #c6d4df;
      font-size: 15px;
      background-color: #1b2838;
      display: block;
  }
  a {
      text-decoration: none;
      color: #ffffff;
  }
  .home_ctn {
      padding-left: 2%;
      padding-right: 2%;
      padding-bottom: 20px;
      padding-top: 20px;
      overflow: hidden;
  }
  .home_ctn.tab_container {
      background: linear-gradient( to bottom, rgba(42,71,94,1.0) 5%, rgba(42,71,94,0.0) 70%);
      padding-top: 1px;
      margin-top: 60px;
  }
  .home_ctn.tab_container > div {
      margin-top: -31px;
  }
  body:not(.no_home_gutter) .home_page_content {
      transition: padding 0.25s;
  }
  .flex_cols {
      display: flex;
      flex-direction: row;
  }
  .home_page_content, .nav-tabs {
      position: relative;
      width: 940px;
      margin: 0 auto;
  }
  .flex_cols > .home_leftcol, .flex_cols > .home_rightcol {
      float: none;
      min-width: 0;
      display: flex;
      flex-direction: column;
  }
  .home_tab_col {
      position: relative;
  }
  .home_leftcol {
      width: 618px;
      float: left;
  }
  .home_tabs_row_ctn {
      margin-bottom: 8px;
      background: rgba( 0, 0, 0, 0.2 );
  }
  .store_horizontal_minislider_ctn {
      position: relative;
      overflow: hidden;
  }
  .store_horizontal_minislider {
      overflow-x: auto;
  }
  .home_tabs_row {
      position: relative;
      overflow-x: auto;
      white-space: nowrap;
  }
  .home_tab {
      display: inline-block;
      margin-right: 0px;
      background: rgba( 42, 63, 90, 0.6 );
      border-top-left-radius: 3px;
      border-top-right-radius: 3px;
      font-size: 15px;
      color: #2f89bc;
      line-height: 24px;
      cursor: pointer;
      vertical-align: top;
      margin-top: 3px;
      box-shadow: inset 0 -2px 3px 0 rgba( 0, 0, 0, 0.25 );
  }
  .home_tab {
      border: none;
      background: transparent;
      box-shadow: none;
  }
  .home_tab.active {
      background: -moz-linear-gradient(top, rgba(103,193,245,1) 0%, rgba(103,193,245,0) 100%);
      background: -webkit-linear-gradient(top, rgba(103,193,245,1) 0%,rgba(103,193,245,0) 100%);
      background: -o-linear-gradient(top, rgba(103,193,245,1) 0%,rgba(103,193,245,0) 100%);
      background: -ms-linear-gradient(top, rgba(103,193,245,1) 0%,rgba(103,193,245,0) 100%);
      background: linear-gradient(to bottom, rgba(103,193,245,1) 0%,rgba(103,193,245,0) 100%);
      filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#67c1f5', endColorstr='#0067c1f5',GradientType=0 );
      margin-top: 0;
      box-shadow: none;
      padding: 1px;
  }
  .home_tab.active {
      background: transparent;
  }
  .home_tab .tab_content {
      border-top-left-radius: 3px;
      border-top-right-radius: 3px;
      font-size: 15px;
      color: #99ff33;
      line-height: 24px;
      padding: 0 10px;
      cursor: pointer;
      vertical-align: top;
      box-shadow: inset 0 -2px 3px 0 rgba( 0, 0, 0, 0.25 );
  }
  .home_tab .tab_content {
      box-shadow: none;
  }
  .home_tab.active .tab_content {
      line-height: 29px;
      font-size: 15px;
      color: #ffffff;
      background: #1a2737;
      text-shadow: -1px -1px rgba( 0, 0, 0, 0.25 );
      cursor: default;
      margin-top: 0;
      box-shadow: none;
  }
  .home_tab.active .tab_content {
      border: none;
      background-color: #2a475e;
  }
  .tab_controls, .tab_see_more {
      background: rgba( 0, 0, 0, 0.2 );
      padding: 4px;
  }
  .tab_see_more {
      text-align: right;
  }
  .btnv6_white_transparent {
      border-radius: 2px;
      border: none;
      padding: 1px;
      display: inline-block;
      cursor: pointer;
      text-decoration: none !important;
      color: #fff !important;
      background: transparent;
  }
  .btnv6_white_transparent > span {
      border-radius: 2px;
      display: block;
      background: transparent;
      border: 1px solid rgba(255,255,255,0.4);
      border-radius: 2px;
  }
  .btn_small_tall > span, input.btn_small_tall {
      padding: 0 15px;
      font-size: 12px;
      line-height: 24px;
  }
  .tab_item {
      position: relative;
      display: block;
      background: #202d39;
      background: rgba( 0, 0, 0, 0.2 );
      height: 69px;
      margin-bottom: 5px;
      padding-left: 198px;
      text-size-adjust: none;
      -webkit-text-size-adjust: none;
  }
  a:hover {
      text-decoration: none;
      color: #66c0f4;
  }
  .tab_item:hover, .large .tab_item:hover {
      background: rgba( 0, 0, 0, 0.4 );
  }
  .tab_item.focus {
      /* background: -webkit-linear-gradient( left, #c6e6f8 5%,#95bcd3 95%);
      background: linear-gradient( to right, #c6e6f8 5%,#95bcd3 95%); */
      background: -webkit-linear-gradient( left, #B7D19D 5%,#81D131 95%);
      background: linear-gradient( to right, #B7D19D 5%,#81D131 95%);
      margin-right: -14px;
      padding-right: 14px;
  }
  .tab_item_cap {
      position: absolute;
      left: 0;
      top: 0;
      z-index: 3;
      line-height: 69px;
      transition: opacity 0.25s;
  }
  img {
      border: none;
  }
  .discount_block {
      position: relative;
      display: flex;
  }
  .tab_item_discount {
      display: flex;
      justify-content: space-between;
      float: right;
      margin-right: 16px;
      background: none;
      margin-top: 23px;
      width: 133px;
      text-align: right;
  }
  .home_tabs_content .tab_item_discount {
      margin-top: 17px;
  }
  .discount_block .discount_pct, .discount_pct {
      font-family: "Motiva Sans", Sans-serif;
      font-weight: normal;
      font-weight: 500;
      color: #BEEE11;
      background: #4c6b22;
      display: inline-block;
  }
  .tab_item_discount .discount_pct {
      display: flex;
      align-items: center;
      font-size: 14px;
      line-height: 18px;
      padding: 0 4px;
      border-radius: 1px;
  }
  .discount_block .discount_prices {
      display: flex;
      background: #344654;
      display: flex;
      flex-direction: column;
      align-items: end;
      justify-content: center;
      padding-left: 4px;
  }
  .home_tabs_content .discount_block .discount_prices, .tab_content_ctn .discount_block .discount_prices {
      background: transparent;
  }
  .discount_original_price {
      position: relative;
      width: fit-content;
      color: #738895;
      font-size: 11px;
      line-height: 12px;
  }
  .discount_original_price:before {
      content: '';
      left: 0px;
      right: 0px;
      position: absolute;
      top: 43%;
      border-bottom: 1.5px solid #738895;
      transform: skewY(-8deg);
      box-shadow: 0 0 2px black;
  }
  .discount_final_price {
      color: #BEEE11;
      line-height: 16px;
      font-size: 15px;
  }
  .tab_item.focus .discount_block .discount_final_price {
      color: #263645;
  }
  .tab_item_content {
      white-space: nowrap;
      overflow: hidden;
      text-overflow: ellipsis;
      padding-top: 6px;
      font-size: 12px;
  }
  .home_tabs_content .tab_item_content {
      padding-top: 7px;
  }
  .tab_item_name {
      color: #c7d5e0;
      font-size: 1.25em;
      line-height: 18px;
      text-overflow: ellipsis;
      white-space: nowrap;
      display: block;
      overflow: hidden;
      transition: color 0.25s;
  }
  .tab_item.focus .tab_item_name {
      color: #10161b;
  }
  .tab_item_details {
      color: #384959;
      line-height: 20px;
  }
  .home_rightcol {
      width: 308px;
      float: right;
  }
  .tab_preview_container { /* 상세 정보란 배경색 */
      flex: 1;
      position: relative;
      margin-top: 39px;
      /* background: -webkit-linear-gradient( left, #95bbd4 5%,#859bac 95%);
      background: linear-gradient( to right, #95bbd4 5%,#859bac 95%); */
      background: -webkit-linear-gradient( left, #81D131 5%,#B7D19D 95%);
      background: linear-gradient( to right, #81D131 5%,#B7D19D 95%);
      margin-bottom: 5px;
  }
  .tab_preview {
      position: absolute;
      top: 9px;
      left: 16px;
      opacity: 0;
      transition: opacity 300ms;
      pointer-events: none;
      width: 292px;
  }
  .tab_preview.focus {
      opacity: 1.0;
      pointer-events: auto;
  }
  body.v6 h2 {
      font-family: "Motiva Sans", Sans-serif;
      font-weight: 300;
      font-size: 14px;
      text-transform: uppercase;
      color: #fff;
      margin: 0 0 10px;
      letter-spacing: 0.03em;
      font-weight: normal;
      padding-top: 2px;
  }
  body.v6 .home_rightcol h2 {
      margin-bottom: 7px;
      margin-top: 0px;
  }
  body.v6 .home_rightcol h2 {
      margin-bottom: 2px;
      margin-top: 1px;
  }
  body.v6 .home_rightcol .tab_preview h2 { /* hover된 게임의 게임명 */
      text-transform: none;
      font-size: 21px;
      letter-spacing: 0px;
      color: #263645;
      height: 30px;
      padding-right: 8px;
      overflow: hidden;
      white-space: nowrap;
      text-overflow: ellipsis;
  }
  .tab_review_summary { /* 사용자 평가 섹션 */
      padding: 5px 7px;
      margin-bottom: 10px;
      background-color: rgba( 38, 54, 69, 0.6);
      width: 258px;
      border-radius: 2px;
  }
  .game_review_summary {
      color: #A34C25;
  }
  .game_review_summary.positive {
      color: #66C0F4;
  }
  .game_review_summary.negative {
      color: #CC3D3D;
  }
  .tab_preview .screenshot {
      width: 258px;
      height: 134px;
      margin-top: 3px;
      background-size: cover;
      background-position: center center;
      padding: 8px;
  }
  .tab_item_discount.no_discount {
    margin-top: 32px;
    width: auto;
	}
	.home_tabs_content .tab_item_discount.no_discount {
	    margin-top: 24px;
	}
	.discount_block.no_discount .discount_final_price {
	    padding: 0 6px;
	    color: white;
	}
  </style>
	<style>
		body {
			background-color: #333333 !important;
		}
		a {
			text-decoration: none !important;
		}
		.link-custom {
			color: white !important;
		}
		.nav .link-custom:active {
			color: black !important;
		}
	</style>
</head>
<jsp:include page="/header" /> 
<c:set var="user_id" value="${param.user_id}"/>
<body class="v6">
<div class="container-fluid">
  <div id="carouselExampleDark" class="carousel carousel-dark slide carousel-fade" data-bs-ride="true">
    <div class="carousel-indicators">
      <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
      <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="1" aria-label="Slide 2"></button>
      <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="2" aria-label="Slide 3"></button>
    </div>
    <div class="carousel-inner">
	<c:forEach items="${recommendGame}" var="rgame" varStatus="status" begin="0" end="4">
      <div class="carousel-item" data-bs-interval="2000">
          <div class="card text-bg-dark rounded-0" style="width: 800;"> 
            <div class="row">
              <div class="col">
                <img src="${rgame.thumbnail1}" class="main-image-${rgame.game_id}" width="600" height="400">
              </div>
              <div class="col thumbnail-container" id="subimage" style="background-color: rgba(0, 0, 0, 0.2);">
                <div class="card-body">
                  <h5 class="card-title"><c:out value="${rgame.title}"/></h5>
                </div>
                <div class="row g-1 mb-1">
                  <div class="col">
                    <img src="${rgame.thumbnail2}" class="card-img-top thumbnail-${rgame.game_id} rounded-0" width="200" height="100">
                  </div>
                  <div class="col">
                    <img src="${rgame.thumbnail3}" class="card-img-top thumbnail-${rgame.game_id} rounded-0" width="200" height="100">
                  </div>
                </div>
                <div class="row g-1">
                  <div class="col">
                    <img src="${rgame.thumbnail4}" class="card-img-top thumbnail-${rgame.game_id} rounded-0" width="200" height="100">
                  </div>
                  <div class="col">
                    <img src="${rgame.thumbnail5}" class="card-img-top thumbnail-${rgame.game_id} rounded-0" width="200" height="100">
                  </div>
                </div>
                <div class="card-body">
                  <h5 class="card-title">판매 중</h5>
                  <span class="badge text-bg-secondary"><c:out value="${rgame.category}"/></span>
                  <p class="card-text">가격 : <c:out value="${rgame.formattedDiscountedPrice}"/></p>
                </div>
              </div>
            </div>
          </div>               
      </div>
      <script>
        $(document).ready(function() {
          var fadeDuration = 100;
          var fadeOutTimer;
      
          $('.thumbnail-${rgame.game_id}').hover(function() {
            clearTimeout(fadeOutTimer);
            var src = $(this).attr('src');
            $('.main-image-${rgame.game_id}').fadeOut(fadeDuration, function() {
              $(this).attr('src', src).fadeIn(fadeDuration);
            });
          }, function() {
            fadeOutTimer = setTimeout(function() {
              $('.main-image-${rgame.game_id}').fadeOut(fadeDuration, function() {
                $(this).attr('src', '${rgame.thumbnail1}').fadeIn(fadeDuration);
              });
            }, 200);
          });                 
        });
      </script>
	</c:forEach>      
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Next</span>
    </button>
  </div>
    <script type="text/javascript">
	    $(document).ready(function() {
	        $('.carousel-item:first').addClass('active');
	    });
    </script>
</div>

  <ul class="nav nav-tabs" id="myTab" role="tablist">
    <li class="nav-item" role="presentation">
      <button class="nav-link active" id="home-tab" data-bs-toggle="tab" data-bs-target="#home-tab-pane" type="button" role="tab" aria-controls="home-tab-pane" aria-selected="true">인기 제품</button>
    </li>
    <li class="nav-item" role="presentation">
      <button class="nav-link" id="profile-tab" data-bs-toggle="tab" data-bs-target="#profile-tab-pane" type="button" role="tab" aria-controls="profile-tab-pane" aria-selected="false">할인 제품</button>
    </li>
  </ul>
  <div class="tab-content" id="myTabContent">
    <div class="tab-pane fade show active" id="home-tab-pane" role="tabpanel" aria-labelledby="home-tab" tabindex="0">
      <div class="home_ctn tab-container" style="overflow: visible;">
        <div class="home_page_content flex_cols">
          <div class="home_leftcol home_tab_col">
            <div class="home_tabs_row_ctn">
              <div class="store_horizontal_minislider_ctn" style="height: 31px;">
                <div class="home_tabs_row store_horizontal_minislider">
                  <div class="home_tab">
                    <div class="tab-content">인기 제품 목록</div>
                  </div>
                </div>
              </div>
            </div>
            <div class="home_tabs_content">
              <div class="tab-content" style="display: block;">
                <div class="tab_see_more">
                  	더보기:
                  <a href="#" class="btnv6_white_transparent btn_small_tall">
                    <span>인기 제품</span>
                  </a>
                </div>
                <c:forEach items="${bgame}" var="bgame" varStatus="status" begin="0" end="9">
                <a href="/game/gamePage?game_id=${bgame.game_id}&user_id=${user_id}&category=${bgame.category}" class="tab_item app_impression_tracked" id="${bgame.game_id}">
                  <div class="tab_item_cap">
                    <img class="tab_item_cap_img" src="${bgame.thumbnail1}" loading="lazy" alt="사진" style="width: 148px">
                  </div>                 
                  	<c:choose>
						<c:when test="${bgame.discount_rate == 0 }">	
						<div class="discount_block tab_item_discount no_discount">
							<div class="discount_prices">
		                      <div class="discount_final_price"><c:out value="${bgame.formattedDiscountedPrice}"/>원</div>
		                    </div>
						</div>						
					    </c:when>
						<c:otherwise>
						<div class="discount_block tab_item_discount">
		                    <div class="discount_pct"><c:out value="${bgame.discount_rate}"/>%</div>
		                    <div class="discount_prices">
		                      <div class="discount_original_price"><c:out value="${bgame.formattedOriginalPrice}"/></div>
		                      <div class="discount_final_price"><c:out value="${bgame.formattedDiscountedPrice}"/>원</div>
		                    </div>
		                </div>    
						</c:otherwise>
					</c:choose>                  
                  <div class="tab_item_content">
                    <div class="tab_item_name"><c:out value="${bgame.title}"/></div>
                    <span class="badge text-bg-secondary"><c:out value="${bgame.category}"/></span>
                  </div>
                </a>
                </c:forEach>
              </div>
            </div>
          </div>
          <div class="home_rightcol">
            <div class="tab_preview_container">
			<c:forEach items="${bgame}" var="bgame" varStatus="status" begin="0" end="9">	            
              <div class="tab_preview" id="${bgame.game_id}">
                <h2><c:out value="${bgame.title}"/></h2>
                <div class="tab_review_summary">
                  <div class="title">전반적인 사용자 평가:</div>
			        <c:choose>
						<c:when test="${bgame.total_likes < 10}">
						<span>평가 정보 부족</span>
						</c:when>
						<c:otherwise>
							<c:set var="likes1Ratio" value="${(bgame.likes_1 / bgame.total_likes) * 100}" />
							<c:set var="likes0Ratio" value="${(bgame.likes_0 / bgame.total_likes) * 100}" />
							<c:choose>
							    <c:when test="${likes1Ratio >= 80}">
							        <span style="color: #66C0F4;">매우 긍정적</span>
							    </c:when>
							    <c:when test="${likes0Ratio >= 80}">
							        <span style="color: #CC3D3D;">매우 부정적</span>
							    </c:when>
							    <c:when test="${likes1Ratio >= 60 && likes1Ratio < 80}">
							        <span style="color: #66C0F4;">긍정적</span>
							    </c:when>
							    <c:when test="${likes0Ratio >= 60 && likes0Ratio < 80}">
							        <span style="color: #CC3D3D;">부정적</span>
							    </c:when>									    
							    <c:otherwise>
							        <span style="color: #A34C25;">복합적</span>
							    </c:otherwise>
							</c:choose>
						</c:otherwise>
					</c:choose>
					(<c:out value="${bgame.total_likes}"/>)
                </div>
                <div class="screenshot" style="background-image: url(${bgame.thumbnail2});"></div>
                <div class="screenshot" style="background-image: url(${bgame.thumbnail3});"></div>
                <div class="screenshot" style="background-image: url(${bgame.thumbnail4});"></div>
                <div class="screenshot" style="background-image: url(${bgame.thumbnail5});"></div>
              </div>
              </c:forEach>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="tab-pane fade" id="profile-tab-pane" role="tabpanel" aria-labelledby="profile-tab" tabindex="0">
      
      <div class="home_ctn tab-container" style="overflow: visible;">
        <div class="home_page_content flex_cols">
          <div class="home_leftcol home_tab_col">
            <div class="home_tabs_row_ctn">
              <div class="store_horizontal_minislider_ctn" style="height: 31px;">
                <div class="home_tabs_row store_horizontal_minislider">
                  <div class="home_tab">
                    <div class="tab-content">할인 제품 목록</div>
                  </div>
                </div>
              </div>
            </div>
            <div class="home_tabs_content">
              <div class="tab-content" style="display: block;">
                <div class="tab_see_more">
                 	 더보기:
                  <a href="#" class="btnv6_white_transparent btn_small_tall">
                    <span>할인 제품</span>
                  </a>
                </div>
                <c:forEach items="${sgame}" var="bgame" varStatus="status" begin="0" end="9">
                <a href="gamePage?game_id=${bgame.game_id}&user_id=${user_id}&category=${bgame.category}" class="tab_item app_impression_tracked" id="${bgame.game_id}">
                  <div class="tab_item_cap">
                    <img class="tab_item_cap_img" src="${bgame.thumbnail1}" loading="lazy" alt="사진" style="width: 148px" >
                  </div>                 
                  	<c:choose>
						<c:when test="${bgame.discount_rate == 0 }">	
						<div class="discount_block tab_item_discount no_discount">
							<div class="discount_prices">
		                      <div class="discount_final_price"><c:out value="${bgame.formattedDiscountedPrice}"/>원</div>
		                    </div>
						</div>						
					    </c:when>
						<c:otherwise>
						<div class="discount_block tab_item_discount">
		                    <div class="discount_pct"><c:out value="${bgame.discount_rate}"/>%</div>
		                    <div class="discount_prices">
		                      <div class="discount_original_price"><c:out value="${bgame.formattedOriginalPrice}"/></div>
		                      <div class="discount_final_price"><c:out value="${bgame.formattedDiscountedPrice}"/>원</div>
		                    </div>
		                </div>    
						</c:otherwise>
					</c:choose>                  
                  <div class="tab_item_content">
                    <div class="tab_item_name"><c:out value="${bgame.title}"/></div>
                    <span class="badge text-bg-secondary"><c:out value="${bgame.category}"/></span>
                  </div>
                </a>
                </c:forEach>
              </div>
            </div>
          </div>
          <div class="home_rightcol">
            <div class="tab_preview_container">
			<c:forEach items="${sgame}" var="bgame" varStatus="status" begin="0" end="9">	            
              <div class="tab_preview" id="${bgame.game_id}">
                <h2><c:out value="${bgame.title}"/></h2>
                <div class="tab_review_summary">
                  <div class="title">전반적인 사용자 평가:</div>
			        <c:choose>
						<c:when test="${bgame.total_likes < 10}">
						<span>평가 정보 부족</span>
						</c:when>
						<c:otherwise>
							<c:set var="likes1Ratio" value="${(bgame.likes_1 / bgame.total_likes) * 100}" />
							<c:set var="likes0Ratio" value="${(bgame.likes_0 / bgame.total_likes) * 100}" />
							<c:choose>
							    <c:when test="${likes1Ratio >= 80}">
							        <span style="color: #66C0F4;">매우 긍정적</span>
							    </c:when>
							    <c:when test="${likes0Ratio >= 80}">
							        <span style="color: #CC3D3D;">매우 부정적</span>
							    </c:when>
							    <c:when test="${likes1Ratio >= 60 && likes1Ratio < 80}">
							        <span style="color: #66C0F4;">긍정적</span>
							    </c:when>
							    <c:when test="${likes0Ratio >= 60 && likes0Ratio < 80}">
							        <span style="color: #CC3D3D;">부정적</span>
							    </c:when>									    
							    <c:otherwise>
							        <span style="color: #A34C25;">복합적</span>
							    </c:otherwise>
							</c:choose>
						</c:otherwise>
					</c:choose>
					(<c:out value="${bgame.total_likes}"/>)
                </div>
                <div class="screenshot" style="background-image: url(${bgame.thumbnail2});"></div>
                <div class="screenshot" style="background-image: url(${bgame.thumbnail3});"></div>
                <div class="screenshot" style="background-image: url(${bgame.thumbnail4});"></div>
                <div class="screenshot" style="background-image: url(${bgame.thumbnail5});"></div>
              </div>
              </c:forEach>
            </div>
          </div>
        </div>
      </div>
    
    </div>
    <div class="tab-pane fade" id="contact-tab-pane" role="tabpanel" aria-labelledby="contact-tab" tabindex="0">

    </div>
  </div>
  <script type="text/javascript">
  var tabItems = document.querySelectorAll('.tab_item');
  var tabPreviews = document.querySelectorAll('.tab_preview');
  var firstTabItem = tabItems[0];

  firstTabItem.classList.add('focus');
  tabPreviews[0].classList.add('focus');

  tabItems.forEach(function(tabItem, index) {
    tabItem.addEventListener('mouseover', function() {
      if (!tabItem.classList.contains('focus')) {
        tabItems.forEach(function(item) {
          item.classList.remove('focus');
        });

        tabPreviews.forEach(function(preview) {
          preview.classList.remove('focus');
        });

        tabItem.classList.add('focus');
        tabPreviews[index].classList.add('focus');
      }
    });
  });

  </script>
</body>
</html>