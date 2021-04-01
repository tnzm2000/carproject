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
<%@ include file="DBconn.jsp"%>
<%
     request.setCharacterEncoding("utf-8");
     String id=request.getParameter("id");
     String pass=request.getParameter("pass");
     String name=request.getParameter("name");
     String email=request.getParameter("email")+"@"+request.getParameter("em");
     String phone=request.getParameter("phone1")+"-"+request.getParameter("phone2")+"-"+request.getParameter("phone3");
    
     String tel=request.getParameter("tel1")+"-"+request.getParameter("tel2")+"-"+request.getParameter("tel3");
     String gender=request.getParameter("gender");
     String ad=request.getParameter("ad");
     String cn=request.getParameter("cn");
     String cs=request.getParameter("cs");
     System.out.println("pass : "+pass);
     System.out.println("name : "+name);
     System.out.println("email : "+email);
     System.out.println("id : "+id);
     System.out.println("phone : "+phone);
     System.out.println("tel : "+tel);
     System.out.println("ad : "+ad);
     System.out.println("cn : "+cn);
     System.out.println("cs : "+cs);
     
     PreparedStatement pstmt=null;
     try{
         String sql="insert into car_member(id,name,passwd,gender,email,phone,tel,address,carNumber,carType) values(?,?,?,?,?,?,?,?,?,?)";
         pstmt = conn.prepareStatement(sql);
         pstmt.setString(1, id);
         pstmt.setString(2, name);
         pstmt.setString(3, pass);
         pstmt.setString(4, gender);
         pstmt.setString(5, email);
         pstmt.setString(6, phone);
         pstmt.setString(7, tel);
         pstmt.setString(8, ad);
         pstmt.setString(9, cn);
         pstmt.setString(10, cs);
         pstmt.executeUpdate();
         System.out.println("저장완료");
   }catch(SQLException e){
         e.printStackTrace();
         System.out.println("저장실패");
   }    
%>
</body>
</html>