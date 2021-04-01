<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>카센터 (붕붕이 나라)</title>
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
background-image:url('images/images/login_key.gif');
background-size:5%;
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
text-align: right
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
section{
background-image:url('images/images/logo.jpg');

background-size: 100%;
background-repeat:no-repeat;
}
aside{
text-align:center;
}
</style>
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