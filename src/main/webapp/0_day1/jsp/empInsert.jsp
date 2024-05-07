<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>신규 직원 등록</title>
<style>
#submitbutton{
	width:100%;
	height:100px;
	text-align:center;
	line-height:100px;
}
#field{
	width: 400px;
	margin:0 auto;
}
#container{
	width: 800px;
	margin:0 auto;
	
}
legend{
	text-align:center;
}
label{
	width:150px;
	display:inline-block;
}
input{
	width: 200px;
}
h1{
	width:100%;
	height:100px;
	text-align:center;
	line-height:100px;
}

</style>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="/webproject/js/jquery-3.7.1.min.js"></script>
<script>
$(function(){
	$("#btnDupCheck").on("click",f_dupCheck);
});
function f_dupCheck() {
	$.ajax({
		url:"/webproject/0_day8/emailCheck.jsp",
		type:"get",
		data:{email:$("input[name='email']").val()},
		success: function(responseText){
			//alert(responseText);
			if(responseText == 1){
				message = "이미존재한다(사용불가)";
			}else{
				message = "사용가능";
			}
			$("#message").html(message);
		}
	});
}

</script>
</head>
<body>
<h1>신규직원 등록</h1>
<%--jsp 주석 : jsp 문서를 보는 사람을 위한 설명 --%>
<!-- 
html 주석 : 개발자에게 코드를 설명하기 위함.
method를 생략하면 기본값은 get
method="get" : 전송방식이 get, 주소창에 전송되는 data가 display된다. (자릿수 제한 : 4096byte)
method="post" : 전송방식이 post, 주소창에 전송되는 data가 display되지 않고 요청문서에 body숨어서 감.
submit 버튼을 누르면 자동으로 action으로 간다. (input들을 action에 전달한다)
input태그에 name을 전달한다.(name이 parameter이름)
input태그에 id로 각 태그를 연결할 수 있다.
<input> name : 문서 내에서 같은 이름이 여러개 가능
		id   : 문서 내에서 유일
 
 <input type="radio" value="M" name="gender"> 남자 
 <input type="radio" value="F" name="gender"> 여자 
 
 -->
 <div id="container">
<form action="empDBInsert.jsp" method="get">
<fieldset id="field">
    <legend>필수항목</legend>
    <label for="employee_id">직원번호</label>
    <input type="number" name="employee_id" id="employee_id"><br>
    <label>last_name</label>
    <input type="text" name="last_name"><br>
    <label>email</label>
    <input type="email" name="email">
    <input type="button" value="중복체크" id="btnDupCheck">
    <span id="message">----</span>
    <br>
    <label>입사일</label>
    <input type="date" name="hire_date"><br>
    <label>job_id</label>
    <input type="text" name="job_id"><br>
</fieldset>
<fieldset id="field">
    <legend>선택입력</legend>
    <label>first_name</label>
    <input type ="text" name="first_name"><br>
    <label>phone_number</label>
    <input type="text" name="phone_number"><br>
    <label>salary</label>
    <input type="number" name="salary" value=0><br>
    <label>manager_id</label>
    <input type="number" name="manager_id" value=100><br>
    <label>department_id</label>
    <input type="number" name="department_id" value=100><br>
    <label>Commission_pct</label>
    <input type="number" name="commission_pct"><br>
</fieldset>
<div id="submitbutton">
<input type="submit" value="DB입력" class="btn btn-success">
<input type="reset" value="초기화" class="btn btn-success"></div>
</form>
</div>
</body>
</html>