<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객관리</title>
<style>
*{padding:0;
margin:0;}
html,body{
height:100%;
width:100%;
}
header{
width:100%;
height:15%;
}
header{
background-color: yellow;
}
#hd{
float:left;

}
nav{
background-color: gray;
width:100%;
height:5%;
both:clear;
line-height: 40px;
}
#fr{
float:right;
line-height: 150px;
}
section{
width:80%;
height:75%;
float:left;

}
#st{
text-align:center;
font-size:50px;
color:blue;
}
aside{
width:20%;
height:75%;
float:left;
background-color: green;
}
aside ul li{
list-style: none;
text-align:center;
}

footer{
width:100%;
height:5%;
background-color: red;
float: left;
text-align: left;
line-height: 50px;
}

#menu ul li{
list-style: none;
float: left;
text-align:center;
}
#menu .menuLink{
text-decoration:none;
padding: 15px;
font-weight: bold;
}
aside{
text-align:center;
}
table{
width:100%;
height:100%;
}
</style>
<script type="text/JavaScript">
function check(){
if(document.line.id.value==""){
alert("아이디를 입력하세요.");
document.line.id.focus();
}
if(document.line.name.value==""){
alert("이름을 입력하세요.");
document.line.name.focus();
}
if(document.line.pass.value==""){
alert("비밀번호를 입력하세요.");
document.line.pass.focus();
}
if(document.line.passwords.value==""){
alert("비밀번호를 확인해주세요.");
document.line.passwords.focus();
}

document.line.submit();
}
</script>
</head>
<body>
<header><h1 id=hd>카센터 (붕붕이 나라)</h1>
<form id=fr>
<label for="id">아이디</label>
<input name="id" type="text">
<label for="pass">패스워드</label>
<input name="pass" type="password">
<input name="login" type="button" value="로그인">
<a href="#">회원가입</a>
</form></header>
<nav id="menu">
<ul>
<li><a class="menuLink" href="#">회사소개</a></li>
<li><a class="menuLink" href="#">부품정보</a></li>
<li><a class="menuLink" href="#">고객정보</a></li>
<li><a class="menuLink" href="#">견적관리</a></li>
<li><a class="menuLink" href="#">정비이력</a></li>
<li><a class="menuLink" href="#">게시판</a></li>
</ul>
</nav>
<section>
<h2 id=st>고객관리</h2>
<fieldset>
<form name="line" method="POST" action="insert_process.jsp">
<table border="1">
<tr>
<th><label for=id>아이디</label></th>
<td><input type="text" name="id">
<input type="button" value="중복체크">
</td>
</tr>
<tr>
<th rowspan="1">이름</th>
<td><input type="text" name="name"></td>
</tr>
<tr>
<th rowspan="1">비밀번호</th>
<td><input type="password" name="pass"></td>
</tr>
<tr>
<th rowspan="1">비밀번호확인</th>
<td><input type="password" name="passwords"></td>
</tr>
<tr>
<th rowspan="1">성별</th>
<td>
<input type="radio" name="gender" value="m">
<label for="man">남</label>
<input type="radio" name="gender" value="w">
<label for="woman">여</label><br>
</td>
</tr>
<tr>
<th rowspan="1">이메일</th>
<td>
<input type="text" name="email">@
<select name=em>
<option>naver.com</option>
<option>daum.net</option>
<option>gmail.com</option>
<option>nate.com</option>
</select>
</td>
</tr>
<tr>
<th rowspan="1">핸드폰</th>
<td>
<select name="phone1">
<option>010</option>
<option>011</option>
<option>017</option>
<option>019</option>
</select>-
<input type='text' name='phone2'size="10" />-
<input type='text' name='phone3'size="10" />
</td>
</tr>
<tr>
<th rowspan="1">전화번호</th>
<td>
<input type='text' name='tel1' size="2" >-
<input type='text' name='tel2' size="10" >-
<input type='text' name='tel3' size="10" >
</td>
</tr>
<tr>
<th rowspan="1">주소</th>
<td><input type="text" name="ad" size="100"></td>
</tr>
<tr>
<th rowspan="1">차량번호</th>
<td><input type="text" name="cn"></td>
</tr>
<tr>
<th rowspan="1">차종류</th>
<td><input type="text" name="cs"></td>
</tr>
<tr>
<th colspan="2">
<input id=a type="button" value="저장하기"onclick="javascript:check()">
<input id=a type="reset" value="다시작성"><br>
</th>
</tr>
</table>
</form>
</fieldset>
</section>
<aside>
<input name="고객등록" type="button" value="고객등록"><br>
<input name="정비등록" type="button" value="정비등록"><br>
<input name="부품등록" type="button" value="부품등록"><br>
<input name="where" type="button" value="현재위치"><br>
</aside>
<footer>copyright (c) 2018 yangjung All rights reserved</footer>
</body>
</html>