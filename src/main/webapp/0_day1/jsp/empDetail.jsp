<%@page import="com.shinhan.emp.EmpDTO"%>
<%@page import="com.shinhan.emp.EmpService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
EmpService eservice = new EmpService();
EmpDTO emp = null;
String empid = request.getParameter("empid");//숫자지만 문자로 받음
int i_empid = 0;
if(empid != null){
	i_empid = Integer.parseInt(empid);//문자 숫자로 형변환
	emp = eservice.selectById(i_empid);
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EmpDetail</title>
</head>
<body>
	<h1>사용자정보 상세보기</h1>
	<p>직원번호 : <%=emp.getEmployee_id() %></p>
	<p>First_name : <%=emp.getFirst_name() %></p>
	<p>Last_name : <%=emp.getLast_name() %></p>
	<p>Email : <%=emp.getEmail() %></p>
	<p>Commission_pct : <%=emp.getCommission_pct() %></p>
	<p>Phone_number : <%=emp.getPhone_number() %></p>
	<p>Salary : <%=emp.getSalary() %></p>
	<p>입사일 : <%=emp.getHire_date() %></p>
	<p>매니저 : <%=emp.getManager_id() %></p>
	<p>직책 : <%=emp.getJob_id() %></p>
	<p>부서 : <%=emp.getDepartment_id() %></p>
</body>
</html>