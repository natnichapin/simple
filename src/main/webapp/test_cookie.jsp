<%--
  Created by IntelliJ IDEA.
  User: Natnicha
  Date: 10/3/2022
  Time: 12:02 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Test Cookies</title>
</head>
<body style="width: 800px ;height: 600px;background-color: ${cookie["background-color"].value}; color:
        ${cookie["foreground-color"].value}">
<h2> Hello Baby Dev </h2> <hr/>
Foreground Color : ${cookie["foreground-color"].value} <br/> <!-- .value เพราะเป็น object-->
Foreground Color : ${cookie["background-color"].value} <br/>

</body>
</html>
