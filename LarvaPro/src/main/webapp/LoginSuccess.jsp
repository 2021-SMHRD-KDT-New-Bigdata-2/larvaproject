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
	<%
	out.println("<script>alert(JoinName+'님, 회원가입이 완료되었습니다.'); window.location='./mainPageJSP.jsp';</script>");
	%>

</body>
</html>