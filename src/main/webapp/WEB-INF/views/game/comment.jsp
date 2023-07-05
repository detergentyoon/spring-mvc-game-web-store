<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.URLEncoder" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <title>Document</title>
<style>
body {
    background: #1b2838;
    text-align: left;
    color: #8F98A0;
    font-size: 14px;
    margin: 0;
    padding: 0;
}
body, textarea {
    font-family: Arial, Helvetica, Verdana, sans-serif;
}
body, body.shared_common_v6_3r3Le {
    color: #969696;
    font-family: "Motiva Sans",Arial,Helvetica,sans-serif;
}
body, body.shared_common_v6_3r3Le {
    color: #969696;
    font-family: "Motiva Sans",Arial,Helvetica,sans-serif;
}
body.flat_page {
    position: relative;
    min-height: 100%;
}
html.responsive body {
    min-height: 100%;
    height: auto;
    position: relative;
}
.responsive_page_frame {
    position: relative;
}
body.flat_page .responsive_page_frame {
    position: static;
}
.pagecontent {
    padding-bottom: 128px;
}
.pagecontent.in_client, .pagecontent.no_header {
    background-position: center top;
}
body .pagecontent.profile_subpage_column {
    padding-bottom: 0;
}
.profile_small_header_bg {
    max-width: 1010px;
    height: 215px;
    margin: 0 auto -98px auto;
    background-position: center;
}
.profile_subpage_column .profile_small_header_bg {
    background-image: url(https://community.akamai.steamstatic.com/public/images/profile/profile_header_small_bg_column.png?v=1);
    height: 111px;
    margin-bottom: 0;
}
.profile_small_header_texture {
    background: rgba(58, 62, 71, 0.5);
    max-width: 978px;
    height: 102px;
    margin: 0 auto;
    position: relative;
}
a, .whiteLink {
    color: #ebebeb;
    text-decoration: none;
    cursor: pointer;
}
.profile_small_header_avatar {
    position: absolute;
    left: 30px;
    top: 18px;
    color: white;
}
.playerAvatar, .friend_block_holder .friend_block_avatar, .friend_activity .friend_block_avatar {
    width: 34px;
    height: 34px;
    position: relative;
    border-radius: 0;
    padding: 1px;
}
.playerAvatar.online, .friend_block_holder.friend_status_online .friend_block_avatar, .friend_activity.friend_status_online .friend_block_avatar, .appHubIconHolder.online, .avatar_block_status_online {
    background-color: #57cbde;
    background: -webkit-linear-gradient( top, rgba(83,164,196,1) 5%, rgba(69,128,151,1) 95%);
    background: linear-gradient( to bottom, rgba(83,164,196,1) 5%, rgba(69,128,151,1) 95%);
    filter: none;
}
.playerAvatar.medium {
    width: 66px;
    height: 66px;
}
img {
    -webkit-user-drag: none;
}
.playerAvatar img, .friend_block_holder .friend_block_avatar img, .friend_activity .friend_block_avatar img {
    width: 32px;
    height: 32px;
    padding: 1px;
    border-radius: 0;
    border: none;
}
.playerAvatar.online img, .friend_status_online .friend_block_avatar img, .appHubIconHolder.online img, .avatar_block_status_online img {
    background: -webkit-linear-gradient( top, #41778f 5%, #3d697b 95%);
    background: linear-gradient( to bottom, #41778f 5%, #3d697b 95%);
}
.playerAvatar.medium img {
    width: 64px;
    height: 64px;
}
.profile_small_header_text {
    position: absolute;
    left: 120px;
    right: 30px;
    bottom: 31px;
    max-height: 65px;
    color: white;
    font-size: 14px;
    overflow: hidden;
    text-overflow: ellipsis;
}
.profile_small_header_name {
    font-size: 26px;
}
.profile_small_header_arrow {
    font-size: 16px;
    color: #828282;
}
#BG_bottom {
    background: rgba( 0, 0, 0, 0.2 );
    width: 950px;
    margin: 0 auto 0 auto;
    text-align: left;
}
body.migrated_profile_page #BG_bottom.maincontent {
    margin: 0 auto;
    width: 948px;
    background: none;
}
.profile_subpage_column .maincontent, body.migrated_profile_page .profile_subpage_column #BG_bottom.maincontent {
    background-image: url(https://community.akamai.steamstatic.com/public/images/profile/profile_subpage_column_bottom.png?v=1), url(https://community.akamai.steamstatic.com/public/images/profile/profile_subpage_column.png?v=1);
    background-repeat: no-repeat, repeat-y;
    background-position: bottom center, center;
    width: 926px;
    padding: 12px 12px 128px 12px;
}
.bluefade {
    background-image: url(https://community.akamai.steamstatic.com/public/shared/images//page_bg_blue.png);
    margin-top: -21px;
    padding-top: 20px;
    background-position: 0px -1px;
    background-repeat: no-repeat;
}
.review_page_content {
    max-width: 918px;
    padding: 0 16px;
    position: relative;
}
#rightContents {
    position: relative;
    float: right;
    width: 295px;
    margin: 0;
    padding: 0;
    padding-left: 10px;
    padding-top: 0px;
    z-index: 20;
}
#rightContents {
    width: 294px;
    padding-top: 0px;
    padding-right: 16px;
}
.review_page_content #rightContents {
    padding: 0;
}
.review_app_actions {
    margin-bottom: 16px;
    background-color: rgba(0, 0, 0, 0.4);
    padding-bottom: 6px;
}
.gameLogoHolder_default img {
    width: 292px;
    height: auto;
    padding: 1px;
}
.general_btn {
    display: inline-block;
    background-color: rgba( 0, 0, 0, 0.4 );
    padding: 5px 8px 5px 8px;
    margin-right: 5px;
    border-radius: 3px;
    -moz-border-radius: 3px;
    cursor: pointer;
    color: #939393;
}
.general_btn.panel_btn {
    background-color: transparent;
    color: #EBEBEB;
}
.general_btn.panel_btn {
    color: #EBEBEB;
}
#leftContents {
    float: left;
    width: 580px;
    margin: 0;
    padding: 0;
    padding-right: 0px;
}
.nonresponsive_hidden {
    display: none;
}
.responsive_review_gameinfo {
    margin-bottom: 16px;
}
.ratingBar {
    min-height: 15px;
    background-color: rgba(0, 0, 0, 0.4);
    font-size: 12px;
    color: #898A8C;
    padding: 4px 6px 4px 6px;
    border-top: 1px solid rgba(85, 125, 171, 0.6);
    margin-bottom: 8px;
    line-height: 20px;
    display: flex;
}
.ratingSummaryHeader {
        display: flex;
        align-items: center;
        width: 580px;
        background: rgba(0, 0, 0, 0.2);
    }

    .ratingSummaryHeader i {
        margin-right: 5px;
    }

    .ratingSummary {
        white-space: nowrap;
    }
.ratingSummaryBlock .bi.bi-emoji-neutral,
.ratingSummaryBlock .bi.bi-emoji-smile {
    margin-right: 10px;
    font-size: 40px;
    line-height: 40px;
}
.ratingSummary {
    font-size: 16px;
    color: #D6D7D8;
    padding-top: 4px;
    padding-bottom: 2px;
    font-family: "Motiva Sans", Sans-serif;
    font-weight: normal;
}
.recommendation_date {
    font-size: 11px;
    color: #a0a08b;
    margin-top: 17px;
}
.review_area_content {
    font-size: 13px;
    line-height: 17px;
    color: #acb2b8;
    font-family: "Motiva Sans", Sans-serif;
    font-weight: normal;
    overflow-wrap: break-word;
    overflow: hidden;
}
.review_rate_bar {
    border-top: 1px solid rgba(85, 125, 171, 0.6);
    margin-top: 16px;
    padding-top: 6px;
    color: #898A8C;
    font-size: 12px;
}
.btn_grey_grey {
    border-radius: 2px;
    border: none;
    padding: 1px;
    display: inline-block;
    cursor: pointer;
    text-decoration: none !important;
    color: #ebebeb !important;
    background: rgba( 0, 0, 0, 0.4);
}
#comments {
    border-top: 1px solid rgba(85, 125, 171, 0.6);
    margin-top: 60px;
}
.commentthread_area {
    margin: 0px;
    padding-right: 0px;
}
form {
    margin: 0;
    padding: 0;
}
.commentthread_entry {
    min-height: 44px;
    background-color: rgba( 0, 0, 0, 0.2 );
    position: relative;
    padding: 8px;
}
.commentthread_entry {
    background: none;
}
.commentthread_user_avatar {
    float: left;
    margin-right: 8px;
}
.commentthread_entry_quotebox {
    border: none;
    padding: 4px 6px 4px 6px;
    font-size: 12px;
    background-color: rgba( 0, 0, 0, 0.4 );
    border-radius: 4px;
    border-left: 1px solid #000;
    border-top: 1px solid #000;
    border-right: 1px solid #354357;
    border-bottom: 1px solid #354357;
    overflow: hidden;
}
textarea {
    width: 360px;
    background-color: #1d1d1d;
    border: solid 1px #777777;
    color: #e1e1e1;
    font-size: 13px;
}
.commentthread_textarea {
    resize: none;
    outline: none;
    background-color: transparent;
    border: none;
    width: 100%;
    overflow: hidden;
    color: #BFBFBF;
}
.commentthread_textarea {
    background: none;
}
.commentthread_comment_container {
    margin-top: 19px;
}
.commentthread_comment {
    position: relative;
    padding-bottom: 8px;
    padding-top: 8px;
    margin-bottom: 8px;
    min-height: 40px;
    padding-left: 6px;
    overflow: hidden;
}
.playerAvatar.offline, .friend_block_holder.friend_status_offline .friend_block_avatar, .friend_activity.friend_status_offline .friend_block_avatar, .appHubIconHolder.offline, .avatar_block_status_offline, .appHubIconHolder.ignored {
    background: -webkit-linear-gradient( top, rgba(106,106,106,1) 5%, rgba(85,85,85,1) 95%);
    background: linear-gradient( to bottom, rgba(106,106,106,1) 5%, rgba(85,85,85,1) 95%);
    filter: none;
}
.playerAvatar.offline img, .friend_status_offline .friend_block_avatar img, .appHubIconHolder.offline img, .avatar_block_status_offline img {
    background: -webkit-linear-gradient( top, #515151 5%, #474747 95%);
    background: linear-gradient( to bottom, #515151 5%, #474747 95%);
}
.commentthread_comment_author a {
    font-size: 14px;
}
.commentthread_comment_text {
    font-size: 13px;
    color: #acb2b8;
    word-wrap: break-word;
    overflow-y: auto;
    max-height: 400px;
    line-height: 18px;
}
.commentthread_comment_avatar,
  .commentthread_comment_content {
    display: inline-block;
    vertical-align: top;
  }
.clicked{
    color: #2f89bc !important;
}
.commentthread_entry_submitlink {
    text-align: right;
    padding-top: 5px;
}
.btn_green_white_innerfade {
    border-radius: 2px;
    border: none;
    padding: 1px;
    display: inline-block;
    cursor: pointer;
    text-decoration: none !important;
    color: #D2E885 !important;
    background: #a4d007;
    background: -webkit-linear-gradient( top, #a4d007 5%, #536904 95%);
    background: linear-gradient( to bottom, #a4d007 5%, #536904 95%);
}
.btn_green_white_innerfade > span {
    border-radius: 2px;
    display: block;
    background: #799905;
    background: -webkit-linear-gradient( top, #799905 5%, #536904 95%);
    background: linear-gradient( to bottom, #799905 5%, #536904 95%);
}
.btn_small > span, input.btn_small {
    padding: 0 15px;
    font-size: 12px;
    line-height: 20px;
}
</style>
</head>
<body class="flat_page migrated_profile_page responsive_page">
    <div class="responsive_page_frame with_header">
        <div class="responsive_page_content">
            <div class="responsive_page_template_content" id="responsive_page_template_content">
                <div class="pagecontent no_header profile_subpage_column">
                    <div class="profile_small_header_bg">
                        <div class="profile_small_header_texture">
                            <a>
                                <div class="profile_small_header_avatar">
                                    <div class="playerAvatar medium online">
                                        <img src="${commentSelect.profile_image}.png" alt="사진">
                                    </div>
                                </div>
                                <div class="profile_small_header_text">
                                    <span class="profile_small_header_name">
                                        <a class="whiteLink persona_name_text_content">
                                            <c:out value="${commentSelect.name}" />
                                        </a>
                                    </span>
                                    <span class="profile_small_header_arrow">></span>
                                    <a class="whiteLink">
                                        <span class="profile_small_header_location">평가</span>
                                    </a>
                                    <span class="profile_small_header_arrow">></span>
                                    <a class="whiteLink">
                                        <span class="profile_small_header_location">
                                            <c:out value="${gamePage.title}" />
                                        </span>
                                    </a>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="maincontent" id="BG_bottom">
                    <div class="bluefade">
                        <div class="review_page_content">
                            <div id="rightContents" class="responsive_local_menu">
                                <div class="review_app_actions responsive_hidden">
                                    <div class="gameLogoHolder_default">
                                        <a href="#" style="display: block;">
                                            <img src="${gamePage.thumbnail1}" alt="게임 사진">
                                        </a>
                                    </div>
                                    <a class="general_btn panel_btn"
                                        href="/game/gamePage?game_id=${gamePage.game_id}&user_id=${param.user_id}&category=${gamePage.category}">상세 페이지 보기</a>
                                </div>
                            </div>
                            <div id="leftContents">
                                <div class="nonresponsive_hidden responsive_review_gameinfo"></div>
                                <div class="ratingBar">
                                    <c:out value="${commentSelect.likes_1}" />명이 좋아요함
                                </div>
                                <div class="ratingSummaryBlock" id="ReviewTitle">
                                    <div class="ratingSummaryHeader">
                                    <c:choose>
                                    	<c:when test="${commentSelect.likes == 1}">
                                    	<i class="bi bi-emoji-smile fs-6" style="color: #2f89bc;"></i>
										<div class="ratingSummary">추천</div>
                                    	</c:when>
                                    	<c:otherwise>
                                    	<i class="bi bi-emoji-neutral fs-6" style="color: #CC3D3D;"></i>
										<div class="ratingSummary">비추천</div>
                                    	</c:otherwise>
                                    </c:choose>                           
                                    </div>
                                    <div class="recommendation_date">
                                        게시일: <c:out value="${commentSelect.posted_date}" />
                                    </div>
                                </div>
                                <div class="review_area">
                                    <div class="review_area_content ">
                                        <div class="ReviewText">
                                            <c:out value="${commentSelect.content}" />
                                        </div>
                                    </div>
                                    <div class="review_rate_bar">
                                        이 평가가 유용한가요?
                                        <span class="btn_grey_grey btn_small_thin ico_hover" onclick="setValue(1, this)">
                                            <i class="bi bi-emoji-smile"></i> 추천
                                        </span>
                                        <span class="btn_grey_grey btn_small_thin ico_hover" onclick="setValue(0, this)">
                                            <i class="bi bi-emoji-neutral"></i> 비추천
                                        </span>
                                    </div>
                                </div>
                                <div id="comments">
                                    <div class="commentthread_area">
                                        <form id="form" method="post" action="/game/nestedReplyProcessing2">
                                            <input type="hidden" id="selectedValue" name="likes" value="">
                                            <input type="hidden" name="comment_id" value="${param.comment_id}">
                                            <input type="hidden" name="game_id" value="${param.game_id}">
                                            <input type="hidden" name="user_id" value="${param.user_id}">
                                            <div class="commentthread_entry">
                                                <div class="commentthread_user_avatar playerAvatar online">
                                                    <a href="#">
                                                        <img
                                                            src="${commentSelect.profile_image}.png"
                                                            alt="사진">
                                                    </a>
                                                </div>
                                                <c:choose>
                                                <c:when test="${empty param.user_id}">
                                                <div class="commentthread_entry_quotebox">
                                                    <textarea rows="1" class="commentthread_textarea" name="content"
                                                        placeholder="로그인 해주세요"
                                                        style="overflow: hidden; height: 40px;" readonly="readonly"></textarea>
                                                </div>                                                
                                                </c:when>
                                                <c:otherwise>
                                                <div class="commentthread_entry_quotebox">
                                                    <textarea rows="1" class="commentthread_textarea" name="content"
                                                        placeholder="코멘트 작성"
                                                        style="overflow: hidden; height: 40px;"></textarea>
                                                </div>
                                                </c:otherwise>
                                                </c:choose>
                                                <div class="commentthread_entry_submitlink" style="display: none;"
                                                    onclick="InsertForm()">
                                                    <span class="btn_green_white_innerfade btn_small">
                                                        <span>댓글 입력</span>
                                                    </span>
                                                </div>
                                            </div>
                                        </form>
                                        <script>
                                            var selectedValue = ''; // 초기값 설정

                                            function setValue(value, element) {
                                                selectedValue = value;
                                                console.log("Selected Value: " + value);
                                                // 모든 'estimation' 클래스 요소에서 'btn_active' 클래스 제거
                                                var estimationElements = document.getElementsByClassName(
                                                    'btn_grey_grey btn_small_thin ico_hover');
                                                for (var i = 0; i < estimationElements.length; i++) {
                                                    estimationElements[i].classList.remove('clicked');
                                                }

                                                // 선택한 요소에 'btn_active' 클래스 추가
                                                element.classList.add('clicked');

                                                // 폼 제출 전에 선택한 값을 hidden input에 설정
                                                document.getElementById('selectedValue').value = selectedValue;

                                                var form = document.getElementById('form');
                                                form.setAttribute('enctype', 'application/json');

                                                var submitButton = document.getElementsByClassName(
                                                    'commentthread_entry_submitlink')[0];
                                                submitButton.style.display = 'block';
                                            }

                                            function InsertForm() {
                                                // textarea에 입력된 값 가져오기
                                                var commentContent = document.querySelector('.commentthread_textarea').value;

                                                // 입력된 값이 있을 경우에만 폼을 제출하도록 변경
                                                if (commentContent.trim() !== '') {
                                                    $("#form").submit();
                                                }
                                            }
                                        </script>
                                        <div class="commentthread_comment_container">
                                            <div class="commentthread_comments">
                                                <c:forEach items="${nestedReplySelect}" var="nestedReplySelect"
                                                    varStatus="status" begin="0" end="4">
                                                    <c:if test="${not empty nestedReplySelect.content}">
                                                        <div class="commentthread_comment responsive_body_text">
                                                            <div
                                                                class="commentthread_comment_avatar playerAvatar offline">
                                                                <a href="#">
                                                                    <img
                                                                        src="${commentSelect.profile_image}.png"
                                                                        alt="사진">
                                                                </a>
                                                            </div>
                                                            <div class="commentthread_comment_content">
                                                                <div class="commentthread_comment_author">
                                                                    <a class="hoverunderline commentthread_author_link">
                                                                        <span>
                                                                            <c:out
                                                                                value="${nestedReplySelect.name}" /></span>
                                                                        <span
                                                                            class="commentthread_comment_timestamp"><c:out
                                                                                value="${nestedReplySelect.posted_date}" /></span>
                                                                    </a>
                                                                </div>
                                                                <div
                                                                    class="commentthread_comment_text"><c:out
                                                                        value="${nestedReplySelect.content}" /></div>
                                                            </div>
                                                        </div>
                                                    </c:if>
                                                </c:forEach>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
</div>
</div>
</body>

</html>