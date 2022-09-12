<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 찾기 페이지</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/index.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/skip_header.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/header.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/footer.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/reset.css">
<link rel="stylesheet" type="text/css"
	href="http://fonts.googleapis.com/earlyaccess/notosanskr.css">

<style type="text/css">
body {
	text-align: center;
}

.message {
	color: black;
	font-size: 1.5em;
}

.loginBtn {
	color: white; 
	border: 2px solid grey; 
	font-weight: bold; 
	background: #08b2f5;
}

</style>
</head>
<body>
	<br>
	<h1>비밀번호 찾기 페이지</h1>
	<hr>
	<br><br><br>
	<p class="message">비밀번호를 성공적으로 변경했습니다.</p>
	<br><br><br>
	<button class="loginBtn" type="button" onclick="location.href='${pageContext.request.contextPath}';">메인 페이지로 이동</button>
	<button class="loginBtn" type="button" onclick="location.href='${pageContext.request.contextPath}/member/login';">로그인 페이지로 이동</button>
	<br><br><br><br><br><br>
</body>
</html>





