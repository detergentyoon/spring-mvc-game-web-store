<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<% request.setCharacterEncoding("utf-8");%>
<%@ page import="java.net.URLEncoder" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<title><c:out value="${gPage.title}" /></title>
<link rel="icon" href="resources/static/imgs/favicon/favicon16.png" type="image/x-icon">
    <style>
        *{
            padding: 0;
            margin: 0;
        }
        body.detail_body{
            background-color: #1b2838;
            background-image: url(${gPage.thumbnail1});
            background-position: center top;
            background-repeat: no-repeat;
            background-size: 1000px 450px;
            color: #ffffff;
        }
        div{
            display: block;
        }
        ul{
            list-style-position: inside;
            display: block;
            list-style-type: disc;
            margin-block-start: 1em;
            margin-block-end: 1em;
            margin-inline-start: 0px;
            margin-inline-end: 0px;
            padding-inline-start: 40px;
        }
        body.detail_body a{
            text-decoration: none;
        }
        body.detail_body h1{
            display: block;
            margin-block-start: 0,67em;
            margin-block-end: 0,67em;
            margin-inline-start: 0px;
            margin-inline-end: 0px;
        }
        body.detail_body h2{
            display: block;
            margin-block-start: 0.83em;
            margin-block-end: 0.83em;
            margin-inline-start: 0px;
            margin-inline-end: 0px;
        }
        body.detail_body h4{
            display: block;
            margin-block-start: 1.33em;
            margin-block-end: 1.33em;
            margin-inline-start: 0px;
            margin-inline-end: 0px;
            font-weight: bold;
        }
        body.detail_body img{
            -webkit-user-drag: none;
            border: none;
            overflow-clip-margin: content-box;
            overflow: clip;
        }
        body.detail_body::before{
        content: ""; /* 가상 요소의 내용은 없음 */
        position: absolute; /* 절대위치 설정 */
        top: 0;
        left: 0;
        width: 100%; /* 가상 요소의 너비와 높이는 부모 요소와 같아야 함 */
        height: 100%;
        /* background-color: rgba(27, 40, 56, 0.8); */
        background-color: rgba(51, 51, 51, 0.8); /* 배경색 설정 */
        z-index: -1; /* 가상 요소를 배경 이미지 뒤에 위치시킴 */
        }
        .container-fluid{
            flex-direction: column;
            font-size: 15px;
        }
        /*breadcrumbs css*/
        #breadcrumbs{
            max-width: 940px;
            margin: 0 auto;
            font-size: 15px;
        }
        #breadcrumbs a:hover{
            color: #79C42D;
        }
        #breadcrumbs > a{  
            color: #99FF33;
        }
        #breadcrumbs > span{
            color: #fff;
        }
        /*breadcrumbs css end*/
        /*contentHeader css*/
        #contentHeader{
            max-width: 964px;
            margin: 0 auto;
            min-height: 46px;
        }
        #hoverfade:hover{
        background: linear-gradient(to left, rgba(103, 193, 245, 0.4), rgba(103, 193, 245, 0.6),  rgba(103, 193, 245, 0.9)); /* 그라데이션 설정 */
        }
        #btn{
            position: relative;
            float: right;
        }
        #hoverfade{ /* 찜하기 / 찜 목록 / 커뮤니티 허브 버튼 */
            text-decoration: none !important;
            color: #76F567;
            display: inline-block;
            border-radius: 2px;
            border: none;
            cursor: pointer;
            background: rgba(178, 248, 170, 0.2);
            padding: 1px;
        }
        #gamename{
            font-size: 26px;
            color: white;
        }
        #hoverfade > span{
            padding: 0 15px;
            font-size: 15px;
            line-height: 30px;
        }
        #hoverfade:hover{
            color: #fff;
        }
        /*contentHeader css end*/
        #pageMain{
            padding: 0;
            margin: 0;
        }
        /*page_contents css*/
        #page_contents{
            width: 940px;
            height: 410px;
            margin: 0 auto;
        }
        #inf{
            padding: 0px 0px 0px 0px;
        }
        #headerimg{
            margin-bottom: 7px;
        }
        #headerimg > img{
            width: 100%;
            height: 151px;
        }
        #intro_txt{
            max-height: 100px;
            overflow: hidden;
            font-size: 12px;
            line-height: 18px;
            padding-right: 16px;
            display: -webkit-box;
            -webkit-line-clamp: 6;
            -webkit-box-orient: vertical;
            color: #C1E6B9;
        }
        #responsive{
            color: #94BE7D;
        }
        #user_reviews{
            font-size: 15px;
            margin-top: 8px;
        }
        #user_reviews_row{
            display: flex;
            line-height: 16px;
        }
        #titlecol{
            font-size: 15px;
        }
        #summarycol{
            text-overflow: ellipsis;
        }
        #release_date{
            display: flex;
            line-height: 14px;
            padding-top: 7px;
            padding-bottom: 13px;
        }#releasecol{
            overflow: hidden;
            font-size: 15px;
        }
        #datecol{
            max-height: 30px;
            overflow: hidden;
            color: white;
            font-size: 15px;
        }
        #dev_row{
            display: flex;
            line-height: 16px;
        }
        #dev_row .col-4{
            font-size: 15px;
        }
        #sumcol a{
            color: #74F567;
            font-size: 14px;
        }
        #sumcol a:hover{
            color: #fff;
        }
        #tagcol{
            font-size: 11px;
            margin: 5px 0px 0px 0px;
        }
        #taglabel{
            line-height: 15px;
            font-size: 12px;
        }
        #poptag{
            white-space: nowrap;
            height: 20px;
        }
        .app_tag{
            display: inline-block;
            line-height: 19px;
            padding: 0 7px;
            color: #7AF567;
            background: rgba(103, 193, 245, 0.2);
            box-shadow: none;
            margin-right: 2px;
            border-radius: 2px;
            cursor: pointer;
            margin-bottom: 3px;
            max-width: 200px;
            white-space: nowrap;
            overflow: hidden;
            text-overflow: ellipsis;
        }
        .app_tag:hover{
            background: linear-gradient(to left, rgba(103, 193, 245, 0.4), rgba(103, 193, 245, 0.6),  rgba(103, 193, 245, 0.9));
            color: #fff;           
        }
        /*page_contents css end*/
        /*already_owned css*/
        .already_owned{
            height: 40px;
            padding: 0px 15px 0px 0px;
            position: relative;
            background: linear-gradient(to right,  rgba(163,207,6,0.6) 0%,rgba(75,106,33,0.6) 100%);
            font-size: 18px;
            font-weight: 300;
            line-height: 40px;
            color: #a3cf06;
            margin-bottom: 1px;
            width: 925px;
            margin: 0 auto;
        }
        .already_owned_flag{
            position: relative;
            float: left;
            top: 10px;
            left: -8px;
            box-shadow: 1px 1px 2px #000;
            background: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAsAAAAKCAYAAABi8KSDAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyJpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMy1jMDExIDY2LjE0NTY2MSwgMjAxMi8wMi8wNi0xNDo1NjoyNyAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNiAoV2luZG93cykiIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6OUNDNzBFNTUyMUM0MTFFNDk1REVFODRBNUU5RjA2MUYiIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6OUNDNzBFNTYyMUM0MTFFNDk1REVFODRBNUU5RjA2MUYiPiA8eG1wTU06RGVyaXZlZEZyb20gc3RSZWY6aW5zdGFuY2VJRD0ieG1wLmlpZDo5Q0M3MEU1MzIxQzQxMUU0OTVERUU4NEE1RTlGMDYxRiIgc3RSZWY6ZG9jdW1lbnRJRD0ieG1wLmRpZDo5Q0M3MEU1NDIxQzQxMUU0OTVERUU4NEE1RTlGMDYxRiIvPiA8L3JkZjpEZXNjcmlwdGlvbj4gPC9yZGY6UkRGPiA8L3g6eG1wbWV0YT4gPD94cGFja2V0IGVuZD0iciI/Pv3vUKAAAAAlSURBVHjaYvz//z8DsYARpFhISAivjnfv3jGSp3jUGeQ4AyDAADZHNe2nyOBrAAAAAElFTkSuQmCC') no-repeat 4px 4px #a3cf06;
            font-size: 10px;
            color: #111111;
            height: 18px;
            line-height: 19px;
            padding: 0 0 0 18px;
            white-space: nowrap;
            z-index: 5;
        }
        .already_library{
            overflow: hidden;
            white-space: nowrap;
            text-overflow: ellipsis;
        }
        .comments{
            background: linear-gradient(135deg,  rgba(97,100,101,0.3) 0%,rgba(226,244,255,0.3) 100%);
            padding: 0px 16px 16px 16px;
            margin: 0px auto;
            margin-bottom: 40px;
            max-width: 925px;
        }
        .comments .user_img{
            width: 100px;
            height: 100px;
        }
        .comment_create{
            max-width: 908;
            position: relative;
            overflow: visible;
            padding-top: 16px;
        }
        .comment_create h1{
            font-size: 18px;
            margin-bottom: 3px;
            color: #7CF466;
            font-weight: 300;
            width: 100%;
            border-top: 1px solid #212c3d;
            padding-top: 10px;
        }
        .comment_create p{
            font-size: 13px;
            margin-bottom: 15px;
            line-height: 17px;
            color: #8FAB91;
        }
        .comment_create_area{
            overflow: hidden;
            display: block;
        }
        .comment_create .input_box{
            border: 1px solid #233c51;
            border-radius: 3px;
            height: 132px;
            width: 764px;
            max-width: 800px;
            background-color: #2C3C26;
            color: #D4E0D3;
            padding: 10px 11px;
            font-size: 13px;
            font-weight: normal;
        }
        .ctr{
            margin-top: 4px;
        }
        .ctr_left{
            float: left;
            margin-bottom: 8px;
            margin-right: 8px;
        }
        .ctr_right{
            float: right;
        }
        .ctr_left_vote{
            color: #ACC9AC;
            font-size: 13px;
            font-weight: normal;
        }
        .estimation{
            border-radius: 2px;
            border: none;
            padding: 1px;
            display: inline-block;
            cursor: pointer;
            text-decoration: none !important;
            color: #72F567 !important;
            background: rgba(103, 193, 245, 0.2);
            transition: background-position 0.3s;
        }
        .btn_active{
            text-decoration: none !important;
            color: #fff !important;
            background: rgba( 103, 193, 245, 0.6 );
        }
        .comment_rcd{
            position: relative;
            overflow: visible;
            padding-top: 16px;
        }
        .cmtdata{
            font-size: 18px;
            font-weight: normal;
            margin-bottom: 3px;
            color: #6FF466;
            font-family: "Motiva Sans", Sans-serif;
            font-weight: 300;
            width: 100%;
            border-top: 1px solid #212c3d;
            padding-top: 10px;
        }
        .cmtbox{
            background: none;
            margin-bottom: 0px;
            background-image: none;
            margin-top: 12px;
        }
        .estimation >   span{
            padding: 0 15px;
            font-size: 12px;
            line-height: 20px;
            border-radius: 2px;
            display: block;
            background: transparent;
        }
        .estimation:hover {
            background: linear-gradient(to right, rgba(103, 193, 245, 0.2), #67c1f5);
            background-position: right;
            color: #fff !important;
        }
        .grade, .total{
        	display: inline-block;
        	vertical-align: middle;
        }
        /*already_owned css end*/
    </style>
    <!--page_contents2 css-->
    <style>
        #page_contents2{
            width: 940px;
            margin: 0 auto;
        }
        #interest{
            margin-bottom: 0;
            background-color: rgba(0,0,0,0.2);
            color: #fff;
            font-size: 14px;
            padding: 10px 18px;
        }
        .col-4.order-1 .box.notlogincol{
            font-size: 15px;
            line-height: 22px;
            color: #A7C3A5;
        }
        .col-4.order-1 .box{
            background-color: rgba(0,0,0,0.1);
            padding: 16px;
            margin-bottom: 8px;
            margin-top: 0;
        }
        .box.recommend,
        .box.recommend p{
            color: #9CAC95;
            font-size: 14px;
        }
        .similar_app{
            display: flex;
            margin-top: 3px;
        }
        .box.recommend .similar_app > a{
            display: block;
        }
        .box.recommend .similar_app > a >img{
            width: 130px;
            margin-right: 1px;
        }
        #loginbtn{
            margin-bottom: 4px;
            border-radius: 2px;
            border: none;
            padding: 1px;
            display: inline-block;
            cursor: pointer;
            text-decoration: none !important;
            color: #76F567;
            background: rgba(103,193,245,0.2);
            width: 68px;
            height: 28px;
            text-align: center;
            line-height: 28px;
        }
        #loginbtn:hover{
            background: linear-gradient(to left, rgba(103, 193, 245, 0.4), rgba(103, 193, 245, 0.6),  rgba(103, 193, 245, 0.9));
            color: #fff;
        }
        #playtype{
            background-color: rgba(0,0,0,0.1);
            padding: 12px;
            margin-bottom: 8px;
            margin-top: 0;
        }
        #playspec{
            margin-bottom: 2px;
            display: flex;
            align-items: center;
        }
        #playspec .row{
            background: rgba(24,36,50);
            margin-left: 2px;
        }
        #playspec i{
            padding: 0px 4px;
            display: flex;
        }
        #playspec .col-2{
            background-color: rgba(0, 0, 0, 0.2);
            width: 38px;
            height: 30px;
        }
        #playspec .col-10{
            width: 220px;
            height: 30px;
            line-height: 17px;
        }
        #playspec div{
            color: #88F466;
            padding: 6px 8px;
            background: rgba(103, 193, 245, 0.1);
            width: 100%;
            border-radius: 1px;
        }
        #lang{
            background-color: rgba(0, 0, 0, 0.1);
            padding: 16px;
            margin-bottom: 8px;
            margin-top: 0;
        }
        #langtitle{
            font-size: 10px;
            color: #93A990;
            margin-bottom: 2px;
        }
        #langoptions{
            border-collapse: collapse;
        }
        tbody{
            display: table-row-group;
            vertical-align: middle;
            border-color: inherit;
        }
        tr{
            display: table-row;
            vertical-align: inherit;
            border-color: inherit;
        }
        th{
            display: table-cell;
            vertical-align: inherit;
            text-align: center
        }
        td{
            display: table-cell;
            vertical-align: inherit;
        }
        #langoptions tr{
            border-bottom: 1px solid #626366;
        }
        #langoptions th{
            font-size: 10px;
            color: #B1BCAC;
            font-weight: normal;
        }
        #langoptions th.checkcol{
            width: 62px;
        }
        #langoptions td{
            color: #8AAD8B;
            text-align: center;
            padding: 3px 0px 3px 0px;
            font-size: 10px;
        }
        .ellipsis{
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap;
        }
        #langoptions td.checkcol{
            width: 62px;
        }
        #underDetails{
            background-color: rgba(0, 0, 0, 0.1);
            padding: 16px;
            margin-bottom: 8px;
            margin-top: 0;
            color: #8CAC8A;
            line-height: 20px;
        }
        #underDetails b{
            font-family: Arial, Helvetica, sans-serif;
            color: #5B925B;
            font-weight: normal;
            font-size: 10px;
        }
        .detail_block a{
            font-weight: 300;
            color: #87F567;
        }
        .detail_block a:hover{
            color: #fff;
        }
        #description_col{
            width: 616px;
            font-size: 14px;
        }
        a.linkbar{
            min-height: 17px;
            padding-top: 4px;
            padding-left: 8px;
            padding-bottom: 4px;
            line-height: 17px;
            background-color: rgba(120, 245, 103, 0.1);
            color: #67F56A;
            border-radius: 1px;
            display: block;
            margin-bottom: 2px;
        }
        a.linkbar:hover{
            background: linear-gradient(to left, rgba(103, 193, 245, 0.4), rgba(103, 193, 245, 0.6),  rgba(103, 193, 245, 0.9));
            color: #fff;           
        }
        .franchise_notice{
            display: block;
            position: relative;
            height: 54px;
            color: #ffffff;
            font-size: 16px;
            font-weight: 300;
            text-shadow: 1px 1px rgba(0, 0, 0, 0.5);
            margin-bottom: 15px;
            border-radius: 6px;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.5);
            overflow: hidden;
        }
        .franchise_notice .background_img{
            height: 54px;
            border: 5px solid transparent;
            transition: background-size 0.3s ease-in-out, box-shadow 0.3 ease;
            background-size: cover;
            background-position: 50%;
            opacity: 0.5;
        }
        .franchise_notice .background_img:hover{
            background-size: 120%;
            box-shadow: 0 0 0 1px white, 0 0 0 2px gray;
        }
        .franchise_notice > div{
            top: 0;
            bottom: 0;
            left: 0;
            right: 0;
            position: absolute;
        }
        .franchise_notice .franchise_name{
            height: 38px;
            padding-top: 16px;
            padding-left: 16px;
            z-index: -1;
        }
        .game_purchase_game{
            position: relative;
            background:linear-gradient( -60deg, rgba(226,244,255,0.3) 5%,rgba(84, 107, 115, 0.3) 95%);
            border-radius: 4px;
            font-weight: normal;
            font-size: 13px;
            color: #C6DFC6;
            padding: 16px;
            padding-bottom: 26px;
            margin-bottom: 28px;
            z-index: 1;
        }
        .game_purchase_platform{
            float: right;
        }
        .game_purchase_game h1{
            font-size: 18px;
            color: #fff;
            font-weight: normal;
        }
        .game_purchase_btn{
            position: absolute;
            right: 16px;
            bottom: -17px;
            white-space: nowrap;
            text-align: right;
        }
        .game_purchase_btn_bg {
            height: 32px;
            display: flex;
            align-items: center;
            background-color: #000;
            padding: 2px;
            border-radius: 2px;
        }
        .game_purchase_btn_bg > *{
            font-size: 12px;
            display: inline-block;
            margin-left: 2px;
            vertical-align: middle;
        }
        .game_purchase_price{
            position: relative;
            height: 32px;
            overflow: hidden;
        }
        .game_purchase_price_ori {
            background-color: #000000;
            font-size: 13px;
            padding: 0 12px;
            height: 24px;
            display: flex;
            align-items: center;
        }
        .game_purchase_price .discount_percent{
            display: inline-block;
            height: 32px;
            line-height: 32px;
            font-size: 25px;
            text-align: center;
            overflow: hidden;
            padding: 0 6px;
            font-weight: 500;
            color: #BEEE11;
            background: #4c6b22;
        }
        .game_purchase_price .discount_price{
            display: inline-block;
            position: relative;
            vertical-align: top;
            height: 32px;
            background: #344654;
            padding-left: 4px;
        }
        .original_price{
            position: absolute;
            left: auto;
            right: 6px;
            top: 2px;
            font-size: 11px;
            width: fit-content;
            color: #738895;
            line-height: 12px;
            text-decoration: line-through;
  			display: inline-block;
        }
        .final_price{
            padding-left: 8px;
            padding-top: 13px;
            padding-right: 6px;
            font-size: 14px;
            color: #BEEE11;
            line-height: 16px;
        }
        .addcart{ /* 장바구니에 추가 */
            position: relative;
            border-radius: 2px;
            padding: 1px;
            display: inline-block;
            cursor: pointer;
            color: #d2efa9;
            background-color: #6fa720;
            font-size: 15px;
            line-height: 30px;
        }
        .addcart:hover{
            background: linear-gradient(to left, rgba(111, 167, 32, 0.7), rgba(111, 167, 32, 0.8),  rgba(111, 167, 32, 1));
            color: #fff;    
        }
        .game_explain{
            position: relative;
            padding-bottom: 20;
        }
        .game_explain_area{
            max-height: 850px;
            overflow: hidden
        }
        .more_explain_area{
            max-height: none;
        }
        .game_description {
            line-height: 1.5em;
            font-size: 15px;
            margin-top: 30px;
            overflow: hidden;
            font-weight: normal;
            color: #9BC89B;
        }
        body.detail_body h2{
            font-size: 15px;
            text-transform: uppercase;
            color: #fff;
            margin: 0 0 10px;
            letter-spacing: 0.03em;
            font-weight: normal;
            padding-top: 2px;
        }
        #description_col h2{
            line-height: 26px;
            background-image: url(https://store.cloudflare.steamstatic.com/public/images/v6/maincol_gradient_rule.png);
            background-repeat: no-repeat;
            background-position: bottom left;
        }
        #description_col .game_description h2.b_tag{
            margin-top: 18px;
            margin-bottom: 0px;
            background-image: none;
            font-size: 15px;
            color: #46BC2F;
            text-transform: none;
            letter-spacing: 0px;
        }
        .game_description_fade{
            position: absolute;
            left: 0;
            right: 0;
            bottom: -25px;
            height: 73px;
            z-index: 1;
            background: url(data:image/png;base64,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) top repeat-x;
        }
        .description_read_more{
            position: absolute;
            right: 0;
            bottom: 0;
            height: 20px;
            line-height: 20px;
            cursor: pointer;
            color: #63A653;
            font-size: 15px;
            padding-right: 12px;
            background: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAgAAAAICAYAAADED76LAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAJ5JREFUeNpiDK5Z5sjAwFAJxAFrmiO/MUBBSO3yDCBlwAQkjgLxdyDeDBTkQpKsAuJuxv///4ME2ICc1UDMA1IIxEVA7Ag08S4j0ApmIEcOiJ9CFRkBsQMQPwZicRYgYQmVcAXiUCAWA+JXULEXTEBjjgAZxUC8G4jVkCRBIBfsBqjDooBULxBfhjo6FKj5F1wBkqIQII4ASYLEAAIMAPrDNy1EYNLFAAAAAElFTkSuQmCC) right center no-repeat;
        }
        .description_read_more:hover{
            color: #fff;
        }
        .game_system_req{
            position: relative;
        }
        .system_req_opt{
            margin-top: 30px;
            overflow: hidden;
        }
        .req_cnts{
            margin-top: 10px;            
        }
        .req_cnt{
            font-weight: normal;
            font-size: 15px;
        }
        .req_left, .req_right{
            float: left;
            width: 300px;
        }
        .req_right{
            margin-left: 8px;
        }
        .req_cnt ul{
            list-style-type: none;
            margin-left: 0px;
            line-height: 18px;
            padding: 0px;
            margin: 0px;
            list-style: none;
        }
        .req_cnt strong{
            font-weight: normal;
            font-size: 15px;
            color: #A6D6A9;
            text-transform: uppercase;
            display: inline-block;
            margin-right: 4px;
        }
        ul ul{
            list-style-type: circle;
            margin-block-start: 0px;
            margin-block-end: 0px;
        }
        .req_cnt ul li{
            margin: 2px 0px;
        }
        .req_ul > li{
            list-style-position: outside;
        }
        li{
            display: list-item;
            text-align: left;
        }
        ul.req_ul {
            padding-left: 0;
        }
        #description_col .box{
            margin-top: 40px;
            margin-bottom: 16px;
        }
        #description_col .box .right{
            margin-right: 3px;
        }
        #description_col .box .box_head .right a{
            float: right;
            background-color: rgba( 133, 245, 103, 0.2 );
            border-radius: 1px;
            color: #67F571;
            font-size: 15px;
            padding: 2px 4px;
        }
        .game_app{
            margin-bottom: 2px;
            display: flex;
            justify-content: space-between;
        }
        .game_rcmd {
            white-space: nowrap;
            width: auto;
            height: 160px;
            background-color: rgba(0, 0, 0, 0.2);
            display: flex;
            flex-wrap: nowrap;
        }
        .game_rcmd a.game_block{
            float: none;
            display: inline-block;
            vertical-align: top
        }
        #description_col .box .game_rcmd a{
            float: left;
            padding: 15px;
            height: 100px;
            margin-right: 2px;
            border: 1px solid rgba( 0, 0, 0, 0 );
        }
        .game_block{
            position: relative;
            width: 33.33%;
            box-sizing: border-box;
        }
        .game_block_img{
            width: 171px;
            height: 64px;
        }
        #description_col .box .game_rcmd a h4{
            font-size: 15px;
            font-weight: normal;
            font-weight: normal;
            color: #92BB91;
            width: 171px;
            text-overflow: ellipsis;
            overflow: hidden;
            white-space: nowrap;
            margin-bottom: 0px;
        }
        .game_block .price_block{
            margin: 0;
            text-align: right;
            padding: 3px 0;
            line-height: 17px;
            min-height: 17px;
            font-size: 12px;
        }
        .price_block{
            position: relative;
            display: flex;
        }
        #description_col .box .price_block .game_price{
            display: flex;
            flex-direction: row;
        }
        .game_block .price_block .game_price{
            display: inline-block;
            padding: 0 3px;
            background-color: rgba(20,31,44,0.4);
            border-radius: 1px;
        }
        .price_block.no_dis .game_price{
            background: none;
        }
        .price_block .game_price{
            display: flex;
            background: #344654;
            display: flex;
            flex-direction: column;
            align-items: end;
            justify-content: center;
            padding-left: 4px;
        }
        .price_inline .game_price{
            padding: 0 5px;
            display: flex;
            align-items: center;
            flex-direction: row;
            flex-shrink: 1;
            overflow: hidden;
            justify-content: end;
        }
        .price_block.no_dis .final_price{
            padding: 0 6px;
            color: white;
        }
        .price_inline .final_price{
            padding-left: 4px;
            font-size: 11px;
            line-height: 12px;
        }
        .final_price {
            color: #BEEE11;
            line-height: 16px;
            font-size: 15px;
        }
        .price_block .discount_pct{
            font-weight: normal;
            font-weight: 500;
            color: #BEEE11;
            background: #4c6b22;
            display: inline-block;
        }
        .price_inline{
            line-height: 15px;
        }
        .price_inline .discount_pct{
            padding: 0 3px;
        }
        .ori_price{
            position: relative;
            width: fit-content;
            color: #738895;
            font-size: 11px;
            line-height: 12px;
        }
        .game_block {
            position: relative;
        }

        .price_block {
            display: flex;
            align-items: center;
        }

        .discount_pct {
            font-weight: normal;
            font-weight: 500;
            color: #BEEE11;
            background: #4c6b22;
            display: inline-block;
            padding: 0 3px;
            line-height: 12px;
        }

        .game_price {
            display: flex;
            align-items: center;
            line-height: 12px;
        }

        .final_price {
            color: #BEEE11;
            line-height: 16px;
            font-size: 15px;
            padding-left: 4px;
        }

        .ori_price {
            position: relative;
            width: fit-content;
            color: #738895;
            font-size: 11px;
            line-height: 12px;
        }
    </style>
    <!--page_contents2 css end-->
    <style>
        .review_ctn{
            margin-bottom: 32px;
            border-top: 1px solid #000;
        }
        .review_header{
            padding-bottom: 4px;
            margin-top: 40px;
            background-image: url(https://store.cloudflare.steamstatic.com/public/images/v6/maincol_gradient_rule.png);
            background-repeat: no-repeat;
            background-position: bottom left;
        }
        .review_header.no_margin{
            margin-bottom: 0px;
        }
        .review_statistics{
            background-color: #2a475e;
            box-shadow: 0 0 5px #000;
            position: relative;
        }
        .review_statistics_area{
            width: 100%;
            display: inline-block;
        }
        .review_summary{
            border: none;
            margin-bottom: 0px;
            padding: 10px;
            background: rgba(152, 226, 79, 0.8);
            min-height: 38px;
        }
        .review_summary_area{
            display: inline-block;
            margin-right: 15px;
            color: #8ba6b6;
            min-width: 320px;
        }
        .review_summary .title{
            font-weight: normal;
            font-size: 15px;
            margin-bottom: 5px;
            color: #e5e5e5;
        }
        .review_summary .game_statistics{
            font-weight: bold;
            font-size: 17px;
            line-height: 9px;
            color: black;
            text-shadow: 1px 1px rgba( 0, 0, 0, 0.2 );
        }
        .user_reviews{
            margin-top: 0px;
            min-height: 1000px;
        }
        .user_reviews .leftcol{
            width: 616px;
            float: left;
        }
        .user_reviews .rightcol{
            width: 308px;
            margin-left: 14px;
            float: right;
        }
        .best_reviews{
            font-weight: normal;
            font-size: 14px;
            color: #ffffff;
            text-transform: uppercase;
            padding-bottom: 5px;
            letter-spacing: 2px;
        }
        .review_box{
            background-color: rgba( 0, 0, 0, 0.2 ) !important;
            margin-bottom: 26px;
            background-image: url(https://store.cloudflare.steamstatic.com/public/images/v6/maincol_gradient_rule.png);
            background-repeat: no-repeat;
            background-position: top left;
            display: inline-block;
        }
        .review_box .leftcol{
            width: 184px;
            float: left;
            padding: 8px;
            opacity: 0.6;
        }
        .leftcol .review_box .rightcol{
            float: left;
            width: 400px;
            position: relative;
        }
        .user_box{
            float: left;
            padding-right: 8px;
        }
        .user_box .user_img{
            display: inline-block;
            padding-right: 8px;
            width: 36px;
            height: 36px;
        }
        .review_box .user_name{
            text-overflow: ellipsis;
            white-space: nowrap;
            width: 100px;
            overflow: hidden;
            margin-top: 0px;
            margin-top: -2px;
            margin-bottom: -1px;
            display: inline-block;
            color: #c1dbf4;
            font-size: 13px;
            font-weight: bold;
        }
        .review_box .evaluation{
            margin: 8px 0 13px;
            display: block;
            background: rgba( 0, 0, 0, 0.2 );
            height: 40px;
        }
        .review_box .evaluation .icon_img{
            float: left;
            margin-right: 10px;
        }
        .review_box .evaluation .title{
            font-size: 16px;
            color: #d6d7d8;
            font-weight: normal;
            padding: 3px 0px 0px 0px;
            line-height: 19px;
        }
        .review_box .post_date{
            margin: 0px 0px 8px;
            font-size: 10px;
            text-transform: uppercase;
            font-style: normal;
            color: #8091a2;
            display: inline-block;
            opacity: 0.6;
        }
        .review_box .content.close{
            max-height: 225px;
            overflow: hidden;
            position: relative;
            margin-right: 8px;
            font-weight: normal;
            font-size: 13px;
            line-height: 17px;
            color: #acb2b8;
            overflow-wrap: break-word;
        }
        .view_more{
            margin: 10px 0 8px;
            font-size: 10px;
            font-style: italic;
            color: #626366;
        }
        .more{
            display: block;
            float: right;
            margin-right: 15px;
            color: #67c1f5;
            cursor: pointer;
        }
        .review_box .content.open{
            margin-right: 8px;
            font-weight: normal;
            font-size: 13px;
            line-height: 17px;
            color: #acb2b8;
            overflow-wrap: break-word;
        }
        .more.open{
            display: none;
        }
        .solid{
            background-color: #000;
            height: 1px;
        }
        .review_box .controll_block{
            margin: 8px 0;
            display: inline-block;
        }
        .review_box .controll_block .text{
            display: inline-block;
            margin-right: 9px;
            color: #8091a2;
            font-size: 12px;
            opacity: 0.6;
        }
        .review_box .button a{
            cursor: pointer;
            color: #fff;
        }
        .review_box .button a:hover{
            color: #2f89bc;
        }
        .review_box .button a.clicked{
            cursor: pointer;
            color: #2f89bc;
        }
        .rightcol .review_box.short{
            opacity: 0.9;
            width: 308px;
        }
        .review_box.short{
            background: linear-gradient(to right, rgba(34,50,70,1) -1%,rgba(34,50,70,1) 0%,rgba(34,50,70,0) 92%,rgba(34,50,70,0) 100%);
        }
        .evaluation.short{
            height: 24px;
            color: #819db8;
            background-color: rgba( 0, 0, 0, 0.3 );
            margin-bottom: 6px;
            display: block;
            line-height: 15px;
        }
        .recent_reviews{
            font-weight: normal;
            font-size: 14px;
            color: #ffffff;
            text-transform: uppercase;
            padding-bottom: 5px;
            letter-spacing: 2px;
        }
        .view_summary{
            padding-top: 8px;
            font-size: 12px;
            text-align: center;
        }
    </style>
		<style>
		/* sloth-games-custom */
		body {
	    background-color: #333333 !important;
	  }
		</style>
</head>
<jsp:include page="/header" />
<c:set var="user_id" value="${param.user_id}"/>
<body class="detail_body">
<c:choose>
	<c:when test="${gPage.game_id == null}">
		<div> 페이지 오류</div><c:out value="${gPage.game_id }"/>
	</c:when>
<c:otherwise>
<div class="container-fluid">
<!--breadcrumbs-->
<div class="col" id="breadcrumbs">
    <a href="#">모든 게임</a> <span>></span>
    <a href="#"><c:out value="${gPage.category}"/> 게임</a> <span>></span>
	<c:choose>
		<c:when test="${gPage.franchise eq 'none'}">
		<!-- 아무 내용을 출력하지 않음 -->
		</c:when>
		<c:otherwise>
		<a href="#"><c:out value="${gPage.franchise}" /> 프랜차이즈</a> <span>></span>
		</c:otherwise>
	</c:choose>
	<a href="#"><c:out value="${gPage.title}" /></a>
</div>
<!--breadcrumbs end-->
<!--contentHeader-->
<div class="row" id="contentHeader">
    <div class="col" id="gamename">
    	<c:out value="${gPage.title}" />
    </div>
    <div class="col">
	    <div id="btn">
	    <c:choose>
	    	<c:when test="${empty param.user_id}">
		         <a href="#" class="dibs"  id="hoverfade" style="margin-right: 5px;">
		             <span>로그인</span>
		         </a>			        
			</c:when>
			<c:when test="${not empty param.user_id}">
				<c:choose>
				<c:when test="${library.user_id != null}"></c:when>
				<c:when test="${mywhisCheck.user_id == null}">	
					<a onclick="addToWishlist('${gPage.game_id}', '${user_id}', '${URLEncoder.encode(gPage.category, 'UTF-8')}')"
					   id="hoverfade" class="dibs" style="margin-right: 5px;">
					   <span>찜하기</span>
					</a>
				    <a href="/game/wishList?user_id=${user_id}"  id="hoverfade">
			            <span>찜 목록</span>
			        </a>
		        </c:when>
		        <c:otherwise>
		        	<a onclick="removeFromWishlist('${gPage.game_id}', '${user_id}', '${URLEncoder.encode(gPage.category, 'UTF-8')}')"
					   id="hoverfade" class="dibs" style="margin-right: 5px;">
					   <span>찜 목록에 있음</span>
					</a>

		         	<a href="/game/wishList?user_id=${user_id}"  id="hoverfade">
			            <span>찜 목록</span>
			        </a>		        
		        </c:otherwise>
		        </c:choose> 
	        </c:when>
	    </c:choose>    
	        <a href="#"  id="hoverfade">
	            <span>커뮤니티 허브</span>
	        </a>
	    </div> 
    </div>
</div>
<script type="text/javascript">
function addToWishlist(game_id, user_id, category) {
	
	  var xhr = new XMLHttpRequest();
	  var url = '/game/wishProcessing?game_id=' + ${gPage.game_id} + ' +&user_id=' + '${user_id}' + '&category=' + '${gPage.category}' + '&caseNo=0';
	  xhr.open('GET', url, true);
	  xhr.onreadystatechange = function() {
	    if (xhr.readyState === XMLHttpRequest.DONE && xhr.status === 200) {
	      // 요청 완료 시 버튼 상태 변경
	      document.getElementById('hoverfade').innerHTML = '<span>찜 목록에 있음</span>';
	      // 버튼 클릭 이벤트 변경
	      document.getElementById('hoverfade').setAttribute('onclick', `removeFromWishlist('${gPage.game_id}', '${user_id}', '${URLEncoder.encode(gPage.category, 'UTF-8')}')`);
	    } else if (xhr.readyState === XMLHttpRequest.DONE && xhr.status !== 200) {
	      // 요청 실패 시
	      console.error('요청 실패:', xhr.status);
	    }
	  };
	  xhr.send();
	}

	function removeFromWishlist(game_id, user_id, category) {
	  var xhr = new XMLHttpRequest();
	  var url = '/game/wishProcessing?game_id=' + ${gPage.game_id} + ' +&user_id=' + '${user_id}' + '&category=' + '${gPage.category}' + '&caseNo=1';
	  xhr.open('GET', url, true);
	  xhr.onreadystatechange = function() {
	    if (xhr.readyState === XMLHttpRequest.DONE && xhr.status === 200) {
	      // 요청 완료 시 버튼 상태 변경
	      document.getElementById('hoverfade').innerHTML = '<span>찜하기</span>';
	      // 버튼 클릭 이벤트 변경
	      document.getElementById('hoverfade').setAttribute('onclick', `addToWishlist('${gPage.game_id}', '${user_id}', '${URLEncoder.encode(gPage.category, 'UTF-8')}')`);
	    } else if (xhr.readyState === XMLHttpRequest.DONE && xhr.status !== 200) {
	      // 요청 실패 시
	      console.error('요청 실패:', xhr.status);
	    }
	  };
	  xhr.send();
	}
</script>
<!--contentHeader end-->
<!--pageMain-->
<div id="pageMain">
<!--page_contents-->
<div class="row" id="page_contents">
    <div class="col order-1" style="width: 324px; margin-left: 0px;">
		<div id="inf">
		    <div id="headerimg">
		        <img src="${gPage.thumbnail1}" loading="lazy">
			</div>
			<div id="intro_txt">
		    	<c:out value="${gPage.introduction}"/>
			</div>
			<div id="responsive">
			    <div id="user_reviews">
			        <div class="row" id="user_reviews_row">
			            <div class="col-4" id="titlecol">모든 평가</div>
			            <div class="col" id="summarycol">
					        <c:choose>
								<c:when test="${gPage.total_likes < 10}">
								<span>평가 정보 부족</span>
								</c:when>
								<c:otherwise>
									<c:set var="likes1Ratio" value="${(gPage.likes_1 / gPage.total_likes) * 100}" />
									<c:set var="likes0Ratio" value="${(gPage.likes_0 / gPage.total_likes) * 100}" />
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
							(<c:out value="${gPage.total_likes}"/>)
						</div>
				    </div>
				</div>
			<div class="row" id="release_date">
			    <div class="col-4" id="releasecol">출시일:</div>
			    <div class="col" id="datecol"><c:out value="${gPage.release_date}"/></div>
			</div>
			<div class="row" id="dev_row">
			    <div class="col-4">개발자:</div>
			    <div class="col" id="sumcol"><a href="#"><c:out value="${gPage.developer}"/></a></div>
			</div>
			<div class="row" id="dev_row">
				<div class="col-4">배급사:</div>
				<div class="col" id="sumcol"><a href="#"><c:out value="${gPage.publisher}"/></a></div>
		 	</div>
			</div>
		</div>
	</div>
	<div class="col">
		<video style="width: 592px; height: 337px;" controls>
			<source src="${gPage.video}">
		</video>
	</div>
</div>
<!--page_contents end-->

<c:choose>
	<c:when test="${library.user_id == null}">
	</c:when>
	<c:otherwise>
		<!--already_owned--><!--if(게임이 라이브러리에 있다면)-->
		<div class="already_owned">
		    <div class="already_owned_box">
		        <div class="already_owned_flag">라이브러리에 있음</div>
		        <div class="already_library">게임 이름 제품은 이미 라이브러리에 있습니다.</div>
		    </div>
		</div>
		<div class="comments">
			<c:choose>
				<c:when test="${mcomment.content == null}">
					<!--if(평가작성한 기록이 없다면)-->
					<div class="comment_create">
					    <h1>게임 이름 제품에 대한 평가 작성</h1>
					    <p>이 게임의 좋았던 점 또는 싫었던 점, 그리고 이를 다른 사람들에게 추천하는지 여부에 대해 써주세요.</p>
					    <div class="row">
					        <div class="col"> <img class="user_img" src="/game/${mcomment.profile_image}.png" loading="lazy"></div>
					        <div class="col">
					            <form id="form" method="post" action="/game/commentProcessing?category=${URLEncoder.encode(gPage.category, 'UTF-8')}">
					                <input type="hidden" value="${user_id}" name="user_id">
					                <input type="hidden" value="${gPage.game_id}" name="game_id">
					                <textarea class="input_box" name="content"></textarea>
					                <div class="ctr">
					                  <div class="ctr_left">
					                    <div class="ctr_left_vote">
					                      <a class="estimation" onclick="setValue(1, this)"> <i class="bi bi-emoji-smile"></i> 예</a>
											<a class="estimation" onclick="setValue(0, this)"> <i class="bi bi-emoji-neutral"></i> 아니오</a>
								        </div>
								        <input type="hidden" id="selectedValue" name="likes" value="">
								      </div>
								      <button type="button" class="ctr_right" style="display: none; width: 100px; height: 50px;" onclick="InsertFrm()">게시</button>
								    </div>
								</form>  
							<script>
							var selectedValue = ''; // 초기값 설정
							
							function setValue(value, element) {
							    selectedValue = value;
							    console.log("Selected Value: " + value);
							    // 모든 'estimation' 클래스 요소에서 'btn_active' 클래스 제거
							    var estimationElements = document.getElementsByClassName('estimation');
							    for (var i = 0; i < estimationElements.length; i++) {
							    estimationElements[i].classList.remove('btn_active');
							    }
							
							    // 선택한 요소에 'btn_active' 클래스 추가
							    element.classList.add('btn_active');
							
							    // 폼 제출 전에 선택한 값을 hidden input에 설정
							    document.getElementById('selectedValue').value = selectedValue;
					            var submitButton = document.getElementsByClassName('ctr_right')[0];
					            submitButton.style.display = 'block';							    
							}
							function InsertFrm() {
								$("#form").submit();
							}
							</script>
					        </div>
					    </div>
					</div>
				</c:when>
				<c:otherwise>
					<!--if(평가작성한 기록이 있다면)-->
					<div class="comment_rcd">
					    <div class="cmtdata">이 게임에 대해 <c:out value="${mcomment.posted_date}"/> 에 평가를 남겼습니다</div>
					    <div class="cmtbox">
					        <div class="box_header">
					            <a class="estimation" href="#"><span>내가 작성한 평가 보기</span></a>
					        </div>
					    </div>
					</div>				
				</c:otherwise>
			</c:choose>
		</div>
		<!--already_owned end-->
	</c:otherwise>
</c:choose>

<!--page_contents2-->
<div class="row" id="page_contents2">
<div class="col-4 order-1" style="width: 324px; margin-left: 0px;" >
<div id="interest">이 게임에 관심이 있나요?</div>
<c:choose>
	<c:when test="${empty param.user_id}">
		<!--로그인을 안했으면-->
		<div class="box notlogincol">
		    <p>Steam에 로그인하여 보유한 게임, 친구 그리고 팔로우하는 큐레이터를 고려해 저희가 선정한 게임들을 확인해 보세요.</p>
		    <a href="#" id="loginbtn">로그인</a>
		</div>
	</c:when>
	<c:otherwise>
		<c:choose>
			<c:when test="${myCategory[0].game_id == null}">
			<!--로그인을 했고 라이브러리에 분류가 같은 게임이 없으면-->
			<div class="box notlogincol">
			    <p>이 게임은 지금까지 플레이하셨던 게임들과는 다른 것 같습니다. 따라서 이 게임을 좋아하실지 아닐지 판단할 수 있는 충분한 정보가 없습니다.</p>
			</div>
			</c:when>
			<c:otherwise>
			<!--로그인을 했고 라이브러리에 분류가 같은 게임이 있으면-->
			<div class="box recommend">
			    <p class="reason">내가 플레이했던 게임과 비슷한 게임:</p>
			    <div class="similar_app">
			    <c:forEach items="${myCategory}" var="myCategory" varStatus="status" begin="0" end="1">
			        <a href="/game/gamePage?game_id=${myCategory.game_id}&user_id=${user_id}&category=${myCategory.category}"><img src="${myCategory.thumbnail1}" loading="lazy"></a>
			    </c:forEach>    
			    </div>			    
			</div>
			</c:otherwise>
		</c:choose>	
	</c:otherwise>	
</c:choose>
<!--  
<div id="playtype">
    <div id="playspec">
        <div class="row">
            <div class="col-2"> <i class="bi bi-person"></i></div>
            <div class="col-10">싱글 플레이어</div>
        </div>
    </div>
</div> 

<div id="lang">
    <div id="langtitle">언어:</div>
    <div id="langtable" style="display: block;">
		<table id="langoptions">
    		<tbody>
	        	<tr>
		            <th style="width: 94px;"></th>
		    		<th class="checkcol">인터페이스</th>
		    		<th class="checkcol">음성 지원</th>
		    		<th class="checkcol">자막</th>
				</tr>
				<tr>
					<td style="width: 94px; text-align: left;" class="ellipsis">언어</td>
	                <td class="checkcol">✔</td>
	                <td class="checkcol">✔</td>
	                <td class="checkcol">✔</td>
	            </tr>
            </tbody>
        </table>
    </div>
</div>

-->
<div id="underDetails">
    <div class="detail_block">
        <b>제목:</b> <c:out value="${gPage.title}"/>
        <br>
        <div>
            <b>장르:</b>
            <!--for문-->
        <a href="#"><c:out value="${gPage.category}"/></a>
    </div>
    <div>
        <b>개발자:</b>
        <a href="#"><c:out value="${gPage.developer}"/></a>
    </div>
    <div>
        <b>배급사:</b>
        <a href="#"><c:out value="${gPage.publisher}"/></a>                                
    </div>
	<c:choose>
		<c:when test="${gPage.franchise != 'none' }">
	    <div>
	        <b>프랜차이즈:</b>
	        <a href="#"><c:out value="${gPage.franchise}"/></a>                                
	    </div>
	    </c:when>
	</c:choose>    
    	<b>출시일:</b> <c:out value="${gPage.release_date}"/>
	</div>
		<!--<div class="detail_block" style="padding-top: 14px;">
            <a class="linkbar" href="#">웹사이트 방문</a>
        </div>  -->
    </div>
</div>
<div class="col" id="description_col">
<c:choose>
	<c:when test="${gPage.franchise != 'none'  }">
		<a class="franchise_notice" href="#"><!--if(프랜차이즈 있으면)-->
			<div class="background_img" style="background-image: url(${gPage.thumbnail1});" loading="lazy"></div>
		    <div class="franchise_name">프랜차이즈를 모두 확인하세요</div>
		</a>
    </c:when>
</c:choose> 
<div class="game_purchase">
    <div class="game_purchase_game">
        <div class="game_purchase_platform"> <i class="bi bi-microsoft"></i></div>
        <h1><c:out value="${gPage.title}"/> 구매</h1>
        <div class="game_purchase_btn">
            <div class="game_purchase_btn_bg">
				<c:choose>
					<c:when test="${gPage.discount_rate == 0 }">
						<div class="game_purchase_price_ori"><c:out value="${gPage.formattedOriginalPrice}"/></div>	
				    </c:when>
					<c:otherwise>
						<div class="game_purchase_price">
				    <div class="discount_percent"><c:out value="${gPage.discount_rate}"/>%</div>
				    <div class="discount_price">
				        <div class="original_price"><c:out value="${gPage.formattedOriginalPrice}"/></div>
				        <div class="final_price"><c:out value="${gPage.formattedDiscountedPrice}"/>원</div>
				    </div>
					</div>
					</c:otherwise>
				</c:choose>            
				<div class="addcart">
				<c:choose>
					<c:when test="${not empty param.user_id}">
						<c:choose>
							<c:when test="${library.user_id != null}">
								<a style="color: #fff">라이브러리에 있음</a>
							</c:when>
							<c:when test="${empty cartCheck.user_id}">
								<a onclick="cartInsert('${user_id}', '${gPage.game_id}')" style="color: #fff">장바구니에 추가</a>
								<script type="text/javascript">
								function cartInsert(user_id, game_id) {
								    
									var user_id = '${user_id}';
									
							  		var cart= {
							  		  game_id : game_id,
							  		  user_id : user_id
							  		};

							  		$.ajax({
							  		  url: '/game/cartProcessing', 
							  		  method: 'POST', 
							  		  data: JSON.stringify(cart), 
							  		  contentType: 'application/json; charset=UTF-8',
							  		  success: function() {
							  			window.location.href = '/game/cart?user_id=' + user_id;
									},
							  		  error: function(xhr, status, error) {
							  		   	
							  		    console.error('Error:', error);
							  		  }
							  		});
								}
								</script>
							</c:when>
							<c:otherwise>
								<a href="/game/cart?user_id=${user_id}" style="color: #fff">장바구니에 있음</a>
							</c:otherwise>
						</c:choose>
					</c:when>
					<c:otherwise>
						<a href="#" style="color: #fff">장바구니에 추가</a>
					</c:otherwise>
				</c:choose>					
		        </div>
            </div>
        </div>
    </div>
</div>
<div class="game_explain">
    <div class="game_explain_area">
        <div class="game_description">
            <h2>게임에 대해</h2>
			${gPage.description}
        </div>
    </div>
    <div class="game_description_fade">
        <div class="description_read_more" onclick="toggleDescription()">펼치기</div>
	</div>
	<script>
	function toggleDescription() {
	    var gameDescriptionFade = document.querySelector('.game_description_fade');
	    var gameExplainArea = document.querySelector('.game_explain_area');
	
	    if (gameDescriptionFade.style.display === 'none') {
	        gameDescriptionFade.style.display = 'block';
	        gameExplainArea.style.maxHeight = '850px';
	    } else {
	        gameDescriptionFade.style.display = 'none';
	        gameExplainArea.style.maxHeight = 'none';
	    }
	}
	</script>
</div>
<div class="game_system_req">
    <div class="system_req_opt" style="max-width: none;">
        <h2>시스템 요구 사항</h2>
        <div class="req_cnts">
            <div class="row req_cnt">
                <div class="col req_left">
                    <ul>
                        <strong>최소:</strong>
                        <br>
                        <ul class="req_ul">
                            <li><strong>운영체제:</strong><c:out value="${sysreq.min_os}"/><br></li>
                            <li><strong>프로세서:</strong><c:out value="${sysreq.min_processor}"/><br></li>
                            <li><strong>메모리:</strong><c:out value="${sysreq.min_memory}"/><br></li>
                            <li><strong>그래픽:</strong><c:out value="${sysreq.min_graphic}"/><br></li>
                            <li><strong>DirectX:</strong><c:out value="${sysreq.min_direct_x}"/><br></li>
                            <li><strong>저장공간:</strong><c:out value="${sysreq.min_storage}"/></li>
                        </ul>
                    </ul>
                </div>
                <div class="col req_right">
                    <ul>
                        <strong>권장:</strong>
                        <br>
                        <ul class="req_ul">
                            <li><strong>운영체제:</strong><c:out value="${sysreq.os}"/><br></li>
                            <li><strong>프로세서:</strong><c:out value="${sysreq.processor}"/><br></li>
                            <li><strong>메모리:</strong><c:out value="${sysreq.memory}"/><br></li>
                            <li><strong>그래픽:</strong><c:out value="${sysreq.graphic}"/><br></li>
                            <li><strong>DirectX:</strong><c:out value="${sysreq.direct_x}"/><br></li>
                            <li><strong>저장공간:</strong><c:out value="${sysreq.storage}"/></li>
                            <li><strong>추가사항:</strong><c:out value="${sysreq.additional_notes}"/></li>
                        </ul>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="box" id="franchise_app">
    <div class="box_head">
        <div class="right">
            <a href="#">모두 보기</a>
        </div>
        <h2>유사한 제품</h2> 
    </div>
    <div class="game_app">
        <div class="row game_rcmd">
        <c:forEach items="${sameCategory}" var="sameCategory" varStatus="status" begin="0" end="2">
            <a class="game_block col" href="/game/gamePage?game_id=${sameCategory.game_id}&user_id=${user_id}&category=${sameCategory.category}">
                <img src="${sameCategory.thumbnail1}" loading="lazy" class="game_block_img" alt="사진">
                <h4><c:out value="${sameCategory.title}"/></h4>
                <c:choose>
                	<c:when test="${sameCategory.discount_rate == 0}">
	                <div class="price_block no_dis price_inline">
	                    <div class="game_price">
	                        <div class="final_price"><c:out value="${sameCategory.formattedOriginalPrice}"/></div>
	                    </div>
	                </div>
	                </c:when>
	                <c:otherwise>
					<div class="price_block price_inline">
					    <div class="discount_pct"><c:out value="${sameCategory.discount_rate}"/>%</div>
					    <div class="game_price">
					        <div class="ori_price"><c:out value="${sameCategory.formattedOriginalPrice}"/></div>
					        <div class="final_price"><c:out value="${sameCategory.formattedDiscountedPrice}"/></div>
					    </div>
					</div>
					</c:otherwise>
				</c:choose>
            </a>
        </c:forEach>    
        </div>
    </div>
</div>
</div>
</div>
<!--page_contents2 end-->
<div class="review_ctn">
<div id="page_contents2">
<div class="review_app">
<h2 class="review_header no_margin">고객 평가</h2>
<div class="review_statistics">
    <div class="review_statistics_area">
        <div class="review_summary">
            <div class="review_summary_area">
                <div class="title">종합 평가:</div>
	           	<c:choose>
					<c:when test="${gPage.total_likes < 10}">
					<span class="game_statistics">평가 정보 부족</span>
					</c:when>
					<c:otherwise>
						<c:set var="likes1Ratio" value="${(gPage.likes_1 / gPage.total_likes) * 100}" />
						<c:set var="likes0Ratio" value="${(gPage.likes_0 / gPage.total_likes) * 100}" />
						<c:choose>
						    <c:when test="${likes1Ratio >= 80}">
						        <span class="game_statistics" style="color: #66C0F4;">매우 긍정적</span>
						    </c:when>
						    <c:when test="${likes0Ratio >= 80}">
						        <span class="game_statistics" style="color: #CC3D3D;">매우 부정적</span>
						    </c:when>
						    <c:when test="${likes1Ratio >= 60 && likes1Ratio < 80}">
						        <span class="game_statistics" style="color: #66C0F4;">긍정적</span>
						    </c:when>
						    <c:when test="${likes0Ratio >= 60 && likes0Ratio < 80}">
						        <span class="game_statistics" style="color: #CC3D3D;">부정적</span>
						    </c:when>									    
						    <c:otherwise>
						        <span class="game_statistics" style="color: #A34C25;">복합적</span>
						    </c:otherwise>
						</c:choose>
					</c:otherwise>
				</c:choose>
                <span>(<c:out value="${gPage.total_likes}"/>)</span>
            </div>
        </div>
    </div>
</div>
<div class="user_reviews">
<div>
	<div class="leftcol">
	    <div class="best_reviews">가장 유용한 평가</div>
	    <c:forEach items="${bcomment}" var="comment" varStatus="status" begin="0" end="4">
		<div class="review_box" id="${comment.user_id}">
			<div class="user_review">
			    <div class="leftcol">
			        <div class="user_box">
			            <img class="user_img" src="/game/${comment.profile_image}.png" loading="lazy">
						<div class="user_name"><c:out value="${comment.name}"/></div>
			    	</div>
				</div>
				<div class="rightcol">
				<c:choose>
					<c:when test="${comment.likes == 1}">
				    <a href="/game/comment?comment_id=${comment.comment_id}&game_id=${gPage.game_id}&user_id=${param.user_id}" class="evaluation">
				        <div class="icon_img"> <i class="bi bi-emoji-smile fs-3" style="color: #2f89bc;"></i></div>
				    	<div class="title">추천</div>
					</a>
					</c:when>
					<c:otherwise>
				    <a href="/game/comment?comment_id=${comment.comment_id}&game_id=${gPage.game_id}&user_id=${param.user_id}" class="evaluation">
				        <div class="icon_img"> <i class="bi bi-emoji-neutral fs-3" style="color: #CC3D3D;"></i></div>
				    	<div class="title">비추천</div>
					</a>					
					</c:otherwise>
				</c:choose>	
					<div class="post_date">게시일: <c:out value="${comment.posted_date}"/></div>
					<div class="content close"><c:out value="${comment.content}"/></div>
					<div class="view_more">
					    <div class="more" onclick="showmore('${comment.user_id}')">더 보기</div>
					</div>
					<div class="controll_block">
					    <span class="text">이 평가가 유용한가요?</span>
					    <div class="button">
						<c:choose>
							<c:when test="${not empty param.user_id}">					    
							<c:choose>
								<c:when test="${comment.types == 1}">
						    	<a class="clicked">추천</a>
								<a class="" onclick="submitFeedback('${comment.user_id}', '0', '${comment.comment_id}', '${param.user_id}')">비추천</a>									
								</c:when>
								<c:when test="${comment.types == 2}">
						    	<a class="" onclick="submitFeedback('${comment.user_id}', '1', '${comment.comment_id}', '${param.user_id}')">추천</a>
								<a class="" onclick="submitFeedback('${comment.user_id}', '0', '${comment.comment_id}', '${param.user_id}')">비추천</a>							
								</c:when>
								<c:otherwise>
						    	<a class="" onclick="submitFeedback('${comment.user_id}', '1', '${comment.comment_id}', '${param.user_id}')">추천</a>
								<a class="clicked">비추천</a>								
								</c:otherwise>
							</c:choose>								
							</c:when>
							<c:otherwise>
					    	<a class="">추천</a>
							<a class="">비추천</a>							
							</c:otherwise>
						</c:choose>
					    </div>
					</div>
				</div>
			</div>
		</div>
		</c:forEach>                                                                                     
	</div>
	<div class="rightcol">
	    <div class="recent_reviews">최근 평가</div>
	    <c:forEach items="${rcomment}" var="rcomment" varStatus="status" begin="0" end="4">
		<div class="review_box short" id="recnet${rcomment.user_id}">   
			<div class="user_review">
		    	<div class="shortcol">
				<c:choose>
					<c:when test="${rcomment.likes == 1}">
		        	<a href="/game/comment?comment_id=${rcomment.comment_id}&game_id=${gPage.game_id}&user_id=${param.user_id}" class="evaluation.short">
		            	<div class="icon_img"> <i class="bi bi-emoji-smile fs-4" style="color: #2f89bc;"></i></div>
		    			<div class="user_name"><c:out value="${rcomment.name}"/></div>
		    			<div class="post_date">게시일: <c:out value="${rcomment.posted_date}"/></div>
					</a>
					</c:when>
					<c:otherwise>
		        	<a href="/game/comment?comment_id=${rcomment.comment_id}&game_id=${gPage.game_id}&user_id=${param.user_id}" class="evaluation.short">
		            	<div class="icon_img"> <i class="bi bi-emoji-neutral fs-4" style="color: #CC3D3D;"></i></div>
		    			<div class="user_name"><c:out value="${rcomment.name}"/></div>
		    			<div class="post_date">게시일: <c:out value="${rcomment.posted_date}"/></div>
					</a>					
					</c:otherwise>
				</c:choose>					
					<div class="content close"><c:out value="${rcomment.content}"/></div>
					<div class="view_more">
					    <div class="more" onclick="recnetshowmore('${rcomment.user_id}')">더 보기</div>
					</div>
					<div class="controll_block">
		    			<span class="text">이 평가가 유용한가요?</span>
		    			<div class="button">
		    			<c:choose>
							<c:when test="${not empty param.user_id}">					    
							<c:choose>
								<c:when test="${rcomment.types == 1}">
						    	<a class="clicked">추천</a>
								<a class="" onclick="recnetsubmit('${rcomment.user_id}', '0', '${rcomment.comment_id}', '${param.user_id}')">비추천</a>									
								</c:when>
								<c:when test="${rcomment.types == 2}">
			        			<a class="" onclick="recnetsubmit('${rcomment.user_id}', '1', '${rcomment.comment_id}', '${param.user_id}')">추천</a>
								<a class="" onclick="recnetsubmit('${rcomment.user_id}', '0', '${rcomment.comment_id}', '${param.user_id}')">비추천</a>								
								</c:when>
								<c:otherwise>
						    	<a class="" onclick="recnetsubmit('${rcomment.user_id}', '1', '${rcomment.comment_id}', '${param.user_id}')">추천</a>
								<a class="clicked">비추천</a>								
								</c:otherwise>
							</c:choose>								
							</c:when>
							<c:otherwise>
		        			<a class="">추천</a>
							<a class="">비추천</a>							
							</c:otherwise>
						</c:choose>
		                </div>
		            </div>
		        </div>
		    </div>
		</div>
		</c:forEach>
	</div>
	<script>
	function showmore(userId) {
	    var contentDiv = document.querySelector('#'	 + userId + ' .content');
	    var viewMoreDiv = document.querySelector('#' + userId + ' .view_more');
	
	    contentDiv.classList.remove('close');
	    contentDiv.classList.add('open');
	    viewMoreDiv.style.display = 'none';
	}
	
	function submitFeedback(userId, likes, comment_id, user_id) {
	    var reviewBox = event.target.closest('.review_box');
	    var clickedButton = reviewBox.querySelector('.button .clicked');
	    var game_id = '${gPage.game_id}';

	    if (clickedButton) {
	        clickedButton.classList.remove('clicked');
	    }

	    event.target.classList.add('clicked');
	
	    console.log('Feedback submitted:');
	    console.log('User ID:', user_id);
	    console.log('Feedback:', likes);
	    
	    var comment= {
	    		  content : '',
	    		  comment_id : comment_id,
	    		  game_id : game_id,
	    		  user_id : user_id,
	    		  likes : likes
	    		};

	    		$.ajax({
	    		  url: '/game/nestedReplyProcessing', 
	    		  method: 'POST', 
	    		  data: JSON.stringify(comment), 
	    		  contentType: 'application/json; charset=UTF-8', 
	    		  error: function(xhr, status, error) {
	    		   	
	    		    console.error('Error:', error);
	    		  }
	    		});
	}
	</script>
	<script>
	   function recnetshowmore(userId) {
	    var contentDiv = document.querySelector('#recnet' + userId + ' .content');
	    var viewMoreDiv = document.querySelector('#recnet' + userId + ' .view_more');
	
	    contentDiv.classList.remove('close');
	    contentDiv.classList.add('open');
	    viewMoreDiv.style.display = 'none';
	}
	
	function recnetsubmit(userId, likes, comment_id, user_id) {
	    var reviewBox = event.target.closest('.review_box');
	    var clickedButton = reviewBox.querySelector('.button .clicked');
	    var game_id = '${gPage.game_id}';

	    if (clickedButton) {
	        clickedButton.classList.remove('clicked');
	    }
	
	    event.target.classList.add('clicked');                
	
	    console.log('Feedback submitted:');
	    console.log('User ID:', user_id);
	    console.log('Feedback:', likes);
	    
	    var comment= {
	    		  content : '',
	    		  comment_id : comment_id,
	    		  game_id : game_id,
	    		  user_id : user_id,
	    		  likes : likes
	    		};

	    		$.ajax({
	    		  url: '/game/nestedReplyProcessing', 
	    		  method: 'POST', 
	    		  data: JSON.stringify(comment), 
	    		  contentType: 'application/json; charset=UTF-8', 
	    		  error: function(xhr, status, error) {
	    		   	
	    		    console.error('Error:', error);
	    		  }
	    		});
	}
	</script>
<div class="view_summary leftcol">
<a href="#" style="color: #fff;">모든 평가 보기</a>
        </div>
</div>
</div>
</div>
</div>
</div>
</div>
<!--pageMain end-->
</div>
</c:otherwise>
</c:choose>
</body>
</html>