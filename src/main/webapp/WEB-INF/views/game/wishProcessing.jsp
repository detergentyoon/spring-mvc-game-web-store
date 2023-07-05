<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8");%> 
<%@ page import="java.net.URLEncoder" %>  
<script>
  window.onload = function() {
    if (window.location.search.includes('category')) {
    	history.back();
    } else {
      const userId = new URLSearchParams(window.location.search).get('user_id');
      const redirectUrl = '/game/wishList?user_id=' + userId;
      location.href = redirectUrl;
    }
  }
</script>

