<%@page import="java.util.List"%>
<%@page import="com.shinhan.emp.EmpService"%>
<%@page import="com.shinhan.emp.EmpDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

{ "emplist":[

<%
EmpService eservice = new EmpService();
List<EmpDTO> emplist = eservice.selectAll();
for(int i=0; i<emplist.size();i++) {
%>
{ 	"no":<%= emplist.get(i).getEmployee_id() %>,
	"name":"<%= emplist.get(i).getFirst_name() %>",
	"capital": "<%= emplist.get(i).getEmail() %>",
	"region":<%= emplist.get(i).getSalary() %>
}



	<%
	if(i < emplist.size()-1)
		  out.print(",");
	} 
	%>
]}