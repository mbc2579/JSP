<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="bbs.BbsDAO" %>
<%@ page import="bbs.Bbs" %>
<%@ page import="java.util.ArrayList" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="custom.css">
<title>무에타이</title>
<style type="text/css">
	a, a:hover {
		color: #000000;
		text-decoration: none;
	}
</style>
</head>
<body>

	<%
		String userID = null;
		if (session.getAttribute("userID") != null) {
			userID = (String) session.getAttribute("userID");
		}
		int pageNumber = 1;
		if (request.getParameter("pageNumber") != null) {
			pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
		}
	%>
	
		<%
			if(userID == null) {
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('로그인을 하세요.')");
				script.println("location.href='login.jsp'");
				script.println("</script>");
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
				<li class="active"><a href="bbs.jsp">게시판</a></li>
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
	 	<div class="row">
	 		<table class="table table-striped" style="text-align: center; border:1px solid #dddddd">
	 			<thead>
	 				<tr>
	 					<th style="background-color: #eeeeee; text-align: center;">번호</th>
	 					<th style="background-color: #eeeeee; text-align: center;">제목</th>
	 					<th style="background-color: #eeeeee; text-align: center;">작성자</th>
	 					<th style="background-color: #eeeeee; text-align: center;">작성일</th>
	 			</thead>
	 			<tbody>
	 				<%
	 					BbsDAO bbsDAO = new BbsDAO();
	 					ArrayList<Bbs> list = bbsDAO.getList(pageNumber);
	 					for(int i = 0; i < list.size(); i++) {
	 				%>
	 				<tr>
	 					<td><%= list.get(i).getBbsID() %></td>
	 					<td><a href="view.jsp?bbsID=<%= list.get(i).getBbsID() %>"><%=list.get(i).getBbsTitle().replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("\n", "<br>") %></a></td>
	 					<td><%= list.get(i).getUserID() %></td>
	 					<td><%= list.get(i).getBbsDate().substring(0, 11) + list.get(i).getBbsDate().substring(11, 13) + "시" + list.get(i).getBbsDate().substring(14, 16) + "분" %></td>
	 				</tr>
	 				<%
	 					}
	 				%>
	 			</tbody>
	 		</table>
	 		
	 		<%
	 			if(pageNumber != 1) {
	 		%>
	 			<a href="bbs.jsp?pageNumber=<%=pageNumber - 1%>" class="btn btn-success btn-arraw-left">이전</a>
	 		<%		
	 			} if(bbsDAO.nextPage(pageNumber + 1)) {
	 		%>
	 			<a href="bbs.jsp?pageNumber=<%=pageNumber + 1%>" class="btn btn-success btn-arraw-left">다음</a>
	 		<%		
	 			}
	 		%>
	 		
	 		<a href="write.jsp" class="btn btn-primary pull-right">글쓰기</a>
	 	</div>
	 </div>
	 
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>


</body>
</html>