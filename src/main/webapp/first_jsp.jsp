<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 07.08.2021
  Time: 12:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>first JSP</title>
</head>
<body>
    <h1>Testing JSP</h1>
    <%
        java.util.Date now = new java.util.Date();
        String someString ="Текущая дата: "+now;
    %><!-- В этот бит входит JAVA -код который ничего не возвращает на страницу  -->
    <p><%="HEllO WORLD"%></p><!-- В этот бит входит JAVA -код который что то возвращаетна страницу  -->
    <%=someString%>
    <%
        for(int i =0; i<10;i++) {
            out.println("<p>"+"123456  "+i +"\n"+"</p>");
        }
    %>
    <%@page import="java.util.Date,logic.somelogic"%><!--при компиляции файла JAVA код помешаеться в  doPost doGet ,а импорт в методах делать нельзя поэтому нужно сделать так -->
    <%=new Date()%><!--не обращаемся с полным  именем-->
    <% somelogic sl = new somelogic();%>
    <%= sl.getInfo()%>
    <% String name =request.getParameter("name");%>
<%="Hello"+ name%>

</body>
</html>
