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
	String LoginName=(String)request.getAttribute("LoginName");
	%>
	<%=LoginName%>�� ȯ���մϴ�.

</body>
</html>