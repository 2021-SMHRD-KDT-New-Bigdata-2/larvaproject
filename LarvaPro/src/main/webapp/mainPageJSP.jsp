<%@page import="com.model.conDetailDAO"%>
<%@page import="com.model.postVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.model.conDetailVO"%>
<%@page import="com.model.memberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
   
<!DOCTYPE html>
<html lang="zxx">
<% memberVO memberInfo=(memberVO)session.getAttribute("loginMemberSession"); %>
<% 
	conDetailDAO contestDAO=new conDetailDAO();
 	ArrayList<conDetailVO> conArr =contestDAO.calList();
 	
 	conDetailVO contest100=contestDAO.selectCon(100);
 	conDetailVO contest90=contestDAO.selectCon(90);
 	conDetailVO contest50=contestDAO.selectCon(50);
 	
 	// 공모전 ArrayList에 담아 가져와서!
 	
 %> 
<head>
    <meta charset="UTF-8">
    <meta name="description" content="Aler Template">
    <meta name="keywords" content="Aler, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Aler | Template</title>
    
    <!-- 켈린더 -->
    <!-- jquery CDN -->
    	<script src="https://code.jquery.com/jquery-3.6.0.slim.js"></script>
  		<script src="jquery-3.6.0.min.js"></script>
  		<!-- fullcalendar CDN -->
  		<link href='https://cdn.jsdelivr.net/npm/fullcalendar@5.8.0/main.min.css' rel='stylesheet' />
  		<script src='https://cdn.jsdelivr.net/npm/fullcalendar@5.8.0/main.min.js'></script>
  		<!-- fullcalendar 언어 CDN -->
  		<script src='https://cdn.jsdelivr.net/npm/fullcalendar@5.8.0/locales-all.min.js'></script>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:300,400,500,600,700,800,900&display=swap"
        rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Lato:400,700,900&display=swap" rel="stylesheet">

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
    <style>
    
    .imgPadding{
    	padding-left: 10%;
    	padding-right: 10%;
    }
    </style>
</head>

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
            <a href="./index.html">
                <img src="img/logo/kka1.png" alt="">
            </a>
        </div>
        <div id="mobile-menu-wrap"></div>
        <div class="om-widget">
            <%if(memberInfo!=null){
            	out.print("<a href='loginJSP.jsp' class='hw-btn'><img src='img/logo/loginOff.png' id='loginBtn'></a>");
            }else{
            	out.print("<a href='loginJSP.jsp' class='hw-btn'><img src='img/logo/logoutOff.png' id='logoutBtn'></a>");
            }%>
            
        </div>
       
    </div>
    <!-- Offcanvas Menu Wrapper End -->

    <!-- 헤드 시작 -->
    <header class="header-section">
    	<div style="background-image: url('img/mainTopBig.png'); width:2000px; height:225px;">
        	<div class="hs-top" style="margin-top:10px; border-bottom: 0px; height:225px;">
            	<div class="container">
                	<div class="ten" style="padding:3%">
                        <div class="logo">
                        	<a href="./mainPageJSP.jsp"><img src="img/logo/mainLogo.png"></a>
						</div>
                        <nav class="nav-menu" style="margin-top:5%;">
                            <%if(memberInfo==null){
            	out.print("<a href='./LoginJSP.jsp' style='margin-left:90%;' id='loginBtn'><img src='img/logo/loginOff.png' width='180px' height='32px' style='margin:1%'></a>");
            }else if(memberInfo!=null){
            	out.print("<a href='./LogoutJSP.jsp' style='margin-left:95%;' id='logoutBtn'><img src='img/logo/logoutOff.png' width='110px' height='32px' style='margin:1%'></a>");
            }%>
                            <ul style="text-align:center; margin-left:7%;">
                                <li class="active" style="font-size : 10px">
                                	<a href="./mainPageJSP.jsp" style="color:#ffffff;">메인</a>
                                	</li>
                                		<li><a href="#" style="color:#ffffff;">마이페이지</a>
                                    		<ul class="dropdown" style="display:inline-block; width:150px;">
                                        		<li style="margin-right:40%"><a href="./mypageProfileJSP.jsp">내정보</a></li>
                                        		<li style="margin-right:10%"><a href="./mypageContestJSP.jsp">지원한 공모전</a></li>
                                        		<li style="margin-right:38%"><a href="./mypageTeamJSP.jsp">나의 팀</a></li>
                                        		<li style="margin-right:40%"><a href="./mypageMessageJSP.jsp">쪽지함</a></li>
                                   			</ul>
                                		</li>
                                	<li><a href="./ContestBoardJSP.jsp" style="color:#ffffff;">공모전</a></li>
                                	<li><a href="./teamBoardJSP.jsp" style="color:#ffffff;">팀원모집</a></li>
                            </ul>
                        </nav>
                    	</div>
                    </div>
                <div>
            	
             	</div>
            </div>
            </div>
            <div class="canvas-open">
            <span class="icon_menu"></span>
            </div>
            	<div style="padding:3%; background-color: #4169E1; box-shadow: 1px 1px gray; width: 2000px">
                    <div class="pcntSearchText" style="margin-left:33%; height :40px; width : 600px;border:2px solid #1b5ac2; background : #ffffff;">
                    	<input class = "textBar" type="text" placeholder="원하는 공모전 검색!" 
                    	style="font-size : 16px; width : 500px; height:100%; padding : 10px; border : 0px; outline : none;">
                    	<button class="searchBtn" style="width :50px;height :100%;border:0px;background : #1b5ac2; outline:none;float:right; color : #ffffff">검색</button>
             		</div>
                </div>
    	</header>
    <!-- 헤드 끝 -->

    <!-- Hero Section Begin -->
    <section class="hero-section" style ="width : 1100px; height : 700px;
    	 margin : 10px 0px 0px 440px; position: relative;">
        <div class="container" style = "width :650px;">
            <div class="hs-slider owl-carousel">
                <div class="hs-item set-bg">
                   	<a href="#"><img src="<%=contest100.getConPostBig()%>"></a>
                </div>
                <div class="hs-item set-bg">
                	<a href="#"><img src="<%=contest90.getConPostBig()%>"></a>
                <div class="row">
                </div>
                </div>
                <div class="hs-item set-bg">
                	<a href="#"><img src="<%=contest50.getConPostBig()%>"></a>
                </div>
            </div>
        </div>
    </section>
    <!-- Hero Section End -->

   <!-- calendar Section Begin -->
   	<div class="calbul">
      <div class="cal-left">
      <div class="calendar" style="margin-left:430px;margin-top:70px;">
         <div class="section-title" style="margin-left:10px">
            <h5>공모전 일정</h5>
          <!-- calendar 태그 -->
          <div id='calendar-container'style="margin-top: 10px;padding:20px; width : 550px;margin-left:-15px">
          <div id='calendar'></div>
           </div>
           <script>
   (function(){
             $(function(){
               // calendar element 취득
               var calendarEl = $('#calendar')[0];
               // full-calendar 생성하기
               var calendar = new FullCalendar.Calendar(calendarEl, {
                 height: '495px', // calendar 높이 설정
                 expandRows: true, // 화면에 맞게 높이 재설정
                 slotMinTime: '08:00', // Day 캘린더에서 시작 시간
                 slotMaxTime: '20:00', // Day 캘린더에서 종료 시간
                 // 해더에 표시할 툴바
                 headerToolbar: {
                   left: 'prev,next today',
                   center: 'title',
                   right: 'dayGridMonth,timeGridWeek,timeGridDay,listWeek'
                 },
              initialView: 'dayGridMonth', // 초기 로드 될때 보이는 캘린더 화면(기본 설정: 달)
                 initialDate: '2021-10-22', // 초기 날짜 설정 (설정하지 않으면 오늘 날짜가 보인다.)
                 navLinks: true, // 날짜를 선택하면 Day 캘린더나 Week 캘린더로 링크
                 editable: true, // 수정 가능?
                 selectable: true, // 달력 일자 드래그 설정가능
                 nowIndicator: true, // 현재 시간 마크
                 dayMaxEvents: true, // 이벤트가 오버되면 높이 제한 (+ 몇 개식으로 표현)
                 locale: 'ko', // 한국어 설정
                 eventAdd: function(obj) { // 이벤트가 추가되면 발생하는 이벤트
                   console.log(obj);
                 },
                 eventChange: function(obj) { // 이벤트가 수정되면 발생하는 이벤트
                   console.log(obj);
                 },
                 eventRemove: function(obj){ // 이벤트가 삭제되면 발생하는 이벤트
                   console.log(obj);
                 },
                 select: function(arg) { // 캘린더에서 드래그로 이벤트를 생성할 수 있다.
                   var title = prompt('Event Title:');
                   if (title) {
                     calendar.addEvent({
                       title: title,
                       start: arg.start,
                       end: arg.end,
                       allDay: arg.allDay
                     })
                   }
                   calendar.unselect()
                 },
                 // 이벤트 
                 
        // 
        events: [
          
        ]
      });

       // 여기서 이벤트 추가

      		<%for(int i = 0; i < conArr.size(); i++){ %>
      			     calendar.addEvent({
				         title: '<%= conArr.get(i).getConName() %>',
				         start: '<%= conArr.get(i).getConFromDate() %>',
				         end: '<%= conArr.get(i).getConToDate() %>'
			       })
      			
      		<% }  %>
 
      // 캘린더 랜더링
      calendar.render();
    });
  	
             
   
   })();
   
   
</script>
				</div>
			    <div id='calendar-container'>
			    <div id='calendar'></div>
			  	</div>
		</div>
		</div>
	<div class="cal-right">
		<div class="moim">
			<div class="section-title" style="margin-left : -80px">
				<h5>불타는 모임</h5>
			</div>
 
 <section class="agent-section spad">
        <div class="container" style="margin-left:-90px ;margin-top : -110px">
            <div class="as-slider owl-carousel">
                <div class="row">
                    <div class="as-item1">
                        <div class="as-item">
                            <div class="as-pic">
                                <img src="img/hero/gong1.jpg" alt="">
                            </div>
                            <div class="as-text" >
                                <div class="at-title">
                                    <h6></h6>
                                  
                                </div>
                                <ul>
                                    <li>제목 <span>215</span></li>
                                    <li>팀장 <span>0</span></li>
                                    <li>팀 인원 <span>1/4</span></li>
                                </ul>
                                <a href="#" class="primary-btn">지원하기</a>
                            </div>
                        </div>
                    </div>
 <div class="as-item2">
                        <div class="as-item">
                            <div class="as-pic">
                                <img src="img/hero/gong2.jpg" alt="">
                            </div>
                            <div class="as-text" >
                                <div class="at-title">
                                    <h6></h6>
                                  
                                </div>
                                <ul>
                                    <li>Property <span>215</span></li>
                                    <li>팀장 <span>닉네임</span></li>
                                    <li>팀 인원 <span>2/4</span></li>
                                </ul>
                                <a href="#" class="primary-btn">지원하기</a>
                            </div>
                        </div>
                    </div>
 <div class="as-item3">
                        <div class="as-item">
                            <div class="as-pic">
                                <img src="img/hero/gong3.jpg" alt="">
                            </div>
                            <div class="as-text">
                                <div class="at-title">
                                    <h6></h6>
                                  
                                </div>
                                <ul>
                                    <li>Property <span>215</span></li>
                                    <li>팀장 <span>닉네임</span></li>
                                    <li>팀 인원 <span>3/4</span></li>
                                </ul>
                                <a href="#" class="primary-btn">지원하기</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>	

		</div>
	</div>
</div>

	

  	
<!-- calendar Section End -->

 <!-- Team Section Begin -->
    <section class="team-section spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-md-8">
                    <div class="section-title" style="margin-left : 60px">
                        <h4>이달의 랭킹</h4>
                    </div>
                </div>
                
            </div>
            <div class="row" style="margin-left : 50px">
                <div class="col-md-4">
                    <div class="ts-item">
                        <div class="ts-text">
                            <img src="img/tiger/ho1.png" alt="">
                            <h5>닉네임</h5>
                            <span>인사말</span>
                            <span>평점</span>
                            <p>공모전 수상 내역</p>
                            
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="ts-item">
                        <div class="ts-text">
                            <img src="img/tiger/ho2.png" alt="">
                             <h5>닉네임</h5>
                            <span>인사말</span>
                            <span>평점</span>
                            <p>공모전 수상 내역</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="ts-item">
                        <div class="ts-text">
                            <img src="img/tiger/ho3.png" alt="">
                             <h5>닉네임</h5>
                            <span>인사말</span>
                            <span>평점</span>
                            <p>공모전 수상 내역</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Team Section End -->



    <!-- Footer Section Begin -->
    <footer class="footer-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-6">
                    <div class="fs-about">
                        <div class="fs-logo">
                            <a href="#">
                                <img src="img/f-logo.png" alt="">
                            </a>
                        </div>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
                            labore et dolore magna aliqua ut aliquip ex ea</p>
                        <div class="fs-social">
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-youtube-play"></i></a>
                            <a href="#"><i class="fa fa-instagram"></i></a>
                            <a href="#"><i class="fa fa-pinterest-p"></i></a>
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
                <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
            </div>
        </div>
    </footer>
    <!-- Footer Section End -->
    
    <script>
    //로그인,회원가입 버튼 메소드
    $(function(){
    	$("#loginBtn img").mouseover(function(){
    		$(this).attr("src","img/logo/loginOn.png");
    	});
    	$("#loginBtn img").mouseout(function(){
    		$(this).attr("src","img/logo/loginOff.png");
    	});
    });
    
    //로그아웃 버튼 메소드
    $(function(){
    	$("#logoutBtn img").mouseover(function(){
    		$(this).attr("src","img/logo/logoutOn.png");
    	});
    	$("#logoutBtn img").mouseout(function(){
    		$(this).attr("src","img/logo/logoutOff.png");
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