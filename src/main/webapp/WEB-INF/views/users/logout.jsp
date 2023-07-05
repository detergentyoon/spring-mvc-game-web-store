<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그아웃</title>
</head>
<body>
<%
    // 세션 무효화
    session.invalidate();
    System.out.println("세션 해제됨");
    
    // 로그아웃 처리 후 이동할 페이지로 리다이렉트
    response.sendRedirect("store");
%>
</body>
</html>