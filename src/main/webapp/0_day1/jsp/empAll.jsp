<%@page import="com.shinhan.emp.EmpService"%>
<%@page import="java.util.List"%>
<%@page import="com.shinhan.emp.EmpDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EmpAll</title>
<style>
#container{
	width: 1000px;
	
	margin:0 auto;
}
h1{
	height: 100px;
	border:1px solid gray;
	text-align:center;
	line-height:100px;
	background-color:beige;
	color:orange;
	
}
a.decoNone{
	text-decoration:none;
	background-color:black;
	color:white;
	padding:10px;
	border-radius:30px;

}
table,th,td{
	border-collapse:collapse;
}
th,td{
	padding: 5px;
	text-align: center;
}
thead{
	background-color:rgb(71, 69, 119);	
	
}
/* 칸을 띄우면 자손을 의미(tbody밑에 tr)-nth-child(2n) :짝수번째 자식 , 2n+1:홀수번째 */
tbody tr:nth-child(2n){
	background-color:lightblue;
}
tbody tr:nth-child(2n+1){
	background-color:#f0f0f0;
}
</style>
</head>
<body>
<div id="container">
	<h1>전체 직원 정보</h1>
	<a class="decoNone" href="empInsert.jsp">신규직원 등록</a>
	<table border="1">
		<caption>직원목록</caption>
		<thead>
			<tr>
				<th>직원번호</th>
				<th>First_name</th>
				<th>Last_name</th>
				<th>Email</th>
				<th>Commission_pct</th>
				<th>Phone_number</th>
				<th>Salary</th>
				<th>입사일</th>
				<th>매니저</th>
				<th>직책</th>
				<th>부서</th>
			</tr>
		</thead>
		<tbody>
	<%
	EmpService eservice = new EmpService();
	List<EmpDTO> emplist = eservice.selectAll();
	%>
	<%
	for(EmpDTO emp:emplist){
	%>
			<tr>
				<td><a href="empDetail.jsp?empid=<%=emp.getEmployee_id()%>">
						<%=emp.getEmployee_id()%>
				</a></td>
				
				<td><%=emp.getFirst_name() %></td>
				<td><%=emp.getLast_name() %></td>
				<td><%=emp.getEmail() %></td>
				<td><%=emp.getCommission_pct() %></td>
				<td><%=emp.getPhone_number() %></td>
				<td><%=emp.getSalary() %></td>
				<td><%=emp.getHire_date() %></td>
				<td><%=emp.getManager_id() %></td>
				<td><%=emp.getJob_id() %></td>
				<td><%=emp.getDepartment_id() %></td>

			</tr>
			<% } %>
		</tbody>
	</table>
	</div>
</body>
</html>