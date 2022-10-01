<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Natnicha
  Date: 9/26/2022
  Time: 11:16 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Test El's Implicit Object</title>
</head>
<body>
Id : ${param.id} </br>
Name : ${param.name}</br>
Grade : ${param.grade}</br>
<hr/>
Favorite Subjects: <br>
- ${paramValues.fav[0]}<br/>
- ${paramValues.fav[1]}<br/>
- ${paramValues.fav[2]}<br/>
<hr>
Favorite Subject :(Loop) <br>
<c:forEach items="${paramValues.fav}" var="fav">
    -${fav}</br>

</c:forEach>
<hr/>
<!-- Can view header form users -->
<!-- เราจำเป็นต้องใช้ [] เมื่อมีเครื่องหมาย หรือเป็นสัญลักษณ์พิเศษ  เช่น " - " -->
<!-- ที่อาจทำให้สับสนกับเครื่องหมายลบ จะได้ไม่แปลงเป็นตัวเลข-->
<!-- ถ้าระบุตัวแปรแล้วไม่บอกว่ามาจาก implicit object ก็จะไปหาใน request-->

Your browser: ${header["User-Agent"]}</br>
Request Method:${header.Connection} </br>
Host: ${header.Host} <!-- which browser that we use -->

<!-- Content Length: -->    <!--  will be given if you send data by post action -->

</body>
</html>
