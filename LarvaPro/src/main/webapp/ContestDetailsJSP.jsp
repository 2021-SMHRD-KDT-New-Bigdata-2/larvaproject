<%@page import="com.model.conDetailVO"%>
<%@page import="com.model.memberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="zxx">
<% memberVO memberInfo=(memberVO)session.getAttribute("loginMemberSession");%>
<% conDetailVO con=new conDetailVO(); %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js">
</script>
<head>
    <meta charset="UTF-8">
    <meta name="description" content="Aler Template">
    <meta name="keywords" content="Aler, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Aler | Template</title>

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
                <img src="img/logo.png" alt="">
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
            <a href="#"><i class="fa fa-facebook"></i></a>
            <a href="#"><i class="fa fa-twitter"></i></a>
            <a href="#"><i class="fa fa-youtube-play"></i></a>
            <a href="#"><i class="fa fa-instagram"></i></a>
            <a href="#"><i class="fa fa-pinterest-p"></i></a>
        </div>
    </div>
    <!-- Offcanvas Menu Wrapper End -->

    <!-- ��� ���� -->
    <header class="header-section">
    	<div style="background-image: url('img/mainTopBig.png'); width:2000px; height:225px;">
        	<div class="hs-top" style="margin-top:10px; border-bottom: 0px; height:225px;">
            	<div class="container">
                	<div class="ten" style="padding:3%">
                        <div class="logo">
                        	<a href="./mainPageJSP.jsp"><img src="img/logo/mainLogo.png" style="witdh:162px; height:102px"></a>
						</div>
                        <nav class="nav-menu" style="margin-top:5%;">
                            <%if(memberInfo==null){
            	out.print("<a href='./LoginJSP.jsp' style='margin-left:90%;' id='loginBtn'><img src='img/logo/loginOff.png' width='180px' height='32px' style='margin:1%'></a>");
            }else if(memberInfo!=null){
            	out.print("<a href='./LogoutJSP.jsp' style='margin-left:95%;' id='logoutBtn'><img src='img/logo/logoutOff.png' width='110px' height='32px' style='margin:1%'></a>");
            }%>
                            <ul style="text-align:center; margin-left:7%;">
                                <li class="active" style="font-size : 10px">
                                	<a href="./mainPageJSP.jsp" style="color:#ffffff;">����</a>
                                	</li>
                                		<li><a href="#" style="color:#ffffff;">����������</a>
                                    		<ul class="dropdown" style="display:inline-block; width:150px;">
                                        		<li style="margin-right:40%"><a href="./mypageProfileJSP.jsp">������</a></li>
                                        		<li style="margin-right:10%"><a href="./mypageContestJSP.jsp">������ ������</a></li>
                                        		<li style="margin-right:38%"><a href="./mypageTeamJSP.jsp">���� ��</a></li>
                                        		<li style="margin-right:40%"><a href="./mypageMessageJSP.jsp">������</a></li>
                                   			</ul>
                                		</li>
                                	<li><a href="./ContestBoardJSP.jsp" style="color:#ffffff;">������</a></li>
                                	<li><a href="./teamBoardJSP.jsp" style="color:#ffffff;">��������</a></li>
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
                    	<input class = "textBar" type="text" placeholder="���ϴ� ������ �˻�!" 
                    	style="font-size : 16px; width : 500px; height:100%; padding : 10px; border : 0px; outline : none;">
                    	<button class="searchBtn" style="width :50px;height :100%;border:0px;background : #1b5ac2; outline:none;float:right; color : #ffffff">�˻�</button>
             		</div>
                </div>
    	</header>
    <!-- ��� �� -->
    

    <!-- Blog Details Section Begin -->
    
    
    <section class="blog-details-section spad">
    	<div><h3 class="fw-bolder mb-1" style="margin-left:20%"><b>������ ���Ȱ�� ����</b></h3>
    		<hr style="width:1160px" color=black size=1px>
    	</div>
    		<div class="container mt-5" style="background-color : #F6F6F6; border-radius:10px; margin-top:-10%">
            	<div>
                	<div>
                    <article>
                        <header class="mb-4" style="padding:3%">
                            <div class="section-title" style="padding-top:2%;">
            				<h4><%=con.getConName() %></h4>
              				</div>
                            <a class="badge bg-secondary text-decoration-none link-light" >IT</a>
                            <a class="badge bg-secondary text-decoration-none link-light" >UCC/����</a>
                        </header>
                        <figure class="mb-4" style="float:left; margin-left:5%"><img src="https://www.wevity.com/upload/contest/20211001103134_ddf5bb76.jpg" alt="..." /></figure>
                        <section class="mb-5">
                        	<hr width="350px">
                      			<table class="content" style="margin-left:35%;">
      							<tbody>
        							<tr>
          								<td width = "100" height="50"><b>�о�</b></td><td> Ipsum</td>
     					   			</tr>
        							<tr>
          								<td width = "100" height="50"><b>������</b></td><td>Ipsum</td>
     					   			</tr>
        							<tr>
          								<td width = "100" height="50"><b>����/�ְ�</b><td>Ipsum</td>
     					   			</tr>
      								<tr>
          								<td width = "100" height="50"><b>�Ŀ�/����</b></td><td>Ipsum</td>
     					   			</tr>
        							<tr>
          								<td width = "100" height="50"><b>�����Ⱓ</b></td><td>Ipsum</td>
     					   			</tr>
     					   			<tr>
          								<td width = "100" height="50"><b>�ѻ��</b></td><td>Ipsum</td>
     					   			</tr>
				      			</tbody>
   					 			</table>
   					 			<hr style="width:350px">
   					 		<div class="section-title" style="padding:3%"><h4>�󼼳���</h4></div>
   					 		<div style="margin-left:3%">
   					 		<p class="fs-5 mb-4">2021 �λ�û���ְ� e������ ç���� (īƮŸ�� LOL����)<br>

�� �������� : ���� ���� ������(5�� 1��) / īƮ���̴�(4�� 1��, ���ǵ���)<br>
<br>
�� ������� : �λ꿡 ���� �Ǵ� Ȱ���ϴ� �� 15�� �̻� 34�� ���Ϸ� ������ ��(������ ����)<br>
- ���Ӻ� ������ 16�� : ��û ������ �λ� ����, Ȱ�� �� ���� Ȯ�� ������ ���� Ȯ�� �� ������ ����<br>
<br>
�� ��ȸ�Ⱓ : 2021�� 9�� 24��(��) ~ 10�� 2��(��)<br>
<br>
�� ��ȸ��� : �� ���� �Ǵ� PC ������ ������ ��<br>
<br>
�� ��û�Ⱓ : 2021�� 9�� 16��(��) 20:00 ~ 9�� 22��(��) 15:00 �ذ��Ӻ� ������ 16��<br>
<br>
�� ��û��� : �¶��� ��ȸ ���� �� ���Ӹ�Ī �÷��� ���������� �λ�û���ְ� ��ȸ<br>
- ���� ���� ������<br>
- īƮ���̴�(���ǵ���)<br>
�� ��û ���� �ð��� 9/16(��) 20���Դϴ�. ������ �÷��� ���� �� ���� ������ Ȯ���Ͻ� �� �ֵ��� ��ȸ �������� �̸� ���� ���ҽ��ϴ�.<br>
<br>
�� �û󳻿� �ؿ���� �û��� 10/4(��) 15:00~16:00 û���ְ� ��翡�� ����� ����<br>
- ���� ��� 2�� ���� �λ걤������� ����(���� ���� ������ 1��, īƮ���̴� 1��)<br>
- ������� ����ڽ� ������ �̺�Ʈ ��� ����<br>
<br>
�� ���� : �λ�û���ְ� ��ȹ��<br>
- 051-241-7863<br>
- busanyouthweek@gmail.com<br></p>
               				</div>
                     		<figure>
                     		</figure>
                        </section>
                    </article>
                    
                    <!-- Comments section-->
                    <section class="mb-5">
                        <div class="card bg-light">
                            <div class="card-body">
                                <!-- Comment form-->
                                <form class="mb-4"><textarea class="form-control" rows="3" placeholder="����� �޾��ּ���"></textarea></form>
                                <!-- Comment with nested comments-->
                                <div class="d-flex mb-4">
                                    <!-- Parent comment-->
                                    <div class="flex-shrink-0"><img class="rounded-circle" src="https://dummyimage.com/50x50/ced4da/6c757d.jpg" alt="..." /></div>
                                    <div class="ms-3">
                                        <div class="fw-bold">Commenter Name</div>
                                        If you're going to lead a space frontier, it has to be government; it'll never be private enterprise. Because the space frontier is dangerous, and it's expensive, and it has unquantified risks.
                                        <!-- Child comment 1-->
                                        <div class="d-flex mt-4">
                                            <div class="flex-shrink-0"><img class="rounded-circle" src="https://dummyimage.com/50x50/ced4da/6c757d.jpg" alt="..." /></div>
                                            <div class="ms-3">
                                                <div class="fw-bold">Commenter Name</div>
                                                And under those conditions, you cannot establish a capital-market evaluation of that enterprise. You can't get investors.
                                            </div>
                                        </div>
                                        <!-- Child comment 2-->
                                        <div class="d-flex mt-4">
                                            <div class="flex-shrink-0"><img class="rounded-circle" src="https://dummyimage.com/50x50/ced4da/6c757d.jpg" alt="..." /></div>
                                            <div class="ms-3">
                                                <div class="fw-bold">Commenter Name</div>
                                                When you put money directly to a problem, it makes a good headline.
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- Single comment-->
                                <div class="d-flex">
                                    <div class="flex-shrink-0"><img class="rounded-circle" src="https://dummyimage.com/50x50/ced4da/6c757d.jpg" alt="..." /></div>
                                    <div class="ms-3">
                                        <div class="fw-bold">Commenter Name</div>
                                        When I look at the universe and all the ways the universe wants to kill us, I find it hard to reconcile that with statements of beneficence.
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                </div>
            </div>
        </div>
        <input type="button">
    </section>
    <!-- Contact Section End -->

    <!-- Footer Section Begin -->
    <footer class="footer-section" style="margin-left:5%">
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
    //�α���,ȸ������ ��ư �޼ҵ�
    $(function(){
    	$("#loginBtn img").mouseover(function(){
    		$(this).attr("src","img/logo/loginOn.png");
    	});
    	$("#loginBtn img").mouseout(function(){
    		$(this).attr("src","img/logo/loginOff.png");
    	});
    });
    
    //�α׾ƿ� ��ư �޼ҵ�
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