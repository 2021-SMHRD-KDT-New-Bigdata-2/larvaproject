<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.model.conDetailDAO"%>
<%@page import="com.model.conDetailVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@page import="com.model.memberVO"%>
<%@page import="com.model.scoreDAO"%>
<!DOCTYPE html>
<html lang="zxx">
<%
memberVO memberInfo = (memberVO) session.getAttribute("loginMemberSession");
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
<title>깔꼼</title>

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
	.
	menu
	a
	{
	cursor
	:
	pointer;
}

.menu a {
	cursor: pointer;
}

.menu .hide {
	display: none;
}
</style>
<script src="http://code.jquery.com/jquery-1.8.2.min.js"></script>
<script>
	$(document).ready(function() {
		$(".menu>button").click(function() {
			var submenu = $(this).next("ul");
			if (submenu.is(":visible")) {
				submenu.slideUp();
			} else {
				submenu.slideDown();
			}
		});
	});
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
								<li><a href="./ContestBoradJSP.jsp" style="color: #ffffff;">공모전</a></li>
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
	
	<%
	conDetailDAO CDAO=new conDetailDAO();
	ArrayList<conDetailVO> allCon=new ArrayList<conDetailVO>();
	ArrayList<Integer> D_day=CDAO.D_Day();
	
	ArrayList<conDetailVO> soonCon=new ArrayList<conDetailVO>();
	
	for(int i=0;i<100;i++){
		allCon.add(CDAO.selectCon(i));
	}
	
	for(int i=0;i<100;i++){
		if(D_day.get(i)<0 && D_day.get(i)>-20){
			soonCon.add(allCon.get(i));
		}
	}
	
	%>

	<!-- Property Comparison Section Begin -->

	<section class="contact-form-section spad" style="margin-left:30%">
		<h4 style="border: 2px">모집글쓰기</h4>
		<hr>
		<div class="row">
			<div class="col-lg-12">
				<div class="cf-content">
					<form action="#" class="cc-form">
						<div>
							<select name="" style="height:46px">
								<option value="none" style="color: gray" autofocus="autofocus">공모전 조회</option>
								<%for(int i=0;i<soonCon.size();i++){ %>
								<option value="" onClick="#">천하제일 무술대회2020101060607070</option>
								<%} %>
							</select>
						</div>
						<div class="group-input">
							<input type="text" placeholder="제목을 작성하세요" style="width: 300px; margin-left:3%">
							<input type="text" placeholder="팀장님의 역할" style="width: 150px">
						</div>
						<textarea placeholder="내용"></textarea>
						<button type="submit" class="site-btn">저장하기</button>
					</form>
				</div>
			</div>
		</div>
	</section>

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