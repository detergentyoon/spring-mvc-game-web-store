<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8");%> 
<%@ page import="java.net.URLEncoder" %>  
<%
String category = request.getParameter("category");
String encodedCategory = URLEncoder.encode(category, "UTF-8");
response.sendRedirect("/game/gamePage?game_id=" + request.getParameter("game_id") + "&user_id=" + request.getParameter("user_id") + "&category=" + URLEncoder.encode(category, "UTF-8"));
%>