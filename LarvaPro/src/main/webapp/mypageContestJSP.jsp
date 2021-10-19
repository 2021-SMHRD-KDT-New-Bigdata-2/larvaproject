<%@page import="com.model.scoreDAO"%>
<%@page import="com.model.conDetailDAO"%>
<%@page import="com.model.conDetailVO"%>
<%@page import="com.model.teamDAO"%>
<%@page import="com.model.teamVO"%>
<%@page import="com.model.personalcontestVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.model.personalcontestDAO"%>
<%@page import="com.model.memberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="zxx">
<%
memberVO memberInfo = (memberVO) session.getAttribute("loginMemberSession");
scoreDAO MS = new scoreDAO();
if (memberInfo == null) {
	out.println("<script>alert('로그인이 필요한 서비스입니다. 로그인페이지로 이동합니다.'); window.location='./LoginJSP.jsp';</script>");
}
%>
<head>
<meta charset="UTF-8">
<meta name="description" content="Aler Template">
<meta name="keywords" content="Aler, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>지원한 공모전</title>

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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js">
	
</script>
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
	<header class="header-section">
		<div
			style="background-image: url('img/mainTopBig.png'); width: 2000px; height: 225px;">
			<div class="hs-top"
				style="margin-top: 10px; border-bottom: 0px; height: 225px;">
				<div class="container">
					<div class="ten" style="padding: 3%">
						<div class="logo">
							<a href="./mainPageJSP.jsp"><img src="img/logo/mainLogo.png"
								style="witdh: 162px; height: 102px"></a>
						</div>
						<nav class="nav-menu" style="margin-top: 5%;">
							<%
							if (memberInfo == null) {
								out.print(
								"<a href='./LoginJSP.jsp' style='margin-left:90%;' id='loginBtn'><img src='img/logo/loginOff.png' width='180px' height='32px' style='margin:1%'></a>");
							} else if (memberInfo != null) {
								out.print(
								"<a href='./LogoutJSP.jsp' style='margin-left:95%;' id='logoutBtn'><img src='img/logo/logoutOff.png' width='110px' height='32px' style='margin:1%'></a>");
							}
							%>
							<ul style="text-align: center; margin-left: 7%;">
								<li class="active" style="font-size: 10px"><a
									href="./mainPageJSP.jsp" style="color: #ffffff;">메인</a></li>
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
								<li><a href="./ContestBoardJSP.jsp" style="color: #ffffff;">공모전</a></li>
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
			style="padding: 3%; background-color: #4169E1; box-shadow: 1px 1px gray; width: 2000px">
			<div class="pcntSearchText"
				style="margin-left: 33%; height: 40px; width: 600px; border: 2px solid #1b5ac2; background: #ffffff;">
				<input class="textBar" type="text" placeholder="원하는 공모전 검색!"
					style="font-size: 16px; width: 500px; height: 100%; padding: 10px; border: 0px; outline: none;">
				<button class="searchBtn"
					style="width: 50px; height: 100%; border: 0px; background: #1b5ac2; outline: none; float: right; color: #ffffff">검색</button>
			</div>
		</div>
	</header>
	<!-- 헤드 끝 -->

	<!-- 중간 헤드 시작 -->
	<section class="breadcrumb-section spad set-bg"
		data-setbg="img/grayPolygon.png" style="width: 2000px">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="breadcrumb-text">
						<h4>지원한 공모전</h4>
						<div class="bt-option">
							<a href="./index.html"><i class="fa fa-home"></i>메인</a><span>지원한
								공모전</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- 중간 헤드 끝 -->
	<%
	if (memberInfo != null) {
		personalcontestDAO MCL = new personalcontestDAO();//내가 참여한 공모전 DAO호출
		conDetailDAO CDAO = new conDetailDAO();//공모전 DAO 호출
		ArrayList<personalcontestVO> myConList = MCL.showPersonalContest(memberInfo.getMemId());//내가 참여한 공모전의 정보를 ArrayList에 추가

		int mojip = 0;
		int hanuenjung = 0;
		int end = 0;

		for (int i = 0; i < myConList.size(); i++) {
			if (myConList.get(i).getPcntType() == 0) {
		mojip++;
			} else if (myConList.get(i).getPcntType() == 1) {
		hanuenjung++;
			} else if (myConList.get(i).getPcntType() == 2) {
		end++;
			}
		}
	%>
	<!-- 내정보 섹션 -->
	<section class="profile-section spad" style="margin-bottom: 10%">
		<div class="section-title">
			<h4 style="margin-left: 21.5%">내정보</h4>
		</div>
		<div class="container" style="margin-left: 20%">
			<div class="profile-agent-content">
				<div class="row">
					<div class="col-lg-4">
						<div class="profile-agent-info">
							<div class="pi-text" style="padding-top: 0px">
								<div style="width: 70px; height: 70px">
									<%
									if (memberInfo != null && memberInfo.getMemLevel() < 33) {
										out.println("<img src='img/tiger/tiger_profile01.png'>");
									} else if (memberInfo != null && memberInfo.getMemLevel() < 66) {
										out.println("<img src='img/tiger/tiger_profile02.png'>");
									} else if (memberInfo != null && memberInfo.getMemLevel() <= 99) {
										out.println("<img src=img/tiger/tiger_profile03.png>");
									}
									%>
								</div>
								<%
								if (memberInfo != null) {
									out.print("<h5>" + memberInfo.getMemUserName() + "</h5>");
								}
								if (memberInfo != null) {
									out.print("<span>Level: " + memberInfo.getMemLevel() + "</span>");
								}
								%>
							</div>
						</div>
					</div>
					<div class="col-lg-4">
						<div class="profile-agent-widget">
							<ul>
								<li>팀원 모집중인 공모전 갯수 <span style="color: red"><%=mojip%></span></li>
								<li>현재 참가중인 공모전 갯수 <span style="color: red"><%=hanuenjung%></span></li>
								<li>끝난 공모전 갯수 <span style="color: red"><%=end%></span></li>
							</ul>
						</div>
					</div>
					<div class="col-lg-4">
						<div class="profile-agent-newslatter">
							<h5 align="center" style="color: red;">평점</h5>
							<p align="center"
								style="color: blue; font-size: 35px; margin: 10%;">
								<%
								if (memberInfo != null) {
									double avg = MS.showScore(memberInfo.getMemId());
									if (avg == 0) {
								%>
							
							<h6 align="center">당신을 평가한 사람이 없습니다</h6>
							<%} else {%>
							<%=avg%>
							<%
							}
							}
							%>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- 내정보 섹션 끝-->

	<%
	if (memberInfo.getMemId() != null) {
		conDetailVO con = new conDetailVO();
		teamDAO teamdao = new teamDAO();

		ArrayList<teamVO> team_list = new ArrayList<teamVO>();
		ArrayList<teamVO> myTeamMembers = null;

		team_list = teamdao.selectMyTeam(memberInfo.getMemId());
	%>
	<!-- 공모전 내역 섹션 -->
	<section class="profile-section spad" style="margin-bottom: 10%">
		<div class="section-title">
			<h4 style="margin-left: 21.5%">참여한 공모전</h4>
		</div>
		<%
		if (team_list.size() != 0) {
		%>
		<div class="container">
			<div class="row">
				<%
				for (int i = 0; i < team_list.size(); i++) {
				%>
				<div class="col-lg-4" style="width:360px;height:400px;">
					<div class="property-item">
						<div class="pi-pic set-bg">
							<img
								src="<%=CDAO.bringSmallImg(team_list.get(i).getCntNum())%>" width = 100%; height = "400px" />
							<!-- 남은 일자 -->
							<div class="label">
								<%
								int date = CDAO.oneContestD_Day(team_list.get(i).getCntNum());
								if (date > 0) {
								%>
								+<%=date%>
								<%
								} else {
								%>
								-<%=date%>
								<%
								}
								%>
							</div>
						</div>
						<div class="pi-text" style="background-color : white;width:360px;height:160px;">
							<!-- 마지막 일자 -->
							<a href="#" class="heart-icon"><span class="icon_heart_alt"></span></a>
							<div class="pt-price">
								<%=CDAO.selectCon(team_list.get(i).getCntNum()).getConToDate()%><span>까지</span>
							</div>
							<!-- 제목 -->
							<h5 style="height:50px;">
								<a href="#"><%=CDAO.selectCon(team_list.get(i).getCntNum()).getConName()%></a>
							</h5>
							<ul>
								<!-- 분야 -->
								<li><i class="fa fa-object-group"></i> <%=CDAO.selectCon(team_list.get(i).getCntNum()).getConField()%>
								</li>
								<!-- 인원수 -->
								<li><i class="fa fa-bathtub"></i> <%=teamdao.showTeamMemberNum(teamdao.searchTeamNum(memberInfo.getMemId()).get(i).getTmNum())%>
								</li>
								<!-- 팀원들 이름 -->
								<li><i class="fa fa-bed"></i> <%
									 myTeamMembers = teamdao.showTeamMember(team_list.get(i).getCntNum(), team_list.get(i).getTmNum());
									 for (teamVO vos : myTeamMembers) {
									 	out.println(vos.getMemId() + " ");
									 }
									 %>
								</li>
								<!-- 모집여부 -->
								<li style="color: red"><i class="fa fa-bed"></i> <%
									 if (date <= 0) {
									 	int maxnum = teamdao.selectMyTeam(memberInfo.getMemId()).get(i).getTmFull();
									 	int nownum = teamdao.showTeamMemberNum(teamdao.searchTeamNum(memberInfo.getMemId()).get(i).getTmNum());
									 	if (nownum < maxnum) {
									 		out.print("모집 중");
									 	} else if (nownum >= maxnum) {
									 		out.print("모집 완료");
									 	}
									 } else {
									 	out.print("모집 완료");
									 }
									 %>
						 		</li>
							</ul>
						</div>
					</div>
				</div>
				<%
				}
				%>
			</div>
		</div>
			<%
			}
			%>
	</section>
	<!-- 공모전 내용 섹션 끝 -->
	
	<!-- 내 공모전 내역 섹션 -->
	<div style="margin-bottom: 10%">
		<div class="section-title" style="margin-top: 5%">
			<h4 style="margin-left: 21.5%">공모전 내역</h4>
		</div>
		<table class="table table-hover"
			style="width: 1100px; margin-left: 21.5%">
			<thead>
				<tr>
					<th scope="col" style="width: 600px;text-align: center;">참여 공모전 이름</th>
					<th scope="col" style="width: 100px;text-align: center;">역할</th>
					<th scope="col" style="width: 300px;text-align: center;">마감일</th>
				</tr>
			</thead>
			<tbody>
				<%
				if (myConList.size() == 0) {
				%>
				<tr>
					<td colspan='3' style="text-align: center;">아직 참가한 공모전이 없습니다.</td>
				</tr>
				<%
				} else if (myConList.size() > 0) {
				for (int i = 0; i < myConList.size(); i++) {
					if (myConList.get(i).getPcntContent() == null) {
				%>
				<tr>
					<td>
						<div>
							<ul>
								<li class="menu" style="list-style: none"><a><%=CDAO.selectCon(myConList.get(i).getPcntNum()).getConName()%></a>
									<ul class="hide" style="list-style: none">
										<li>
											<section class="contact-form-section spad">
												<div class="container">
													<div class="row">
														<div class="col-lg-12">
															<div class="cf-content">
																<form action="myDairyService" class="cc-form">
																	<div style="float: left; margin-left: 2%">
																		<%=myConList.get(i).getPcntContent()%>
																	</div>
																</form>
															</div>
														</div>
													</div>
												</div>
											</section>
										</li>
									</ul></li>
							</ul>
						</div>
					</td>
					<td><%=myConList.get(i).getPcntPosition()%></td>
					<td>~<%=CDAO.selectCon(myConList.get(i).getPcntNum()).getConToDate()%>
						까지
					</td>
				</tr>
				<%
				}
				}
				}
				}
				}
				%>
			</tbody>
		</table>
	</div>
	<!-- 내 일기 섹션 끝 -->
	<!-- Property Comparison Section End -->

	<!-- Contact Section Begin -->
	<section class="contact-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-6">
					<div class="contact-info">
						<div class="ci-item">
							<div class="ci-icon">
								<i class="fa fa-map-marker"></i>
							</div>
							<div class="ci-text">
								<h5>Address</h5>
								<p>160 Pennsylvania Ave NW, Washington, Castle, PA
									16101-5161</p>
							</div>
						</div>
						<div class="ci-item">
							<div class="ci-icon">
								<i class="fa fa-mobile"></i>
							</div>
							<div class="ci-text">
								<h5>Phone</h5>
								<ul>
									<li>125-711-811</li>
									<li>125-668-886</li>
								</ul>
							</div>
						</div>
						<div class="ci-item">
							<div class="ci-icon">
								<i class="fa fa-headphones"></i>
							</div>
							<div class="ci-text">
								<h5>Support</h5>
								<p>Support.aler@gmail.com</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="cs-map">
			<iframe
				src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d735515.5813275519!2d-80.41163541934742!3d43.93644386501528!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x882a55bbf3de23d7%3A0x3ada5af229b47375!2sMono%2C%20ON%2C%20Canada!5e0!3m2!1sen!2sbd!4v1583262687289!5m2!1sen!2sbd"
				height="450" style="border: 0;" allowfullscreen=""></iframe>
		</div>
	</section>
	<!-- Contact Section End -->

	<!-- Footer Section Begin -->
	<footer class="footer-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-4 col-md-6">
					<div class="fs-about">
						<div class="fs-logo">
							<a href="#"> <img src="img/f-logo.png" alt="">
							</a>
						</div>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit,
							sed do eiusmod tempor incididunt ut labore et dolore magna aliqua
							ut aliquip ex ea</p>
						<div class="fs-social">
							<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
								class="fa fa-twitter"></i></a> <a href="#"><i
								class="fa fa-youtube-play"></i></a> <a href="#"><i
								class="fa fa-instagram"></i></a> <a href="#"><i
								class="fa fa-pinterest-p"></i></a>
						</div>
					</div>
				</div>
				<div class="col-lg-2 col-sm-6">
					<div class="fs-widget">
						<h5>Help</h5>
						<ul>
							<li><a href="#">Privacy Policy</a></li>
							<li><a href="#">Contact Support</a></li>
							<li><a href="#">Knowledgebase</a></li>
							<li><a href="#">Careers</a></li>
							<li><a href="#">FAQs</a></li>
						</ul>
					</div>
				</div>
				<div class="col-lg-2 col-sm-6">
					<div class="fs-widget">
						<h5>Links</h5>
						<ul>
							<li><a href="#">Contact</a></li>
							<li><a href="#">Create Property</a></li>
							<li><a href="#">My Properties</a></li>
							<li><a href="#">Register</a></li>
							<li><a href="#">Login</a></li>
						</ul>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="fs-widget">
						<h5>Newsletter</h5>
						<p>Deserunt mollit anim id est laborum.</p>
						<form action="#" class="subscribe-form">
							<input type="text" placeholder="Email">
							<button type="submit" class="site-btn">Subscribe</button>
						</form>
					</div>
				</div>
			</div>
			<div class="copyright-text">
				<p>
					<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
					Copyright &copy;
					<script>
						document.write(new Date().getFullYear());
					</script>
					All rights reserved | This template is made with <i
						class="fa fa-heart" aria-hidden="true"></i> by <a
						href="https://colorlib.com" target="_blank">Colorlib</a>
					<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
				</p>
			</div>
		</div>
	</footer>
	<!-- Footer Section End -->


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