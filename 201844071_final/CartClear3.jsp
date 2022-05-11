<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
session.getAttribute("cart");
session.removeAttribute("cart");
response.sendRedirect("Chicken_breast.jsp");
%>