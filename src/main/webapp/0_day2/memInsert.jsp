<%@page import="com.shinhan.jdbc01.MemDTO"%>
<%@page import="com.shinhan.jdbc01.MemService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
 String mem_id=request.getParameter("mem_id");
 String mem_pw=request.getParameter("mem_pw");
 String mem_name=request.getParameter("mem_name");
 String mem_email=request.getParameter("mem_email");
 String mem_phone=request.getParameter("mem_phone");
 int mem_lesson_cnt;
 
 MemService mservice = new MemService();
 MemDTO mem = new MemDTO();
 mem.setMem_id(mem_id);
 mem.setMem_pw(mem_pw);
 mem.setMem_name(mem_name);
 mem.setMem_email(mem_email);
 mem.setMem_phone(mem_phone);
 mem.setMem_lesson_cnt(16);
 
 System.out.println(mem);
 mservice.memInsert(mem);
 
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
<h1>회원가입 완료</h1>
<p>ID : <%=mem.getMem_id() %></p>
<p>PW : <%=mem.getMem_pw() %></p>
<p>Name : <%=mem.getMem_name() %></p>
<p>Email : <%=mem.getMem_email() %></p>
<p>Phone-num : <%=mem.getMem_phone() %></p>
<p>lesson-available-cnt : <%=mem.getMem_lesson_cnt() %></p>
</body>
</html>