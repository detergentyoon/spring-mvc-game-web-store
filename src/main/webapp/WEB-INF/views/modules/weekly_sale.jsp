<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.twistedfae.model.WeeklySaleVO" %>
<%@ page import="java.util.List" %>

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>특별 할인</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
  <style>
  	body {
  		background-color: black;
  	}
  	p {
  		color: white;
  	}
    .sale_game { /* sale games */
      text-decoration: none;
    }
  	.title { /* 'MEGA Sale Spotlight' */
  		color: white;
  		text-decoration: none;
  	}
  	.card-body {
  		background-color: #222222;  	
  	}
  	.card-text-sale { /* 할인율 */
  		color: #66ff66;
  	}
    .col .card {
      border: 1px solid #666666; /* 테두리 색상 변경 */
      margin-bottom: 0; /* 카드 아래 여백 제거 */
    }
    .row-cols-1 {
      gap: 0; /* 카드 사이의 여백 제거 */
    }
    .row-cols-1 .col {
      flex: 0 0 25%; /* 카드가 4개씩 나란히 배치되도록 설정 */
      max-width: 25%; /* 카드가 4개씩 나란히 배치되도록 설정 */
    }
    
    /* 창모드 크기에 따라 이전 카드의 면적이 다음 카드의 면적에 포개어지지 않도록 함  */
    @media (max-width: 1199px) { /* 최대한 줄였을 때에도 포개어지지 않도록 설정 */
      .row-cols-1 .col {
        flex: 0 0 50%; /* 카드가 2개씩 나란히 배치되도록 설정 */
        max-width: 50%; /* 카드가 2개씩 나란히 배치되도록 설정 */
      }
    }
    @media (max-width: 991px) { /* 창모드에서 카드가 가려지는 문제 해결 */
      .row-cols-1 .col {
        flex: 0 0 50%; /* 카드가 2개씩 나란히 배치되도록 설정 */
        max-width: 50%; /* 카드가 2개씩 나란히 배치되도록 설정 */
      }
    }
    @media (max-width: 767px) {
      .row-cols-1 .col {
        flex: 0 0 100%; /* 카드가 1개씩 배치되도록 설정 */
        max-width: 100%; /* 카드가 1개씩 배치되도록 설정 */
      }
    }
    
    .container .py-5 {
    	padding-bottom: 1rem!important;
		}
  </style>
</head>

<body>
  <div class="container px-4 py-5" id="custom-cards">
    <p class="pb-2 border-bottom"><a class="title" href="weekly_sale_list.jsp">주중 할인 </a>&nbsp<a href="weekly_sale_list.jsp" class="title" style="font-size: 12px;"> ></a></p>
    <div class="row row-cols-1 row-cols-lg-3 align-items-stretch g-4 py-5"> <!-- 카드를 1개의 행에 나란히 배치 -->

    <% List<WeeklySaleVO> weeklySalesList = (List<WeeklySaleVO>) request.getAttribute("weeklySalesList"); %>
    
    <% for (WeeklySaleVO game : weeklySalesList) { %>
       <div class="col">
         <a href="#" class="sale_game">
           <div class="card" style="width: 18rem;">
             <img src="/resources/static/imgs/spotlight/spotlight_img<%= weeklySalesList.indexOf(game) + 1 %>.jpg" class="card-img-top" alt="spotlight_image">
             <div class="card-body">
               <p class="card-text"><%= game.getTitle() %></p>
               <div class="d-flex">
                   <p class="card-text-price" style="color: gray; text-decoration: line-through; margin-right: 8px;"><%= game.getOriginal_price() %>원</p>
                   <p style="margin-right: 15px"><%= game.getDiscounted_price() %>원</p>
                   <h5><span class="badge" style="background-color: #66cc00;"><%= game.getDiscount_rate() %>%</span></h5>
               </div>
             </div>
           </div>
         </a>
       </div>
    <% } %>

    </div>
  </div>
</body>
</html>