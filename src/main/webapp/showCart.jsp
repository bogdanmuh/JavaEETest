<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 07.08.2021
  Time: 18:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Show Cart</title>
</head>
<body>
    <%@ page import="logic.Cart" %>
    <% Cart cart = (Cart) session.getAttribute("cart");%>
    <p>Name: <%=cart.getName()%></p>
    <p>Количество: <%=cart.getQuantity()%></p>

</body>
</html>
