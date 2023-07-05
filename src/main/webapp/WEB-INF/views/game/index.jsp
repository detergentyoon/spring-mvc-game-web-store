<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.URLEncoder" %>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <link rel="icon" type="image/svg+xml" href="/vite.svg" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>결제위젯 샘플</title>
    <script src="https://js.tosspayments.com/v1/payment-widget"></script>
    <style>
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
    #checkout_review_cart_area {
        margin-top: 56px;
    }
    .checkout_review_cart_item {
        margin: 3px 0;
        position: relative;
        min-height: 77px;
        line-height: 16px;
        background: rgba(0,0,0,0.2);
        padding: 0 2.5%;
    }
    .checkout_review_item_img {
        float: left;
        padding-top: 16px;
        width: 120px;
    }
    .checkout_review_item_img img {
        width: 100%;
    }
    img {
    border: none;
    }
    .checkout_review_item_price {
        float: right;
        padding-top: 23px;
        text-align: right;
    }
    .checkout_review_item_price .price {
        color: #c6d4df;
        font-size: 13px;
    }
    .checkout_review_item_desc {
        overflow: hidden;
        padding: 23px 3% 0 3%;
        color: #c6d4df;
        font-size: 13px;
    }
        .checkout_content_box .checkout_content.cart, .checkout_content_box .checkout_content.confirm {
        background: rgba( 0, 0, 0, 0.2 );
        padding: 16px;
        margin-top: 4px;
    }
    .cart_totals_area {
        margin-left: auto;
        padding: 6px;
    }
    .cart_total_rule {
        margin: 9px 0px;
        border-top: 1px solid #7092a5;
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
    .cart_totals_area .price {
        position: absolute;
        right: 0px;
        text-align: right;
        color: #c6d4df;
        font-size: 13px;
        padding-top: 2px;
    }
</style>
  </head>
<body style="background: #202326;">
<div class="page_content" id="user_id_value" data-user-id="<%= request.getAttribute("user_id") %>">
    <div class="leftcol">
	    <div id="payment-method"></div>
	    <!--  <h1>User ID: <%= request.getAttribute("user_id") %></h1>-->
	    <button id="payment-request-button" style="float: right;">결제하기</button>
    </div>
    <div class="rightcol">
        <div class="checkout_content_box">
            <div id="review_tab" class="checkout_tab" style="display: block;">
                <div class="tablet_checkout_right_column">
                    <div id="checkout_review_cart_area">
                    	<c:forEach items="${cartList}" var="cart">
                        <div class="checkout_review_cart_item even" id="${cart.game_id}">
                            <div class="checkout_review_item_img">
                                <img src="${cart.thumbnail1}" alt="사진" width="120" height="45">
                            </div>
                            <div class="checkout_review_item_price">
                                <div class="price">￦<c:out value="${cart.formattedDiscountedPrice}"/></div>
                            </div>
                            <div class="checkout_review_item_desc"><c:out value="${cart.title}"/></div>
                        </div>
                        </c:forEach>
                        <c:set var="gameName" value="" />
						<c:set var="count" value="${fn:length(cartList) - 1}" />					                       
                        <div class="checkout_content confirm">
                            <div class="cart_totals_area">
                                <div class="cart_total_rule"></div>
                                <div class="cart_total_row">
                                    <div class="price">￦<c:out value="${totalPrice}"/></div>
                                    <div class="">						<c:if test="${fn:length(cartList) > 0}">
						    <c:set var="gameName" value="${cartList[0].title}" />
						    <c:if test="${count > 0}">
						        ${gameName} 외 ${count}건
						    </c:if>
						</c:if>합계</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
    <script>
      const paymentWidget = PaymentWidget(
        "test_ck_D5GePWvyJnrK0W0k6q8gLzN97Eoq",
        // 비회원 customerKey
        PaymentWidget.ANONYMOUS
      );
		const totalPrice = parseInt('${totalPrice}');
		var user_id = document.getElementById("user_id_value").getAttribute("data-user-id");
		var orderName = '${gameName}';
		var count = ${count};
		if (count > 0) {
			  orderName += " 외 " + count + "건";
			}
		console.log(user_id);
      /**
       * 결제창을 렌더링합니다.
       * @docs https://docs.tosspayments.com/reference/widget-sdk#renderpaymentmethods%EC%84%A0%ED%83%9D%EC%9E%90-%EA%B2%B0%EC%A0%9C-%EA%B8%88%EC%95%A1
       */
      paymentWidget.renderPaymentMethods("#payment-method", totalPrice);

      const paymentRequestButton = document.getElementById(
        "payment-request-button"
      );
      paymentRequestButton.addEventListener("click", () => {
        /** 결제 요청
         * @docs https://docs.tosspayments.com/reference/widget-sdk#requestpayment%EA%B2%B0%EC%A0%9C-%EC%A0%95%EB%B3%B4
         */
        paymentWidget.requestPayment({
          orderId: generateRandomString(),
          orderName: orderName,
          successUrl: window.location.origin + "/game/success?user_id=" + user_id,
          failUrl: window.location.origin + "/game/fail",        
        });                 
      });

      function generateRandomString() {
        return window.btoa(Math.random()).slice(0, 20);
      }
    </script>
</body>
</html>