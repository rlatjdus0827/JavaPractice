<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Confirm page</title>
</head>
<body>

<h1>확인</h1>
<!-- 
request.getParameter("name")으로 값을 request로 읽어서 출력
request.getParameterValues("name")을 배열에 넣어서 사용가능
out.print("<li>"+ sub +"</li>") => java로 html문장을 문자로 만듬
 -->
<p>1. <%=request.getParameter("input1") %></p>
<p>2. <%=request.getParameter("input2") %></p>
<p>3. <%=request.getParameter("input3") %></p>
<p>4. <%=request.getParameter("input4") %></p>
<p>5. <%=request.getParameter("input5") %></p>
<p>6. <%=request.getParameter("input6") %></p>
<p>7. <%=request.getParameter("input7") %></p>
<p>8.성별 : <%=request.getParameter("gender") %></p>
<p>8.전공 : <%=request.getParameter("major") %></p>
<p>9.학습과목 : </p>
<ul>
<% 
String[] arr = request.getParameterValues("subject");
for(int i=0;arr!=null && i<arr.length;i++){
	//out.print는 document에 출력
	out.print("<li>"+ arr[i] +"</li>");
	//sys-out은 html문서의 body를 의미하는 jsp가 내장하는 객체
	//syso는 모니터(수행되는 곳의 console)에 출력
	System.out.println(i + "==>" + arr[i]);
}
%>
</ul>

<p>10. number : <%=request.getParameter("input8") %></p>
<p>11. number (range) : <%=request.getParameter("input9") %></p>
<p>12. date : <%=request.getParameter("input10") %></p>
<p>12. month : <%=request.getParameter("input11") %></p>
<p>12. week : <%=request.getParameter("input12") %></p>



</body>
</html>