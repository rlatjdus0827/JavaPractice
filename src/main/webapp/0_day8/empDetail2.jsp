<%@page import="com.shinhan.emp.EmpDTO"%>
<%@page import="com.shinhan.emp.EmpService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String empid = request.getParameter("empid");
	if(empid == null) return;
	int i_empid = Integer.parseInt(empid);
	EmpService service = new EmpService();
	EmpDTO emp = service.selectById(100);
%>
{
	"아이디":<%= emp.getEmployee_id() %>,
	"이름":"<%= emp.getFirst_name() %>"
}

