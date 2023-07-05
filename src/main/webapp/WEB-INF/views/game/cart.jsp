<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<title>장바구니</title>
    <style>
     .cartlist{
        background: #202326;
        color: #c6d4df;
        font-size: 12px;
        display: block;
        min-height: 100%;
        height: auto;
        position: relative;
    }
    div.page_content {
    width: 940px;
    margin: 0px auto;
    }
    body .page_content {
        width: 940px;
        margin: 0 auto;
    }
    div.leftcol {
        width: 616px;
        float: left;
    }
    div.rightcol {
        width: 308px;
        margin-left: 14px;
        float: right;
    }
    .checkout_content_box {
        position: relative;
    }
    .cart_row {
        background-color: rgba(0,0,0,0.2);
        margin: 0px 0px 3px 0px;
        position: relative;
    }
    .cart_item {
        position: relative;
        min-height: 77px;
        line-height: 16px;
        padding: 0 2.5%;
        font-size: 13px;
    }
    .cart_item_price {
        float: right;
        padding-top: 20px;
        text-align: right;
    }
    .cart_total_row#cart_price_total_text, .cart_total_row#cart_price_total_text, .cart_total_row#cart_price_shipping_text, .price {
        font-size: 13px;
        color: #c7d5e0;
    }
    .cart_item_price .price {
        color: #c7d5e0;
        font-size: 13px;        
    }
    .checkout_content_box a {
        color: #FFFFFF;
        text-decoration: underline;
    }
    .cart_item_price .remove_link, .remove_link {
        color: #56707f;
        text-decoration: underline;
        font-size: 11px;
    }
    .cart_item_img {
        float: left;
        margin-top: 16px;
        width: 120px;
        height: 45px;
        background: rgba( 0, 0, 0, 0.5 );
        text-align: center;
    }
    img {
        border: none;
    }
    .cart_item_img img {
        width: auto;
        height: 45px;
        background-color: #000000;
    }
    .cart_item_desc {
        color: #626366;
        overflow: hidden;
        padding: 23px 3% 0 3%;
    }
    .cart_item .cart_item_desc a {
        color: #c7d5e0;
        text-decoration: none;
    }
    .checkout_content_box .checkout_content.cart, .checkout_content_box .checkout_content.confirm {
        background: rgba( 0, 0, 0, 0.2 );
        padding: 16px;
        margin-top: 4px;
    }
    .checkout_content_box .checkout_content.cart {
        padding: 0px;
    }
    .cart_totals_area {
        margin-left: auto;
        margin-top: 3px;
        padding: 5px;
    }
    #cart_estimated_total_text .cart_totals_area {
        order: 1;
    }
    .cart_total_row {
        position: relative;
        text-align: left;
        margin-top: 3px;
        color: #7092a5;
    }
    .cart_total_row {
        font-size: 13px;
        text-align: left;
    }
    .cart_total_row#cart_estimated_total_text {
        margin-top: 10px;
        font-size: 13px;
        color: #c7d5e0;
        font-weight: bold;
        display: flex;
        justify-content: space-between;
    }
    .cart_totals_area .price {
        position: absolute;
        right: 0px;
        text-align: right;
        color: #c6d4df;
        font-size: 13px;
        padding-top: 2px;
    }
    .cart_total_row#cart_estimated_total_text sup {
        font-weight: 400;
        font-size: 11px;
    }
    .cart_checkout_buttons {
        text-align: right;
        padding: 30px 0px;
    }
    .btnv6_green_white_innerfade {
        border-radius: 2px;
        border: none;
        padding: 1px;
        display: inline-block;
        cursor: pointer;
        text-decoration: none !important;
        color: #D2E885 !important;
        background: rgba(121,153,5,1);
        background: -webkit-linear-gradient( top, rgba(121,153,5,1) 5%, rgba(83,105,4,1) 95%);
        background: linear-gradient( to bottom, rgba(121,153,5,1) 5%, rgba(83,105,4,1) 95%);
    }
    .button_row .continue, .button_row .working, .cart_checkout_buttons .continue {
        float: right;
        margin-right: 16px;
    }
    .cart_checkout_buttons .btn_medium {
        margin-bottom: 8px;
    }
    .btnv6_green_white_innerfade > span {
        border-radius: 2px;
        display: block;
        background: transparent;
        text-shadow: -1px -1px 0px rgba( 0, 0, 0, 0.1 );
    }
    .btn_medium > span, input.btn_medium {
        padding: 0 15px;
        font-size: 15px;
        line-height: 30px;
    }
    .checkout_notes {
        color: #7092a5;
        line-height: 20px;
        padding-right: 16px;
    }
    .remove_ctn {
        float: right;
    }
    .btnv6_blue_hoverfade {
        border-radius: 2px;
        border: none;
        padding: 1px;
        display: inline-block;
        cursor: pointer;
        text-decoration: none !important;
        color: #67c1f5 !important;
        background: rgba( 103, 193, 245, 0.2 );
    }
    .dailydeal_ctn {
        margin-bottom: 30px;
        padding: 0px;
        height: 190px;
        box-shadow: 0 0 5px #000;
        background: -webkit-linear-gradient( top, #ffffff 5%, #abdaf4 95%);
        background: linear-gradient( to bottom, #ffffff 5%, #abdaf4 95%);
    }
    .dailydeal_cap {
        position: relative;
        margin-bottom: 3px;
    }
    .dailydeal_cap, .dailydeal_cap img {
        width: 276px;
        height: 129px;
    }
    .dailydeal_ctn .dailydeal_cap, .dailydeal_ctn .dailydeal_cap img {
        width: 308px;
        height: auto;
    }
    .discount_block {
        position: relative;
        display: flex;
    }
    .dailydeal_ctn .daily_deal_discount {
        margin-left: 6px;
    }
    .discount_block .discount_pct, .discount_pct {
        font-family: "Motiva Sans", Sans-serif;
        font-weight: normal;
        font-weight: 500;
        color: #BEEE11;
        background: #4c6b22;
        display: inline-block;
    }
    .discount_block_large .discount_pct, .discount_block_large .bundle_base_discount {
        line-height: 34px;
        padding: 0 5px;
        font-size: 26px;
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
    .discount_block_large .discount_prices {
        line-height: 13px;
        padding: 0 8px 0 8px;
        display: flex;
        flex-direction: column;
        align-items: flex-end;
        justify-content: center;
    }
    .discount_original_price {
        position: relative;
        width: fit-content;
        color: #738895;
        font-size: 11px;
        line-height: 12px;
    }
    .discount_final_price {
        color: #BEEE11;
        line-height: 16px;
        font-size: 15px;
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
    .cart_item_price.with_discount {
        padding-top: 15px;
    }
    .cart_item_price .price.original_price {
        text-decoration: line-through;
        color: #56707f;
        font-size: 11px;
    }
    </style>
</head>
<body class="cartlist">
<div class="page_content">
    <div class="leftcol">
        <div class="cart_area_body checkout_content_box">
            <div class="cart_item_list">
            	<c:forEach items="${cartList}" var="cart">
                <div class="cart_row" id="${cart.game_id}">
                    <div class="cart_item">
                        <div class="cart_item_price_container">
						<c:choose>
							<c:when test="${cart.discount_rate == 0}">
                            <div class="cart_item_price">
                                <div class="price">￦<c:out value="${cart.formattedOriginalPrice}"/></div>
                                <a class="remove_link" onclick="remove('${param.user_id}','${cart.game_id}')">제거</a>
                            </div>
                            </c:when>
                            <c:otherwise>
	                            <div class="cart_item_price with_discount">
	                                <div class="original_price price"><c:out value="${cart.formattedOriginalPrice}"/></div>
	                                <div class="price">￦<c:out value="${cart.formattedDiscountedPrice}"/></div>
	                                <a class="remove_link" onclick="remove('${param.user_id}','${cart.game_id}')">제거</a>
	                            </div>
                            </c:otherwise>
                        </c:choose>    
                        </div>
                        <div class="cart_item_img">
                            <a href="/game/gamePage?game_id=${cart.game_id}&user_id=${param.user_id}&category=${cart.category}">
                                <img src="${cart.thumbnail1 }" alt="게임 사진"> 
                            </a>
                        </div>
                        <div class="cart_item_desc">
                            <a href="/game/gamePage?game_id=${cart.game_id}&user_id=${param.user_id}&category=${cart.category}">
                            	<c:out value="${cart.title}"/>
                            </a>
                        </div>
                    </div>
                </div>
                </c:forEach>
            </div>
            <div class="checkout_content cart cart_totals">
                <div class="cart_totals_area">
                    <div class="estimated_total_box">
                        <div id="cart_estimated_total_text" class="cart_total_row">
                            <div class="cart_totals_area">￦<c:out value="${totalPrice}"/></div> 예상 합계
                        </div>
                    </div>
                </div>
                <div style="clear: left;"></div>
                <div class="cart_purchase_action_section">
                    <div class="cart_checkout_buttons">
                        <a class="btnv6_green_white_innerfade continue" href="#" onclick="purchase()">
                            <span>구매 하기</span>
                        </a>
                    </div>
                </div>  
            </div>            
        </div>
        <div class="checkout_notes_and_continue_shopping_ctn">
            <div class="checkout_notes">
                <div class="remove_ctn">
                   <a class="remove_link" onclick="removeAll('${param.user_id}')">모든 항목 제거</a> 
                </div>
            </div>
            <div class="continue_shopping_ctn">
                <a href="#" class="btn_medium btnv6_blue_hoverfade"><span>쇼핑 계속</span></a>
            </div>
        </div>
    </div>
    <div class="rightcol cart_rightcol">
    	<c:forEach items="${randsalegame}" var="sgame" varStatus="status" begin="0" end="1">
        <div class="dailydeal_ctn">
            <div class="dailydeal_cap app_impression_tracked">
                <a href="/game/gamePage?game_id=${sgame.game_id}&user_id=${param.user_id}&category=${sgame.category}">
                    <img src="${sgame.thumbnail1}" alt="게임 사진">
                </a>
            </div>
            <div class="discount_block daily_deal_discount discount_block_large">
                <div class="discount_pct"><c:out value="${sgame.discount_rate}"/>%</div>
                <div class="discount_prices">
                    <div class="discount_original_price"><c:out value="${sgame.formattedOriginalPrice}"/></div>
                    <div class="discount_final_price">￦<c:out value="${sgame.formattedDiscountedPrice}"/></div>
                </div>
            </div>
        </div>
    	</c:forEach>    
    </div>
</div>
	<script>
	function remove(user_id, game_id) {
	    
  		var cart= {
  		  game_id : game_id,
  		  user_id : user_id
  		};

  		$.ajax({
  		  url: '/game/cart', 
  		  method: 'POST', 
  		  data: JSON.stringify(cart), 
  		  contentType: 'application/json; charset=UTF-8',
  		  success: function() {
  			    location.reload();
		},
  		  error: function(xhr, status, error) {
  		   	
  		    console.error('Error:', error);
  		  }
  		});
	}	
	function removeAll(user_id) {
	    
	    var cart= {
   		  user_id : user_id
   		};

   		$.ajax({
   		  url: '/game/cart', 
   		  method: 'POST', 
   		  data: JSON.stringify(cart), 
   		  contentType: 'application/json; charset=UTF-8',
  		  success: function() {
			    location.reload();
		},
		  error: function(xhr, status, error) {
		   	
		    console.error('Error:', error);
   		  }
   		});
	}
	
	function purchase() {

		  var user_id = '${param.user_id}';

		  var form = document.createElement("form");
		  form.setAttribute("method", "post");
		  form.setAttribute("action", "/game/index");

		  var userIdInput = document.createElement("input");
		  userIdInput.setAttribute("type", "hidden");
		  userIdInput.setAttribute("name", "user_id");
		  userIdInput.setAttribute("value", user_id);
		  form.appendChild(userIdInput);

		  document.body.appendChild(form);
		  form.submit();
		}



	
	</script>
</body>
</html>