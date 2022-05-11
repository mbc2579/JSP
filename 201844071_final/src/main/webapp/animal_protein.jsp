<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
String[] img ={"30.jpg", "31.jpg", "32.jpg", "33.jpg", "34.jpg", "35.jpg", "36.jpg", "37.jpg", "38.jpg"};
String[] name = {"마이프로틴(초코)", "마이프로틴(딸기)", "마이프로틴(스트로베리크림)", "몬스터밀크(초코)", "몬스터밀크(바닐라)", "몬스터밀크(카라멜)", "컴뱃웨이(초코)", "컴뱃웨이(쿠키앤크림)", "컴뱃웨이(딸기)"};
String[] price = {"46,890", "48,900", "49,900", "59,900", "32,900", "59,700", "53,490", "53,700", "47,800"};
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="custom.css">
<title>무에타이</title>

<script type="text/javascript">
function fnCart(name, price) {
	//alert("Name : " + name + "\nPrice : " + price);
	if(confirm("장바구니에 담으시겠습니까?")) {
		location.href = "CartProcess.jsp?name=" + name + "&price=" + price;
	}
}

function fnView() {
	if(confirm("장바구니를 보시겠습니까?")){
		location.href = "CartView.jsp";
	}
}
</script>

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
	
	<div>
		<p><a class="btn btn-primary btn-pull" href="https://terms.naver.com/entry.naver?docId=2843578&cid=47309&categoryId=47309" target='_blank' role="button">동물성단백질이란?</a></p>
	</div>
	
	<div align="center">
	<h3>[근육빵빵 프로틴]</h3>
	<table border="1">
		<tr align="right">
			<td colspan="3">
				<input type="button" value="장바구니 보기" onclick="fnView()" />
			</td>
		</tr>
		<%
		for(int i = 0; i < img.length; i++) {
			if(i % 3 == 0) { 
				out.println("<tr align='center'>");
			}
			out.println("<td>");
				out.println("<table>");
					out.println("<tr align='center'>");
						out.println("<td>");
							out.println("<img src = 'images/" + img[i] + "' width='150' height='150' />");
						out.println("</td>");
					out.println("</tr>");
					
					out.println("<tr align='center'>");
						out.println("<td>");
							out.println("<b>" + name[i] + "</b>");
						out.println("</td>");
					out.println("</tr>");
					
					out.println("<tr align='center'>");
						out.println("<td>");
							out.println("<b>￦" + price[i] + "원</b>");
						out.println("</td>");
					out.println("</tr>");
					
					out.println("<tr align='center'>");
						out.println("<td>");
							
							out.println("<input type='button' value='장바구니 담기' ");
							out.println("onclick='fnCart(\"" + name[i] + "\", \"" + price[i] + "\")' />");
						out.println("</td>");
					out.println("</tr>");
				out.println("</table>");
			out.println("</td>");
			if(i % 3 == 2) {
				out.println("</tr>");
			}
		}
		%>	
	</table>
</div>
	
	

	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>


</body>
</html>