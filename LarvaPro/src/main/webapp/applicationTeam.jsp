<%@page import="com.model.scoreDAO"%>
<%@page import="com.model.memberDAO"%>
<%@page import="com.model.conDetailVO"%>
<%@page import="com.model.conDetailDAO"%>
<%@page import="com.model.teamDAO"%>
<%@page import="com.model.teamVO"%>
<%@page import="com.model.memberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="zxx">
<%
memberVO memberInfo = (memberVO) session.getAttribute("loginMemberSession");
int idx = Integer.parseInt(request.getParameter("idx"));

memberDAO MDAO=new memberDAO();
teamDAO TDAO=new teamDAO();
conDetailDAO CDAO=new conDetailDAO();
scoreDAO score=new scoreDAO();

teamVO team=TDAO.selectOneTeam(idx);
conDetailVO contest=CDAO.selectCon(team.getCntNum());
memberVO member=MDAO.loginId(team.getMemId());
%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js">
	
</script>
<head>
<meta charset="UTF-8">
<meta name="description" content="Aler Template">
<meta name="keywords" content="Aler, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>깔꼼 | Template</title>

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:300,400,500,600,700,800,900&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Lato:400,700,900&display=swap"
	rel="stylesheet">

<!-- Css Styles -->
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
<link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
<link rel="stylesheet" href="css/nice-select.css" type="text/css">
<link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
<link rel="stylesheet" href="css/magnific-popup.css" type="text/css">
<link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
<link rel="stylesheet" href="css/style.css" type="text/css">
</head>
<style>
#noteHead {
	font-size: 25px;
	width: 100px;
}

#noteContent {
	font-size: 18px;
	margin: 1%;
}
</style>

<body>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- Offcanvas Menu Wrapper Begin -->
	<div class="offcanvas-menu-overlay"></div>
	<div class="offcanvas-menu-wrapper">
		<div class="canvas-close">

			<span class="icon_close"></span>
		</div>
		<div class="logo">
			<a href="./index.html"> <img src="img/logo.png" alt="">
			</a>
		</div>
		<div id="mobile-menu-wrap"></div>
		<div class="om-widget">
			<ul>
				<li><i class="icon_mail_alt"></i> Aler.support@gmail.com</li>
				<li><i class="fa fa-mobile-phone"></i> 125-711-811 <span>125-668-886</span></li>
			</ul>
			<a href="#" class="hw-btn">Submit property</a>
		</div>
		<div class="om-social">
			<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
				class="fa fa-twitter"></i></a> <a href="#"><i
				class="fa fa-youtube-play"></i></a> <a href="#"><i
				class="fa fa-instagram"></i></a> <a href="#"><i
				class="fa fa-pinterest-p"></i></a>
		</div>
	</div>
	<!-- Offcanvas Menu Wrapper End -->

	<!-- 헤드 시작 -->
	<header class="header-section" style="margin: 0px">
		<div
			style="background-image: url('img/mainTopBig.png'); width: 2000px; height: 155px;">
			<div class="hs-top" style="margin-top: 0px; height: 165px;">
				<div class="container">
					<div class="ten" style="padding: 1px">
						<div class="logo">
							<a href="./mainPageJSP.jsp"><img src="img/logo/mainLogo.png"
								style="margin-top: 10px"></a>
						</div>
						<nav class="nav-menu">
							<%
							if (memberInfo == null) {
								out.print(
								"<a href='./LoginJSP.jsp' style='margin-left:90%;' id='loginBtn'><img src='img/logo/loginOff.png' width='180px' height='32px' style='margin-top:25px'></a>");
							} else if (memberInfo != null) {
								out.print(
								"<a href='./LogoutJSP.jsp' style='margin-left:95%;' id='logoutBtn'><img src='img/logo/logoutOff.png' width='110px' height='32px' style='margin-top:25px'></a>");
							}
							%>
							<ul style="text-align: center; margin-left: 7%;">
								<li style="font-size: 10px"><a href="./mainPageJSP.jsp"
									style="color: #ffffff;">메인</a></li>
								<li><a href="#" style="color: #ffffff;">마이페이지</a>
									<ul class="dropdown"
										style="display: inline-block; width: 150px;">
										<li style="margin-right: 40%"><a
											href="./mypageProfileJSP.jsp">내정보</a></li>
										<li style="margin-right: 10%"><a
											href="./mypageContestJSP.jsp">지원한 공모전</a></li>
										<li style="margin-right: 38%"><a
											href="./mypageTeamJSP.jsp">나의 팀</a></li>
										<li style="margin-right: 40%"><a
											href="./mypageMessageJSP.jsp">쪽지함</a></li>
									</ul></li>
								<li><a href="./ContestBoard.jsp" style="color: #ffffff;">공모전</a></li>
								<li><a href="./teamBoardJSP.jsp" style="color: #ffffff;">팀원모집</a></li>
							</ul>
						</nav>
					</div>
				</div>
				<div></div>
			</div>
		</div>
		<div class="canvas-open">
			<span class="icon_menu"></span>
		</div>
		<div
			style="padding: 48px; background-color: #4169E1; box-shadow: 1px 1px gray; width: 2000px">
			<div class="pcntSearchText"
				style="margin-left: 33%; width: 600px; border: 2px solid #1b5ac2; background: #ffffff;">
				<form action="searchService">
					<input class="textBar" type="text" placeholder="원하는 공모전 검색!"
						style="font-size: 16px; width: 500px; height: 100%; padding: 10px; border: 0px; outline: none;"
						name="search">
					<button class="search"
						style="width: 90px; height: 40px; border: 0px; background: #1b5ac2; outline: none; float: right; color: #ffffff">검색</button>
				</form>
			</div>
		</div>
	</header>
	<!-- 헤드 끝 -->

	<div class="container mt-5"
		style="background-color: #F6F6F6; border-radius: 10px; margin-top: -10%">
		<div>
			<div>
				<article>
					<header class="mb-4"
						style="padding-top: 1%; color: green; font-size: 13px; margin-bottom: 0px">
						팀원 모집 >
						<h3 style="padding: 1%"><%=team.getTitle() %></h3>
						<h5 style="padding: 1%; margin-top: 1%"><%=member.getMemNickName() %> | LV <%=member.getMemLevel() %> |
							<%=member.getMemEmail() %></h5>
						<hr>
					</header>


					<figure class="mb-4" style="float: left; margin-left: 25%">

						<img
							src="https://www.wevity.com/upload/contest/20211001103134_ddf5bb76.jpg"
							alt="..." />
					</figure>
					<section class="mb-5">
						<hr width="350px" style="margin-left: 50%">
						<table class="content" style="margin-left: 50%;">
							<tbody>
								<tr>
									<td width="100" height="50"><b>분야</b></td>
									<td style="color: #4169E1"><%=contest.getConField() %></td>
								</tr>
								<tr>
									<td width="100" height="50"><b>응모대상</b></td>
									<td style="color: #4169E1"><%=contest.getConQualfication() %></td>
								</tr>
								<tr>
									<td width="100" height="50"><b>주최/주관</b>
									<td style="color: #4169E1"><%=contest.getConHost() %></td>
								</tr>
								<tr>
									<td width="100" height="50"><b>후원/협찬</b></td>
									<td style="color: #4169E1"><%=contest.getClass() %></td>
								</tr>
								<tr>
									<td width="100" height="50"><b>접수기간</b></td>
									<td style="color: #4169E1"><%=contest.getConFromDate() %>~<%=contest.getConToDate() %></td>
								</tr>
								<tr>
									<td width="100" height="50"><b>총상금</b></td>
									<td style="color: #4169E1">100억</td>
								</tr>
							</tbody>
						</table>
						<hr width="350px" style="margin-left: 50%">
						<!-- 내정보 섹션 -->
						<section class="profile-section spad"
							style="margin-bottom: 2%; padding: 2%">
							<div class="container">
								<div class="profile-agent-content">
									<div class="row">
										<div class="col-lg-4">
											<div class="profile-agent-info">
												<div class="pi-text" style="padding-top: 0px">
													<div style="width: 70px; height: 70px"></div>

												</div>
											</div>
										</div>
										<div class="col-lg-4">
											<div class="profile-agent-widget">
												<ul>
													<li>팀장의 역할 <span style="color: #4169E1"><%=team.getPosition() %></span></li>
													<li>모집 인원 수 <span style="color: #4169E1"><%=team.getTmFull() %></span></li>
													<li>이메일 <span style="color: #4169E1"><%=member.getMemEmail() %></span></li>
												</ul>
											</div>
										</div>
										<div class="col-lg-4">
											<div class="profile-agent-newslatter">
												<h5 align="center" style="color: red;">팀장의 평점</h5>
												<p align="center"
													style="color: blue; font-size: 35px; margin: 10%;"><%=score.showScore(member.getMemId()) %></p>
											</div>
										</div>
									</div>
								</div>
							</div>
						</section>
						<!-- 내정보 섹션 끝-->
						<section class="profile-section spad"
							style="margin-bottom: 2%; padding: 2%">
							<div class="container">
								<div class="profile-agent-content"
									style="background-color: white; padding: 2%">

									<div class="col-lg-4">
										<div class="row" style="width: 1000px">
											<span style="font-size: 15px"> <%=team.getContent() %> </span>
										</div>
									</div>
								</div>
							</div>
						</section>
						<figure>
						</figure>
					</section>
				</article>
			</div>
		</div>
	</div>
	<div style="padding-bottom: 10%">
		<%if (memberInfo.getMemId().equals(member.getMemId())){ %>
		<form action="deleteTeamService">
		<button type="submit" class="btn btn-primary" 
			style="background: #1b5ac2; color: #ffffff; border: 0; outline: 0; margin-left: 45%;;"
			name="delete" value="<%=team.getTmNum()%>">삭제하기</button>
		</form>
		<%}else{ %>
		<form action="joinTeamService">
		<button type="submit" class="btn btn-primary"
			style="margin-left: 45%; background: #1b5ac2; color: #ffffff; border: 0; outline: 0;"
			name="join" value="<%=team.getTmNum()%>">참여하기</button>
			<input value="<%=memberInfo.getMemId()%>" name="joinMemberId">
		</form>
		<%} %>
	</div>


</body>

<script>
	//로그인,회원가입 버튼 메소드
	$(function() {
		$("#loginBtn img").mouseover(function() {
			$(this).attr("src", "img/logo/loginOn.png");
		});
		$("#loginBtn img").mouseout(function() {
			$(this).attr("src", "img/logo/loginOff.png");
		});
	});

	//로그아웃 버튼 메소드
	$(function() {
		$("#logoutBtn img").mouseover(function() {
			$(this).attr("src", "img/logo/logoutOn.png");
		});
		$("#logoutBtn img").mouseout(function() {
			$(this).attr("src", "img/logo/logoutOff.png");
		});
	});
</script>

<!-- Js Plugins -->
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.magnific-popup.min.js"></script>
<script src="js/mixitup.min.js"></script>
<script src="js/jquery-ui.min.js"></script>
<script src="js/jquery.nice-select.min.js"></script>
<script src="js/jquery.slicknav.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/jquery.richtext.min.js"></script>
<script src="js/image-uploader.min.js"></script>
<script src="js/main.js"></script>
</body>


</html>