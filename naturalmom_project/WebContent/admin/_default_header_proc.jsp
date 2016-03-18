<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8"); 

String category = request.getParameter("category");
String submenu = request.getParameter("submenu");

%>
<h1><%= category %></h1>
<h1><%= submenu %></h1>