<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body style="background-color: beige;">
<h1><%= "Hello World!" %>
</h1>
<br/>
    <div style="margin:auto auto" >
        <a href="hello-servlet">Hello Servlet</a> </br>
        <a href="SubjectList">Subject_List</a> </br>
        <a href="subject_form.html">Add New Subject</a> </br>
        <a href="AddNumber.html">Add number</a> </br>
        <a href="TestRequestParameter">Favorite Subjects</a> </br>
        <a href="InputScore.html">GPA CAL</a> </br>
        <h3> test_scope.jsp  </h3>
        <ul>
        <li> <a href="test_scope.jsp"> test_scope.jsp </a>  </li>
        <li> <a href="TestScopeServlet"> TestScopeServlet </a> </li>
        </ul>
        <a href="TestImplicit.jsp"> TestImplicit </a>
        <a href="Multiplication.jsp"> Multiplication</a></br>
        <!--ส่งไปแบบ get ถ้าเป็น post จะต้องส่งแบบ form -->
    </div>
</body>
</html>