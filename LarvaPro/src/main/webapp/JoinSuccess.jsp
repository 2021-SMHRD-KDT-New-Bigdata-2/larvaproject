<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<% 
	String JoinName=(String)request.getAttribute("JoinName");
	%>
	
	<%=JoinName%>�� ȯ���մϴ�.

</body>
</html>