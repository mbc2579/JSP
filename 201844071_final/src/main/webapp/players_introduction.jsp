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
				<p style="font-size:200%; font-weight:bold;">무에타이의 레전드선수를 소개합니다!!</p>
				<p>선수들의 자세한 정보를 원하시면 사진을 클릭해주세요!!</p>
			</div>
		</div>
	
	<table border="0">
		
		<tr>
		
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			</td>
		
			<td>
   				 <div class="card">
      				<a href="https://namu.wiki/w/%EC%9D%B4%EC%84%B1%ED%98%84(1991)" target='_blank'><img class="card-img-top" src="images/10.jpg" onclick="clickBtn();" width="200"></a>
      					<div class="card-body">
        					<h5 class="card-title">이성현</h5>
        						<p class="card-text">일본,한국 두 나라의 챔피언</p>
      					</div>
    			</div>
			</td>
			
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			</td>
			
			<td>
				<div class="card">
      				<a href="https://namu.wiki/w/%EC%B5%9C%EC%8A%B9%EC%9A%B0(%EC%A2%85%ED%95%A9%EA%B2%A9%ED%88%AC%EA%B8%B0)" target='_blank'><img class="card-img-top" src="images/18.jpg" onclick="clickBtn();" width="200" height="265"></a>
      					<div class="card-body">
        					<h5 class="card-title">최승우</h5>
        						<p class="card-text">TFC 3대/5대 페더급 챔피언</p>
     					</div>
    			</div>
			</td>
			
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			</td>
			
			<td>
				<div class="card">
      				<a href="https://namu.wiki/w/%EC%81%98%EC%95%84%EA%B9%8C%EC%98%A4" target='_blank'><img class="card-img-top" src="images/11.jpg" onclick="clickBtn();" width="200" height="265"></a>
      					<div class="card-body">
        					<h5 class="card-title">쁘아까오</h5>
        						<p class="card-text">무에타이의 신</p>
     					</div>
    			</div>
			</td>
			
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			</td>
			
			<td>
				<div class="card">
      				<a href="https://namu.wiki/w/%EC%BD%94%EB%84%88%20%EB%A7%A5%EA%B7%B8%EB%A6%AC%EA%B1%B0" target='_blank'><img class="card-img-top" src="images/19.jpg" onclick="clickBtn();" width="200" height="265"></a>
      					<div class="card-body">
        					<h5 class="card-title">코너 맥그리거</h5>
        						<p class="card-text">5번의 UFC챔피언</p>
     					</div>
    			</div>
			</td>
			
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			</td>
			
			<td>
				<div class="card">
      				<a href="https://namu.wiki/w/%EB%82%A8%EC%82%AD%EB%85%B8%EC%9D%B4" target='_blank'><img class="card-img-top" src="images/20.jpg" onclick="clickBtn();" width="200" height="265"></a>
      					<div class="card-body">
        					<h5 class="card-title">남삭노이</h5>
        						<p class="card-text">FORD 무에타이 토너먼트 챔피언</p>
     					</div>
    			</div>
			</td>
			
		</tr>
	</table>
	
</div>	
</div>
	
	
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>


</body>
</html>