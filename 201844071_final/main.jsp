<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="custom.css">
<title>무에타이</title>
</head>
<body>

	<%
		String userID = null;
		if (session.getAttribute("userID") != null) {
			userID = (String) session.getAttribute("userID");
		}
	%>

	<nav class="navbar navbar-default">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="main.jsp">무에타이</a>
		</div>
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<ul class="nav navbar-nav navbar">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">무에타이<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="introduction.jsp">소개</a></li>
						<li><a href="players_introduction.jsp">선수소개</a></li>
					</ul>
				</li>
			</ul>
				
				<li><a href="video.jsp">동영상</a></li>
				
				<ul class="nav navbar-nav navbar">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">헬스<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="Back.jsp">등운동</a></li>
						<li><a href="Shoulder.jsp">어깨운동</a></li>
						<li><a href="Chest.jsp">가슴운동</a></li>
						<li><a href="Arm.jsp">팔운동</a></li>
						<li><a href="Lowerbody.jsp">하체운동</a></li>
					</ul>
				</li>
			</ul>
				
			<ul class="nav navbar-nav navbar">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">단백질보충제<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="animal_protein.jsp">동물성단백질</a></li>
						<li><a href="Vegetable_protein.jsp">식물성단백질</a></li>
						<li><a href="Chicken_breast.jsp">닭가슴살</a></li>
					</ul>
				</li>
			</ul>
			
				<li><a href="bbs.jsp">게시판</a></li>
			</ul>
			<%
				if(userID == null) {
			%>
			
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">접속하기<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="login.jsp">로그인</a></li>
						<li><a href="join.jsp">회원가입</a></li>
					</ul>
				</li>
			</ul>
			<%
				} else {
			%>
				<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">로그아웃<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="logoutAction.jsp">로그아웃</a></li>
					</ul>
				</li>
			</ul>
			<%
				}
			%>
		</div>
	</nav>
	
	<div class="container">
		<div class="jumbotron">
			<div class="container">
				<p style="font-size:200%; font-weight:bold;">레전드선수 5명에게 배우는 무에타이</p>
				<p>무에타이의 기초부터 실전까지 동영상으로 재미있게!! 회원들과 소통하며 챔피언의 꿈을 가져봐요!!</p>
				
				<table>
				<tr>
					<td>
				<div style="text-align : left">
						<img src="images/10.jpg" width="500" height="500">
				</div>
					</td>
						
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</td>
						
					<td>
				<div style="text-align : right">
						<img src="images/11.jpg" width="500" height="500">
				</div>
					</td>
				</tr>
				
				</table>
			</div>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>


</body>
</html>