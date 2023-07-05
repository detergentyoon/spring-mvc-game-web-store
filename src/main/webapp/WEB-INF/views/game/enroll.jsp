<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>게임 등록</h1>

<form action="/game/enroll" method="post">
    <div class="input_wrap">
        <label>Title</label>
        <input name="title">
    </div>
    <div class="input_wrap">
	    <label>category</label>
	    <input name="category">
    </div>
    <div class="input_wrap">
	    <label>franchise</label>
	    <input name="franchise">
    </div>
    <div class="input_wrap">
	    <label>release_date</label>
	    <input name="release_date">
    </div>
    <div class="input_wrap">
	    <label>developer</label>
	    <input name="developer">
    </div>
    <div class="input_wrap">
	    <label>publisher</label>
	    <input name="publisher">
    </div>
    <div class="input_wrap">
	    <label>original_price</label>
	    <input name="original_price">
    </div>
    <div class="input_wrap">
	    <label>discount_rate</label>
	    <input name="discount_rate">
    </div>
    <div class="input_wrap">
        <label>video</label>
        <textarea name="video" style="width: 500px; height: 150px"></textarea>
    </div>
    <div class="input_wrap">
	    <label>thumbnail1</label>
	    <input name="thumbnail1">
    </div>
    <div class="input_wrap">
	    <label>thumbnail2</label>
	    <input name="thumbnail2">
    </div>
    <div class="input_wrap">
	    <label>thumbnail3</label>
	    <input name="thumbnail3">
    </div>
    <div class="input_wrap">
	    <label>thumbnail4</label>
	    <input name="thumbnail4">
    </div>
    <div class="input_wrap">
	    <label>thumbnail5</label>
	    <input name="thumbnail5">
    </div>
    <div class="input_wrap">
        <label>introduction</label>
        <textarea name="introduction" style="width: 500px; height: 150px"></textarea>
    </div>
    <div class="input_wrap">
        <label>description</label>
        <textarea name="description" style="width: 500px; height: 150px"></textarea>
    </div>
    <button class="btn">등록</button>
</form>

</body>
</html>