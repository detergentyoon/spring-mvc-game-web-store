<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
    <style>
        .home_ctn {
            width: 100%;
        }

        .home_page_content {
            padding: 20px;
        }

        .title {
            font-size: 24px;
            font-weight: bold;
            margin-bottom: 10px;
        }

        .content_hub_carousel {
            position: relative;
            overflow: hidden;
            padding-top: inherit;
        }

        .carousel_container {
            display: flex;
            transition: transform 0.5s ease-in-out;
        }

        .focus {
            display: flex;
        }

        .content_hub_capsule_ctn {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            width: 200px;
            height: 300px;
            margin-right: 10px;
            position: relative;
            overflow: hidden;
        }

        .content_hub_capsule_ctn img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        .gradient {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: linear-gradient(rgba(0, 0, 0, 0), rgba(0, 0, 0, 1));
            opacity: 0.7;
        }

        .label_ctn {
            position: absolute;
            bottom: 20px;
            left: 0;
            right: 0;
            text-align: center;
            color: white;
        }

        .label {
            font-size: 18px;
            font-weight: bold;
        }

        .arrow {
            position: absolute;
            top: 50%;
            transform: translateY(-50%);
            width: 30px;
            height: 30px;
            background-color: rgba(0, 0, 0, 0.7);
            cursor: pointer;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .arrow.left {
            left: 10px;
        }

        .arrow.right {
            right: 10px;
        }

        .arrow div {
            width: 0;
            height: 0;
            border-style: solid;
            border-width: 5px 0 5px 8.7px;
            border-color: transparent transparent transparent rgba(255, 255, 255, 0.9);
        }
    </style>
</head>

<body>
    <div class="home_ctn" style=" width: 1300px; margin: auto;"> 
        <div class="home_page_content content_hub_carousel_ctn">
        <div class="title"><p class="pb-2 border-bottom"><a class="title" href="categoryClassificationList">장르 별 분류</a>&nbsp<a href="categoryClassificationList" class="title" style="font-size: 12px;"> ></a></p></div>
            <div class="content_hub_carousel">
                <div class="carousel_container paging_capsules">
                    <div class="focus">
                        <a class="content_hub_capsule_ctn" href="#">
                            <img src="resources/static/imgs/category_classification/action.png">
                            <div class="gradient"></div>
                            <div class="label_ctn"><span class="label">액션</span></div>
                        </a>
                        <a class="content_hub_capsule_ctn" href="#">
                            <img src="resources/static/imgs/category_classification/survival.png">
                            <div class="gradient"></div>
                            <div class="label_ctn"><span class="label">생존</span></div>
                        </a>
                        <a class="content_hub_capsule_ctn" href="#">
                            <img src="resources/static/imgs/category_classification/fighting_martial_arts.png">
                            <div class="gradient"></div>
                            <div class="label_ctn"><span class="label">격투</span></div>
                        </a>
                        <a class="content_hub_capsule_ctn" href="#">
                            <img src="resources/static/imgs/category_classification/freetoplay.png">
                            <div class="gradient"></div>
                            <div class="label_ctn"><span class="label">무료 플레이 게임</span></div>
                        </a>
                        <a class="content_hub_capsule_ctn" href="#">
                            <img src="resources/static/imgs/category_classification/exploration_open_world.png">
                            <div class="gradient"></div>
                            <div class="label_ctn"><span class="label">오픈 월드</span></div>
                        </a>
                        <a class="content_hub_capsule_ctn" href="#">
	                        <img src="resources/static/imgs/category_classification/rogue_like_rogue_lite.png">
	                        <div class="gradient"></div>
	                        <div class="label_ctn"><span class="label">로그라이크</span></div>
                    		</a>
                    		<a class="content_hub_capsule_ctn" href="#">
	                        <img src="resources/static/imgs/category_classification/adventure.png">
	                        <div class="gradient"></div>
	                        <div class="label_ctn"><span class="label">어드벤처</span></div>
                    		</a>
                    		<a class="content_hub_capsule_ctn" href="#">
	                        <img src="resources/static/imgs/category_classification/science_fiction.png">
	                        <div class="gradient"></div>
	                        <div class="label_ctn"><span class="label">공상과학 및 사이버펑크</span></div>
                    		</a>
                    		<a class="content_hub_capsule_ctn" href="#">
	                        <img src="resources/static/imgs/category_classification/horror.png">
	                        <div class="gradient"></div>
	                        <div class="label_ctn"><span class="label">공포</span></div>
                    		</a>
                    		<a class="content_hub_capsule_ctn" href="#">
	                        <img src="resources/static/imgs/category_classification/puzzle.png">
	                        <div class="gradient"></div>
	                        <div class="label_ctn"><span class="label">퍼즐</span></div>
                    		</a>
                    		<a class="content_hub_capsule_ctn" href="#">
	                        <img src="resources/static/imgs/category_classification/anime.png">
	                        <div class="gradient"></div>
	                        <div class="label_ctn"><span class="label">애니메이션</span></div>
                    		</a>
                    		<a class="content_hub_capsule_ctn" href="#">
	                        <img src="resources/static/imgs/category_classification/strategy_cities_settlements.png">
	                        <div class="gradient"></div>
	                        <div class="label_ctn"><span class="label">도시 및 정착</span></div>
                    		</a>
                    </div>
                </div>
                
                
                <div class="carousel_thumbs">
                    <div class="focus"></div>
                    <div></div>
                    <div></div>
                    <div></div>
                    <div></div>
                    <div></div>
                </div>
                <div class="arrow left">
                    <div></div>
                </div>
                <div class="arrow right">
                    <div></div>
                </div>
            </div>
        </div>
    </div> 

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
        // jQuery를 사용하여 캐러셀 슬라이드 구현
        $(document).ready(function () { //
            var container = $(".carousel_container");
            var focus = container.find(".focus");
            var thumbs = $(".carousel_thumbs");
            var slides = focus.children();
            var slideWidth = slides.outerWidth(true);
            var slideCount = slides.length;
            var currentIndex = 0;
        
            // 슬라이드 이동 함수
            function moveSlides() {
                container.css("transform", "translateX(-" + (currentIndex * slideWidth) + "px)");
                thumbs.children().eq(currentIndex).addClass("active").siblings().removeClass("active");
            }

            // 화살표 클릭 이벤트
            $(".arrow").click(function () {
                var direction = $(this).hasClass("left") ? -1 : 1;
                currentIndex += direction;
                currentIndex = (currentIndex + slideCount) % slideCount;
                moveSlides();
            });
            // 썸네일 클릭 이벤트
            thumbs.children().click(function () {
                currentIndex = $(this).index();
                moveSlides();
            });
        });

    </script>
</body>

</html>
