<%@page import="com.model.memberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<% memberVO memberSession = (memberVO)session.getAttribute("loginMemberSession");%>
	<%=memberSession.getMemId()%>님 환영합니다.

</body>
</html>