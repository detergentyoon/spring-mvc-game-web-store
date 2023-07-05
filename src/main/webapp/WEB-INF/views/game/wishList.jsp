<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
    <style>
        *{
            padding: 0;
            margin: 0;
        }
        img{
            border: none;
        }
        a {
            text-decoration: none;
            color: #ffffff;
        }
        html.wish{
            height: 100%;
        }
        .wishlist{
            background: #202326;
            color: #c6d4df;
            font-size: 12px;
            display: block;
            min-height: 100%;
            height: auto;
            position: relative;
        }
        .wishlist h2{
            font-weight: 300;
            font-size: 14px;
            text-transform: uppercase;
            color: #fff;
            margin: 0 0 10px;
            letter-spacing: 0.03em;
            font-weight: normal;
            padding-top: 2px;
        }
        .wishlist_page{
            position: relative;
            width: 940px;
            margin: 0 auto;
        }
        .wishlist_header{
            position: relative;
            display: flex;
            align-items: center;
            margin: 15px 0 25px 0;
        }
        .wishlist_header img{
            width: 67px;
            height: 67px;
        }
        .wishlist_header h2{
            color: #fff;
            font-size: 26px;
            margin-left: 15px;
            margin-bottom: 0px;
        }
        .wishlist_solid{
            height: 1px;
            background-color: rgba(255,255,255,0.2);
            margin-bottom: 10px;
        }
        .wishlist_content{
            position: relative;
            height: auto;
        }
        .wishlist_row{
            top: 0px;
            overflow: hidden;
            display: flex;
            flex-direction: row;
            padding: 16px 16px 8px 16px;
            background-color: rgba(64, 81, 99, 0.9);
            color: #b2b8bd;
            margin-bottom: 10px;
            width: calc(100% - 32px);
            font-weight: 200;
            box-shadow: 0 0 5px rgba(0,0,0,0.2);
        }
        .game_img{
            position: relative;
            margin-right: 19px;
        }
        .game_img img{
            width: 292px;
            height: 136px;
        }
        .wishlist_row .content {
            display: flex;
            flex-direction: column;
            overflow: hidden;
            flex-grow: 1;
        }
        .wishlist_row .title {
            color: #fff;
            font-size: 22px;
            font-weight: 400;
            margin: 0 0 15px 0;
            white-space: nowrap;
            overflow: hidden;
            text-overflow: ellipsis;
        }
        .middle{
            display: flex;
            flex-direction: row;
        }
        .wishlist_row .stats {
            flex-grow: 1;
            flex-shrink: 1;
            display: grid;
            grid-template-columns: 140px auto;
            grid-template-rows: auto;
            margin-bottom: 10px;
            text-transform: uppercase;
            white-space: nowrap;
            font-size: 11px;
        }
        .wishlist_row .stats .value {
            white-space: nowrap;
            overflow: hidden;
            text-overflow: ellipsis;
            max-width: 250px;
        }
        .wishlist_row .purchase {
            min-height: 36px;
        }
        .wishlist_row .purchase_area {
            background-color: rgba(0,0,0,0.2);
            padding: 2px;
            display: flex;
            height: 32px;
            flex-shrink: 0;
        }
        .discount_block {
            white-space: nowrap;
        }
        .discount_block {
            position: relative;
            display: flex;
        }
        .discount_block.no_discount .discount_prices {
            background: none;
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
        .discount_block .discount_prices {
            background: transparent;
        }
        .discount_final_price {
            color: #BEEE11;
            line-height: 16px;
            font-size: 15px;
        }
        .discount_final_price {
            color: #ffffff;
            font-size: 13px;
        }
        .discount_block.no_discount .discount_final_price {
            padding: 0 6px;
            color: white;
        }
        .discount_block.no_discount .discount_final_price {
            margin-top: 5px;
        }
        .wishlist_row .purchase_area form {
            display: flex;
        }
        .btn {
            border-radius: 2px;
            border: none;
            padding: 1px;
            display: inline-block;
            cursor: pointer;
            text-decoration: none !important;
            color: #d2efa9;
        }
        .wishlist_row .purchase_area a > span {
            white-space: nowrap;
        }
        .add_btn > span {
            padding: 0 15px;
            font-size: 15px;
            line-height: 30px;
        }

        .btn > span {
            border-radius: 2px;
            display: block;
            background: #6fa720;
            background: -webkit-linear-gradient( top, #6fa720 5%, #588a1b 95%);
            background: linear-gradient( to bottom, #6fa720 5%, #588a1b 95%);
            background: linear-gradient( to right, #75b022 5%, #588a1b 95%);
        }
        .wishlist_row .bottom {
            margin-top: 5px;
        }
        .bottom_area {
        display: flex;
        justify-content: flex-end;
        }
        .wishlist_row .added {
            font-size: 11px;
            overflow: hidden;
            height: 19px;
            margin-top: 5px;
            white-space: nowrap;
            flex-shrink: 0;
        }
        .wishlist_row .remove_btn {
            display: inline;
            cursor: pointer;
            text-decoration: none;
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
        .discount_block_large .discount_pct {
            height: 32px;
            margin-bottom: 2px;
        }
        .discount_block .discount_pct, .discount_pct {
            background: rgba(76, 107, 34, 0.5);
        }
        .discount_original_price {
            position: relative;
            width: fit-content;
            color: #738895;
            font-size: 11px;
            line-height: 12px;
        }
        .discount_original_price {
            color: #707e89;
        }
    </style>
</head>
</head>
<body class="wishlist">
    <div class="wishlist_page">
        <div class="wishlist_header">
            <img src="" alt="사진">
            <h2><c:out value="${param.user_id}"/>님의 찜 목록</h2>
        </div>
        <c:forEach items="${mywish}" var="mywish">
        <div class="wishlist_solid"></div>
        <div class="wishlist_content">
            <div class="wishlist_row">
                <a href="/game/gamePage?game_id=${mywish.game_id}&user_id=${param.user_id}&category=${mywish.category}" class="game_img">
                    <img src="${mywish.thumbnail1}">
                </a>
                <div class="content">
                    <a href="#" class="title"><c:out value="${mywish.title}"/></a>
                    <div class="middle">
                        <div class="stats">
                            <div class="label">종합 평가:</div>
                            <c:choose>
								<c:when test="${mywish.total_likes < 10}">
								<div class="value">평가 정보 부족</div>
								</c:when>
								<c:otherwise>
									<c:set var="likes1Ratio" value="${(mywish.likes_1 / mywish.total_likes) * 100}" />
									<c:set var="likes0Ratio" value="${(mywish.likes_0 / mywish.total_likes) * 100}" />
									<c:choose>
									    <c:when test="${likes1Ratio >= 80}">
									        <div class="value" style="color: #66C0F4;">매우 긍정적</div>
									    </c:when>
									    <c:when test="${likes0Ratio >= 80}">
									        <div class="value" style="color: #CC3D3D;">매우 부정적</div>
									    </c:when>
									    <c:when test="${likes1Ratio >= 60 && likes1Ratio < 80}">
									        <div class="value" style="color: #66C0F4;">긍정적</div>
									    </c:when>
									    <c:when test="${likes0Ratio >= 60 && likes0Ratio < 80}">
									        <div class="value" style="color: #CC3D3D;">부정적</div>
									    </c:when>									    
									    <c:otherwise>
									        <div class="value" style="color: #A34C25;">복합적</div>
									    </c:otherwise>
									</c:choose>
								</c:otherwise>
							</c:choose>
                            <div class="label">출시일:</div>
                            <div class="value"><c:out value="${mywish.release_date}"/></div>
                        </div>
                        <div class="purchase">
                            <div class="purchase_area">
                            <c:choose>
                            	<c:when test="${mywish.discount_rate == 0 }">
                                <div class="discount_block discount_block_large no_discount">
                                    <div class="discount_prices">
                                        <div class="discount_final_price"><c:out value="${mywish.formattedOriginalPrice}"/></div>
                                    </div>
                                </div>
                                </c:when>
                               <c:otherwise>
                               <div class="discount_block discount_block_large">
                                    <div class="discount_pct"><c:out value="${mywish.discount_rate}"/>%</div>
                                    <div class="discount_prices">
                                        <div class="discount_original_price"><c:out value="${mywish.formattedOriginalPrice}"/></div>
                                        <div class="discount_final_price"><c:out value="${mywish.formattedDiscountedPrice}"/></div>
                                    </div>                                    
                                </div>
                                </c:otherwise>
                             </c:choose>   
                                <a class="btn add_btn"><span>장바구니에 추가</span></a>
                            </div>
                        </div>
                    </div>
                    <div class="bottom">
                        <div class="bottom_area">
                            <div class="added">
                                	찜한 날짜: <c:out value="${mywish.date_added}"/>(<a class="remove_btn" href="/game/wishProcessing?game_id=${mywish.game_id}&user_id=${param.user_id}&caseNo=1">삭제</a>)
                            </div>
                        </div>
                    </div>
                </div>
            </div>      
        </div>
        </c:forEach>
    </div>
</body>
</html>