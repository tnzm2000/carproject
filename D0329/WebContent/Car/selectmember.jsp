<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ page import="java.sql.*"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border=1>
<tr>
<td>id</td>
<td>passwd</td>
<td>name</td>
<td>gender</td>
<td>email</td>
<td>phone</td>
<td>tel</td>
<td>address</td>
<td>carNumber</td>
<td>carType</td>
</tr>
<%@ include file="DBconn.jsp"%>
<%
ResultSet rs = null;
PreparedStatement pstmt = null;
try {
	String sql = "select * from car_member";
	pstmt = conn.prepareStatement(sql);
	rs = pstmt. executeQuery();
	
	while (rs.next()){
		String id = rs.getString("id");
		String pw = rs.getString("passwd");
		String name = rs.getString("name");
		String gd = rs.getString("gender");
		String em = rs.getString("email");
		String ph = rs.getString("phone");
		String tel = rs.getString("tel");
		String ad = rs.getString("address");
		String cn = rs.getString("carNumber");
		String ct = rs.getString("carType");
		System.out.println(id);
		System.out.println(pw);
		System.out.println(name);
		System.out.println(gd);
		System.out.println(em);
		System.out.println(ph);
		System.out.println(tel);
		System.out.println(ad);
		System.out.println(cn);
		System.out.println(ct);
		%>
		<tr>
		<td><%=id %></td>
		<td><%=pw%></td>
		<td><%=name%></td>
		<td><%=gd%></td>
		<td><%=em%></td>
		<td><%=ph%></td>
		<td><%=tel%></td>
		<td><%=ad%></td>
		<td><%=cn%></td>
		<td><%=ct%></td>
		</tr>
<%	}
}catch(SQLException e){
	e.printStackTrace();
}
%></table>
</body>
</html>