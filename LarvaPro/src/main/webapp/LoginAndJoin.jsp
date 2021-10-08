<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
* {
	margin: 0;
	padding: 0;
	font-family: sans-serif;
}

.wrap {
	height: 150%;
	width: 100%;
	background-image: url(img/background.jpg);
	background-position: center;
	background-size: cover;
	position: absolute;
}

.form-wrap {
	width: 380px;
	height: 700px;
	position: relative;
	margin: 10% auto;
	background: #fff;
	padding: 5px;
	overflow: hidden;
}

.button-wrap {
	width: 230px;
	margin: 50px auto;
	position: relative;
	box-shadow: 0 0 600px 9px #380daf;
	border-radius: 30px;
}

#loginBtnd {
	padding: 10px 30px;
	cursor: pointer;
	background: transparent;
	border: 0;
	outline: none;
	position: relative;
	color: white;
}

#regBtnd {
	padding: 10px 30px;
	cursor: pointer;
	background: transparent;
	border: 0;
	outline: none;
	position: relative;
	color: black;
	float: right;
}

#btn {
	top: 0;
	left: 0;
	position: absolute;
	width: 110px;
	height: 100%;
	background: linear-gradient(to right, #ac989e, #1a1711);
	border-radius: 30px;
	transition: .5s;
}

.input-group {
	top: 180px;
	position: absolute;
	width: 280px;
	transition: .5s;
}

.input-field {
	width: 100%;
	padding: 10px 0;
	margin: 5px 0;
	border: none;
	border-bottom: 1px solid #999;
	outline: none;
	background: transparent;
}

.bottomSide {
	margin-bottom: 30px;
}

.submit {
	width: 85%;
	padding: 10px 30px;
	cursor: pointer;
	display: block;
	margin: auto;
	background: linear-gradient(to right, #ac989e, #1a1711);
	border: 0;
	outline: none;
	border-radius: 30px;
	color: white;
}

.checkbox {
	margin: 30px 10px 30px 0;
}

span {
	color: #777;
	font-size: 12px;
	bottom: 68px;
	position: absolute;
}

#login {
	left: 50px;
}

#register {
	left: 450px;
}
</style>
</head>
<body>

	<script src="https://code.jquery.com/jquery-3.6.0.min.js"
		integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
		crossorigin="anonymous"></script>

	<div class="wrap">
		<div class="form-wrap">
			<div class="button-wrap">
				<div id="btn"></div>
				<button type="button" class="togglebtn" onclick="login();"
					id="loginBtnd">�α���</button>
				<button type="button" class="togglebtn" onclick="register();"
					id="regBtnd">ȸ������</button>
			</div>

			<form id="login" action="" class="input-group">
				<input type="email" class="input-field" placeholder="�̸��� �Է�"
					required> <input type="password" class="input-field"
					placeholder="��й�ȣ �Է�" required> <input type="checkbox"
					class="checkbox"><span>�̸���/��й�ȣ �����ϱ�</span>
				<button class="submit">�α���</button>
			</form>
			<form id="register" action="jspService/JoinService.jsp" class="input-group" method="post">
				<input type="id" id="id" class="input-field"
					placeholder="���̵� �����ּ���" required> <input type="password"
					id="pw" class="input-field" placeholder="��й�ȣ�� �����ּ���" required>
				<input type="name" id="name" class="input-field"
					placeholder="�̸��� �����ּ���" required> <input type="nickname"
					id="nick" class="input-field" placeholder="�г����� �����ּ���" required>
				<input type="mail" id="mail" class="input-field"
					placeholder="�̸����� �����ּ���" required> <input type="tel"
					id="tel" class="input-field" placeholder="��ȭ��ȣ�� �����ּ���" required>
				<input type="address" id="address" class="input-field  bottomSide"
					placeholder="�ּҸ� �����ּ���" required>
				<button class="submit">ȸ������</button>
			</form>
		</div>
	</div>
	<script>
            var x = document.getElementById("login");
            var y = document.getElementById("register");
            var z = document.getElementById("btn");
            
            
            function login(){
                x.style.left = "50px";
                y.style.left = "550px";
                z.style.left = "0";
 

            }   
            function register(){
                x.style.left = "-500px";
                y.style.left = "50px";
                z.style.left = "120px";


            }
            $("#loginBtnd").on("click",function(){
                    $("#loginBtnd").css("color","white");
                    $("#regBtnd").css("color","black");
                  
             })
             $("#regBtnd").on("click",function(){
                    $("#loginBtnd").css("color","black");
                    $("#regBtnd").css("color","white");
                  
             })
             $(".submit").on("click",function(){
                    $(this).css("color","white");

                  
             })
             

        </script>
</body>
</html>