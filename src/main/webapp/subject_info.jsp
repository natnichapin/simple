<%@ page import="com.example.simple.entities.Subject" %><%-- import เข้ามาตาม JAVA
  Created by IntelliJ IDEA. คอมเม้น JSP Scripting
  User: Natnicha
  Date: 8/22/2022
  Time: 11:41 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Subject Information</title>
</head>
<body>
    <h3>Your new Subject has been Added </h3>
    <hr/>
<h4>Subject Information :: </h4>
    <% //เขียน JAVA ในนี้ ผลลัพธ์เหมือนเดิม แค่ไม่ได้ใช้ el/Jstl -->(Scriptlet)
        Subject subject = (Subject) request.getAttribute("s");  //return value is object ,we will convert to Subject
    %>
    <p> Subject ID: <%= subject.getId() %>   <!-- it will call getId method automatically (EL)--></p><!-- JAVA Expression-->
    <p> Subject Title: <%= subject.getTitle() %></p> <!-- JAVA Expression (Scripting (โบราณ))-->
    <p> Subject Credit:  <%= subject.getCredit() %></p><!-- JAVA Expression มีเครื่องหมายเท่ากับ(Scripting)-->
<hr/>
<a href="index.jsp" > [ Back ] </a>
</body>
</html>

<!-- html that can take java for convert code by used EL (we  haven't learned )-->