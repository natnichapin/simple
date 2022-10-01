<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Natnicha
  Date: 9/26/2022
  Time: 11:56 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Multiplication</title>
</head>
<body>
<h3> Multiplication Table of ${param.x} </h3>
<table >
  <c:forEach begin="2" end="12" var="n">
    <tr style="background-color: ${n%2==0?'yellow':'green'};">
    <!-- loop and do at /<tr> -->
      <!-- ส่วน EL -->
      <td>${param.x}</td>
      <td> x </td>
      <td> ${n} </td>
      <td> = </td>
      <td> ${n*param.x} </td>

    </tr>
  </c:forEach>
</table>

</body>
</html>
