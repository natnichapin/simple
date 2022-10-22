<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Natnicha
  Date: 10/3/2022
  Time: 10:04 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Your Session id is ${cookie.JSESSIONID.value}</h1>
    <h3>Hello <c:out value="${param.name}" default="Guest"/> </h3><hr/>
    <h3>Hello ${param.name==null?'Guest':param.name } </h3></hr> <!-- ความหมายเดียวกับรรทัดบน -->
    <c:set var="score" value="${param.score}" />
    <c:choose>
        <c:when test="${score>=80}">
                <c:set var="grade" value="A" />
        </c:when>
        <c:when test="${score>=60}">
            <c:set var="grade" value="B+" />
        </c:when>
        <c:when test="${score>=40}">
            <c:set var="grade" value="B" />
        </c:when>
        <c:otherwise>
            <c:set var="grade" value="F" />
        </c:otherwise>
    </c:choose>
<h2> Your score is ${score}, <span style="color: ${grade=='F'? 'red':'blue'}">  Grade is ${grade}</span> </h2>
    <!-- สามารถเขียน el ร่วมกันได้ กับ html  -->
<hr>
Multiplication table of ${param.x} <hr/>
<table>
    <c:forEach begin="1" end="12" var="y">
    <tr>
    <td> ${param.x}</td>
        <td> x </td>
        <td> ${y} </td>
        <td> = </td>
        <td style="color: ${y%2==0?'green':'red'};background-color: yellow">  ${param.x*y} </td>

    </tr>
    </c:forEach>
</table>
</body>
</html>
