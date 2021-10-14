<%@page import="com.model.memberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="zxx">
<% memberVO memberInfo=(memberVO)session.getAttribute("loginMemberSession"); %>
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
        <div class="hs-top">
            <div class="container">
                <div class="ten">
                        <div class="logo">
                        	<a href="./index.html"><img src="img/logo/kka1.png" alt=""></a>
						</div>
                        <nav class="nav-menu">
                            <ul style="text-align:center; margin-left:15%;"><!-- 인라인 속성으로 변한 li들을 텍스트로 인식해 중앙정렬 하게 만들어 줌. -->
                                <li class="active" style="font-size : 10px">
                                	<a href="./index.html">메인</a>
                                	</li>
                                		<li><a href="#">마이페이지</a>
                                    		<ul class="dropdown" style="display:inline-block; width:150px;">
                                        		<li style="margin-right:40%"><a href="./mypageProfileJSP.jsp">내정보</a></li>
                                        		<li style="margin-right:10%"><a href="./mypageContestJSP.jsp">지원한 공모전</a></li>
                                        		<li style="margin-right:38%"><a href="./mypageTeamJSP.jsp">나의 팀</a></li>
                                        		<li style="margin-right:40%"><a href="./mypageMessageJSP.jsp">쪽지함</a></li>
                                   			</ul>
                                		</li>
                                	<li><a href="./agents.html">공모전</a></li>
                                	<li><a href="./about.html">팀원모집</a></li>
                            </ul>
                        </nav>
                    </div>
                <div>
            	<%if(memberInfo==null){
            	out.print("<a href='./LoginJSP.jsp' style='margin-left:85%;' id='loginBtn'><img src='img/logo/loginOff.png' width='180px' height='32px' style='margin:1%'></a>");
            }else if(memberInfo!=null){
            	out.print("<a href='./LogoutJSP.jsp' style='margin-left:90%;' id='logoutBtn'><img src='img/logo/logoutOff.png' width='110px' height='32px' style='margin:1%'></a>");
            }%>
             	</div>
            </div>
            </div>
            <div class="canvas-open">
            <span class="icon_menu"></span>
            </div>

        	<div class="hs-nav" style="border-bottom: 2px solid #c0c0c0;">
            	<div class="container">
                    <div class="pcntSearchText" style="margin:5%; margin-left:26%; height :40px; width : 600px;border:2px solid #1b5ac2; background : #ffffff;"">
                    	<input class = "textBar" type="text" placeholder="원하는 공모전 검색!" 
                    	style="font-size : 16px; width : 500px;height:100%; padding : 10px; border : 0px; outline : none; float : left;">
                    	<button class="searchBtn" style="width :50px;height :100%;border:0px;background : #1b5ac2; outline:none;float:right; color : #ffffff">검색</button>
             		</div>
                </div>
            </div>
    	</header>
    <!-- 헤드 끝 -->

    <!-- Hero Section Begin -->
    <section class="hero-section" style ="width : 1000px; height : 700px;
    	 margin : 10px 0px 0px 440px; position: relative;" >
        <div class="container" style = "width :650px;  ">
            <div class="hs-slider owl-carousel">
                <div class="hs-item set-bg">
                   <img class = "imgPadding" src="img/hero/gong1.jpg" alt= none; >
                </div>
                <div class="hs-item set-bg">
                	<img class = "imgPadding" src="img/hero/gongmoimg1.jpg" alt= none;>
                    <div class="row">
                        
                    </div>
                </div>
                <div class="hs-item set-bg" >
                	<img class = "imgPadding" src="img/hero/gongmoimg2.jpg" alt= none;>
                    
                </div>
            </div>
        </div>
    </section>
    <!-- Hero Section End -->

    <!-- Search Section Begin -->


   <!-- calendar Section Begin -->
   	<div class="calbul">              
		<div class="cal-left">
		<div class="calendar">
			<div class="section-title" >
				<h5>공모전 일정</h5>
			 <!-- calendar 태그 -->
			 <div id='calendar-container'style="margin-top: 20px;padding:30px; width : 800px;">
			 <div id='calendar'></div>
			  </div>
			  <script>
			  (function(){
			    $(function(){
			      // calendar element 취득
			      var calendarEl = $('#calendar')[0];
			      // full-calendar 생성하기
			      var calendar = new FullCalendar.Calendar(calendarEl, {
			        height: '550px', // calendar 높이 설정
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
			        initialDate: '2021-07-15', // 초기 날짜 설정 (설정하지 않으면 오늘 날짜가 보인다.)
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
			        events: [
			          {
			            title: 'All Day Event',
			            start: '2021-07-01',
			          },
			          {
			            title: 'Long Event',
			            start: '2021-07-07',
			            end: '2021-07-10'
			          },
			          {
			            groupId: 999,
			            title: 'Repeating Event',
			            start: '2021-07-09T16:00:00'
			          },
			          {
			            groupId: 999,
			            title: 'Repeating Event',
			            start: '2021-07-16T16:00:00'
			          },
			          {
			            title: 'Conference',
			            start: '2021-07-11',
			            end: '2021-07-13'
			          },
			          {
			            title: 'Meeting',
			            start: '2021-07-12T10:30:00',
			            end: '2021-07-12T12:30:00'
			          },
			          {
			            title: 'Lunch',
			            start: '2021-07-12T12:00:00'
			          },
			          {
			            title: 'Meeting',
			            start: '2021-07-12T14:30:00'
			          },
			          {
			            title: 'Happy Hour',
			            start: '2021-07-12T17:30:00'
			          },
			          {
			            title: 'Dinner',
			            start: '2021-07-12T20:00:00'
			          },
			          {
			            title: 'Birthday Party',
			            start: '2021-07-13T07:00:00'
			          },
			          {
			            title: 'Click for Google',
			            url: 'http://google.com/', // 클릭시 해당 url로 이동
			            start: '2021-07-28'
			          }
			        ]
			      });
			      // 캘린더 랜더링
			      calendar.render();
			    });
			  })();
			</script>
				</div>
			    <div id='calendar-container'>
			    <div id='calendar'></div>
			  	</div>
			  	<script>
			  	</script>
		</div>
		</div>
	<div class="cal-right">
		<div class="moim">
			<div class="section-title">
				<h5>불타는 모임</h5>
			</div>
 <section class="agent-section spad">
        <div class="container" style="margin-left:-75px ;margin-top : -110px">
            <div class="as-slider owl-carousel">
                <div class="row">
                    <div class="col-lg-4 col-md-6">
                        <div class="as-item">
                            <div class="as-pic">
                                <img src="img/hero/gong1.jpg" alt="">
                            </div>
                            <div class="as-text" >
                                <div class="at-title">
                                    <h6></h6>
                                  
                                </div>
                                <ul>
                                    <li>Property <span>215</span></li>
                                    <li>팀장 <span>닉네임</span></li>
                                    <li>팀 인원 <span>1/4</span></li>
                                </ul>
                                <a href="#" class="primary-btn">지원하기</a>
                            </div>
                        </div>
                    </div>
 <div class="col-lg-4 col-md-6">
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
 <div class="col-lg-4 col-md-6">
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

    <!-- Property Section Begin -->
    <section class="property-section latest-property-section spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-5">
                    <div class="section-title">
                        <h4>Latest PROPERTY</h4>
                    </div>
                </div>
                <div class="col-lg-7">
                    <div class="property-controls">
                        <ul>
                            <li data-filter="all">All</li>
                            <li data-filter=".apart">Apartment</li>
                            <li data-filter=".house">House</li>
                            <li data-filter=".office">Office</li>
                            <li data-filter=".hotel">Hotel</li>
                            <li data-filter=".restaurent">Restaurent</li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="row property-filter">
                <div class="col-lg-4 col-md-6 mix all house">
                    <div class="property-item">
                        <div class="pi-pic set-bg" data-setbg="img/property/property-1.jpg">
                            <div class="label">For rent</div>
                        </div>
                        <div class="pi-text">
                            <a href="#" class="heart-icon"><span class="icon_heart_alt"></span></a>
                            <div class="pt-price">$ 289.0<span>/month</span></div>
                            <h5><a href="#">Home in Merrick Way</a></h5>
                            <p><span class="icon_pin_alt"></span> 3 Middle Winchendon Rd, Rindge, NH 03461</p>
                            <ul>
                                <li><i class="fa fa-object-group"></i> 2, 283</li>
                                <li><i class="fa fa-bathtub"></i> 03</li>
                                <li><i class="fa fa-bed"></i> 05</li>
                                <li><i class="fa fa-automobile"></i> 01</li>
                            </ul>
                            <div class="pi-agent">
                                <div class="pa-item">
                                    <div class="pa-info">
                                        <img src="img/property/posted-by/pb-1.jpg" alt="">
                                        <h6>Ashton Kutcher</h6>
                                    </div>
                                    <div class="pa-text">
                                        123-455-688
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 mix all restaurent hotel">
                    <div class="property-item">
                        <div class="pi-pic set-bg" data-setbg="img/property/property-2.jpg">
                            <div class="label c-red">For rent</div>
                        </div>
                        <div class="pi-text">
                            <a href="#" class="heart-icon"><span class="icon_heart_alt"></span></a>
                            <div class="pt-price">$ 289.0</div>
                            <h5><a href="#">Unimont Aurum</a></h5>
                            <p><span class="icon_pin_alt"></span> Gut No.102, Opp. HP Petrol Pump, Karjat</p>
                            <ul>
                                <li><i class="fa fa-object-group"></i> 2, 283</li>
                                <li><i class="fa fa-bathtub"></i> 03</li>
                                <li><i class="fa fa-bed"></i> 05</li>
                                <li><i class="fa fa-automobile"></i> 01</li>
                            </ul>
                            <div class="pi-agent">
                                <div class="pa-item">
                                    <div class="pa-info">
                                        <img src="img/property/posted-by/pb-1.jpg" alt="">
                                        <h6>Ashton Kutcher</h6>
                                    </div>
                                    <div class="pa-text">
                                        123-455-688
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 mix all apart office">
                    <div class="property-item">
                        <div class="pi-pic set-bg" data-setbg="img/property/property-2.jpg">
                            <div class="label c-red">For rent</div>
                        </div>
                        <div class="pi-text">
                            <a href="#" class="heart-icon"><span class="icon_heart_alt"></span></a>
                            <div class="pt-price">$ 289.0</div>
                            <h5><a href="#">Vrindavan Flora</a></h5>
                            <p><span class="icon_pin_alt"></span> No. 15, 16, 17-1A And 17-2, Rasayani, Rasayani</p>
                            <ul>
                                <li><i class="fa fa-object-group"></i> 2, 283</li>
                                <li><i class="fa fa-bathtub"></i> 03</li>
                                <li><i class="fa fa-bed"></i> 05</li>
                                <li><i class="fa fa-automobile"></i> 01</li>
                            </ul>
                            <div class="pi-agent">
                                <div class="pa-item">
                                    <div class="pa-info">
                                        <img src="img/property/posted-by/pb-1.jpg" alt="">
                                        <h6>Ashton Kutcher</h6>
                                    </div>
                                    <div class="pa-text">
                                        123-455-688
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 mix all hotel restaruent">
                    <div class="property-item">
                        <div class="pi-pic set-bg" data-setbg="img/property/property-4.jpg">
                            <div class="label c-red">For rent</div>
                        </div>
                        <div class="pi-text">
                            <a href="#" class="heart-icon"><span class="icon_heart_alt"></span></a>
                            <div class="pt-price">$ 289.0</div>
                            <h5><a href="#">Shramik Vaibhav</a></h5>
                            <p><span class="icon_pin_alt"></span> 12 Pt at Shedung, Panvel, Raigarh, Navi Mumbai</p>
                            <ul>
                                <li><i class="fa fa-object-group"></i> 2, 283</li>
                                <li><i class="fa fa-bathtub"></i> 03</li>
                                <li><i class="fa fa-bed"></i> 05</li>
                                <li><i class="fa fa-automobile"></i> 01</li>
                            </ul>
                            <div class="pi-agent">
                                <div class="pa-item">
                                    <div class="pa-info">
                                        <img src="img/property/posted-by/pb-1.jpg" alt="">
                                        <h6>Ashton Kutcher</h6>
                                    </div>
                                    <div class="pa-text">
                                        123-455-688
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 mix all office hotel">
                    <div class="property-item">
                        <div class="pi-pic set-bg" data-setbg="img/property/property-5.jpg">
                            <div class="label c-magenta">For rent</div>
                        </div>
                        <div class="pi-text">
                            <a href="#" class="heart-icon"><span class="icon_heart_alt"></span></a>
                            <div class="pt-price">$ 289.0</div>
                            <h5><a href="#">Poddar Wondercity</a></h5>
                            <p><span class="icon_pin_alt"></span> Badlapur East, Beyond Thane</p>
                            <ul>
                                <li><i class="fa fa-object-group"></i> 2, 283</li>
                                <li><i class="fa fa-bathtub"></i> 03</li>
                                <li><i class="fa fa-bed"></i> 05</li>
                                <li><i class="fa fa-automobile"></i> 01</li>
                            </ul>
                            <div class="pi-agent">
                                <div class="pa-item">
                                    <div class="pa-info">
                                        <img src="img/property/posted-by/pb-1.jpg" alt="">
                                        <h6>Ashton Kutcher</h6>
                                    </div>
                                    <div class="pa-text">
                                        123-455-688
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 mix house apart office">
                    <div class="property-item">
                        <div class="pi-pic set-bg" data-setbg="img/property/property-6.jpg">
                            <div class="label">For rent</div>
                        </div>
                        <div class="pi-text">
                            <a href="#" class="heart-icon"><span class="icon_heart_alt"></span></a>
                            <div class="pt-price">$ 289.0<span>/month</span></div>
                            <h5><a href="#">GoldCrest Residency</a></h5>
                            <p><span class="icon_pin_alt"></span> No.7, Sector- 11, Ghansoli, Mumbai, Navi Mumbai</p>
                            <ul>
                                <li><i class="fa fa-object-group"></i> 2, 283</li>
                                <li><i class="fa fa-bathtub"></i> 03</li>
                                <li><i class="fa fa-bed"></i> 05</li>
                                <li><i class="fa fa-automobile"></i> 01</li>
                            </ul>
                            <div class="pi-agent">
                                <div class="pa-item">
                                    <div class="pa-info">
                                        <img src="img/property/posted-by/pb-1.jpg" alt="">
                                        <h6>Ashton Kutcher</h6>
                                    </div>
                                    <div class="pa-text">
                                        123-455-688
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Property Section End -->

    <!-- Chooseus Section Begin -->
    <section class="chooseus-section spad set-bg" data-setbg="img/chooseus/chooseus-bg.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <div class="chooseus-text">
                        <div class="section-title">
                            <h4>Why choose us</h4>
                        </div>
                        <p>Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown
                            printer took a galley of type and scrambled it to make a type specimen book.</p>
                    </div>
                    <div class="chooseus-features">
                        <div class="cf-item">
                            <div class="cf-pic">
                                <img src="img/chooseus/chooseus-icon-1.png" alt="">
                            </div>
                            <div class="cf-text">
                                <h5>Find your future home</h5>
                                <p>We help you find a new home by offering a smart real estate.</p>
                            </div>
                        </div>
                        <div class="cf-item">
                            <div class="cf-pic">
                                <img src="img/chooseus/chooseus-icon-2.png" alt="">
                            </div>
                            <div class="cf-text">
                                <h5>Buy or rent homes</h5>
                                <p>Millions of houses and apartments in your favourite cities</p>
                            </div>
                        </div>
                        <div class="cf-item">
                            <div class="cf-pic">
                                <img src="img/chooseus/chooseus-icon-3.png" alt="">
                            </div>
                            <div class="cf-text">
                                <h5>Experienced agents</h5>
                                <p>Find an agent who knows your market best</p>
                            </div>
                        </div>
                        <div class="cf-item">
                            <div class="cf-pic">
                                <img src="img/chooseus/chooseus-icon-4.png" alt="">
                            </div>
                            <div class="cf-text">
                                <h5>List your own property</h5>
                                <p>Sign up now and sell or rent your own properties</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Chooseus Section End -->

    <!-- Feature Property Section Begin -->
    <section class="feature-property-section spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 p-0">
                    <div class="feature-property-left">
                        <div class="section-title">
                            <h4>Feature PROPERTY</h4>
                        </div>
                        <ul>
                            <li>Apartment</li>
                            <li>House</li>
                            <li>Office</li>
                            <li>Hotel</li>
                            <li>Villa</li>
                            <li>Restaurent</li>
                        </ul>
                        <a href="#">View all property</a>
                    </div>
                </div>
                <div class="col-lg-8 p-0">
                    <div class="fp-slider owl-carousel">
                        <div class="fp-item set-bg" data-setbg="img/feature-property/fp-1.jpg">
                            <div class="fp-text">
                                <h5 class="title">Home in Merrick Way</h5>
                                <p><span class="icon_pin_alt"></span> 3 Middle Winchendon Rd, Rindge, NH 03461</p>
                                <div class="label">For Rent</div>
                                <h5>$ 289.0<span>/month</span></h5>
                                <ul>
                                    <li><i class="fa fa-object-group"></i> 2, 283</li>
                                    <li><i class="fa fa-bathtub"></i> 03</li>
                                    <li><i class="fa fa-bed"></i> 05</li>
                                    <li><i class="fa fa-automobile"></i> 01</li>
                                </ul>
                            </div>
                        </div>
                        <div class="fp-item set-bg" data-setbg="img/feature-property/fp-2.jpg">
                            <div class="fp-text">
                                <h5 class="title">Home in Merrick Way</h5>
                                <p><span class="icon_pin_alt"></span> 3 Middle Winchendon Rd, Rindge, NH 03461</p>
                                <div class="label">For Rent</div>
                                <h5>$ 289.0<span>/month</span></h5>
                                <ul>
                                    <li><i class="fa fa-object-group"></i> 2, 283</li>
                                    <li><i class="fa fa-bathtub"></i> 03</li>
                                    <li><i class="fa fa-bed"></i> 05</li>
                                    <li><i class="fa fa-automobile"></i> 01</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Feature Property Section End -->

    <!-- Team Section Begin -->
    <section class="team-section spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-md-8">
                    <div class="section-title">
                        <h4>Latest Property</h4>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4">
                    <div class="team-btn">
                        <a href="#"><i class="fa fa-user"></i> ALL counselor</a>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <div class="ts-item">
                        <div class="ts-text">
                            <img src="img/team/team-1.jpg" alt="">
                            <h5>Ashton Kutcher</h5>
                            <span>123-455-688</span>
                            <p>Ipsum dolor amet, consectetur adipiscing elit, eiusmod tempor incididunt lorem.</p>
                            <div class="ts-social">
                                <a href="#"><i class="fa fa-facebook"></i></a>
                                <a href="#"><i class="fa fa-twitter"></i></a>
                                <a href="#"><i class="fa fa-envelope-o"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="ts-item">
                        <div class="ts-text">
                            <img src="img/team/team-2.jpg" alt="">
                            <h5>Ashton Kutcher</h5>
                            <span>123-455-688</span>
                            <p>Ipsum dolor amet, consectetur adipiscing elit, eiusmod tempor incididunt lorem.</p>
                            <div class="ts-social">
                                <a href="#"><i class="fa fa-facebook"></i></a>
                                <a href="#"><i class="fa fa-twitter"></i></a>
                                <a href="#"><i class="fa fa-envelope-o"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="ts-item">
                        <div class="ts-text">
                            <img src="img/team/team-3.jpg" alt="">
                            <h5>Ashton Kutcher</h5>
                            <span>123-455-688</span>
                            <p>Ipsum dolor amet, consectetur adipiscing elit, eiusmod tempor incididunt lorem.</p>
                            <div class="ts-social">
                                <a href="#"><i class="fa fa-facebook"></i></a>
                                <a href="#"><i class="fa fa-twitter"></i></a>
                                <a href="#"><i class="fa fa-envelope-o"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Team Section End -->

    <!-- Categories Section Begin -->
    <section class="categories-section">
        <div class="cs-item-list">
            <div class="cs-item set-bg" data-setbg="img/categories/cat-1.jpg">
                <div class="cs-text">
                    <h5>Apartment</h5>
                    <span>230 property</span>
                </div>
            </div>
            <div class="cs-item set-bg" data-setbg="img/categories/cat-2.jpg">
                <div class="cs-text">
                    <h5>Villa</h5>
                    <span>230 property</span>
                </div>
            </div>
            <div class="cs-item set-bg" data-setbg="img/categories/cat-3.jpg">
                <div class="cs-text">
                    <h5>House</h5>
                    <span>230 property</span>
                </div>
            </div>
            <div class="cs-item set-bg" data-setbg="img/categories/cat-4.jpg">
                <div class="cs-text">
                    <h5>Restaurent</h5>
                    <span>230 property</span>
                </div>
            </div>
            <div class="cs-item set-bg" data-setbg="img/categories/cat-5.jpg">
                <div class="cs-text">
                    <h5>Office</h5>
                    <span>230 property</span>
                </div>
            </div>
        </div>
    </section>
    <!-- Categories Section End -->

    <!-- Testimonial Section Begin -->
    <section class="testimonial-section spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <h4>What our client says?</h4>
                    </div>
                </div>
            </div>
            <div class="row testimonial-slider owl-carousel">
                <div class="col-lg-6">
                    <div class="testimonial-item">
                        <div class="ti-text">
                            <p>Lorem ipsum dolor amet, consectetur adipiscing elit, seiusmod tempor incididunt ut labore
                                magna aliqua. Quis ipsum suspendisse ultrices gravida accumsan lacus vel facilisis.</p>
                        </div>
                        <div class="ti-author">
                            <div class="ta-pic">
                                <img src="img/testimonial-author/ta-1.jpg" alt="">
                            </div>
                            <div class="ta-text">
                                <h5>Arise Naieh</h5>
                                <span>Designer</span>
                                <div class="ta-rating">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="testimonial-item">
                        <div class="ti-text">
                            <p>Lorem ipsum dolor amet, consectetur adipiscing elit, seiusmod tempor incididunt ut labore
                                magna aliqua. Quis ipsum suspendisse ultrices gravida accumsan lacus vel facilisis.</p>
                        </div>
                        <div class="ti-author">
                            <div class="ta-pic">
                                <img src="img/testimonial-author/ta-2.jpg" alt="">
                            </div>
                            <div class="ta-text">
                                <h5>Arise Naieh</h5>
                                <span>Designer</span>
                                <div class="ta-rating">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="testimonial-item">
                        <div class="ti-text">
                            <p>Lorem ipsum dolor amet, consectetur adipiscing elit, seiusmod tempor incididunt ut labore
                                magna aliqua. Quis ipsum suspendisse ultrices gravida accumsan lacus vel facilisis.</p>
                        </div>
                        <div class="ti-author">
                            <div class="ta-pic">
                                <img src="img/testimonial-author/ta-1.jpg" alt="">
                            </div>
                            <div class="ta-text">
                                <h5>Arise Naieh</h5>
                                <span>Designer</span>
                                <div class="ta-rating">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Testimonial Section End -->

    <!-- Logo Carousel Begin -->
    <div class="logo-carousel">
        <div class="container">
            <div class="lc-slider owl-carousel">
                <a href="#" class="lc-item">
                    <div class="lc-item-inner">
                        <img src="img/logo-carousel/lc-1.png" alt="">
                    </div>
                </a>
                <a href="#" class="lc-item">
                    <div class="lc-item-inner">
                        <img src="img/logo-carousel/lc-2.png" alt="">
                    </div>
                </a>
                <a href="#" class="lc-item">
                    <div class="lc-item-inner">
                        <img src="img/logo-carousel/lc-3.png" alt="">
                    </div>
                </a>
                <a href="#" class="lc-item">
                    <div class="lc-item-inner">
                        <img src="img/logo-carousel/lc-4.png" alt="">
                    </div>
                </a>
                <a href="#" class="lc-item">
                    <div class="lc-item-inner">
                        <img src="img/logo-carousel/lc-5.png" alt="">
                    </div>
                </a>
                <a href="#" class="lc-item">
                    <div class="lc-item-inner">
                        <img src="img/logo-carousel/lc-6.png" alt="">
                    </div>
                </a>
            </div>
        </div>
    </div>
    <!-- Logo Carousel End -->

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
                                <p>160 Pennsylvania Ave NW, Washington, Castle, PA 16101-5161</p>
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
                height="450" style="border:0;" allowfullscreen=""></iframe>
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