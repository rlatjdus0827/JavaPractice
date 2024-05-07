<%@page import="java.util.List"%>
<%@page import="com.shinhan.emp.EmpService"%>
<%@page import="com.shinhan.emp.EmpDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    EmpService eservice = new EmpService();
    List<EmpDTO> emplist = eservice.selectAll();
    for(EmpDTO emp:emplist){
    	
    
    %>
<tr>
	<td><%= emp.getEmployee_id() %></td>
	<td><%= emp.getFirst_name() %></td>
	<td><%= emp.getEmail() %></td>
	<td><%= emp.getSalary() %></td>
</tr>
<%} %>