<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <link rel="stylesheet" type="text/css" href="style.css">
    <title>Delete Customer</title>
</head>
<body>

<%
    Class.forName("com.mysql.jdbc.Driver");
    Connection connection = DriverManager.getConnection(
            "jdbc:mysql://localhost:3306/gcdojo",
            "jdbc",
            "java1234");
    Statement statement = connection.createStatement();
    int result = statement.executeUpdate (
            "DELETE FROM signups\n" + "WHERE CustomerID'" +
                    request.getParameter("id") + "'");
%>

<h1>Customer Deleted</h1>
The customer ID=<%= request.getParameter("id")%> was deleted from the database.
<p>
    <a href="index.jsp">&leftarrow;--Back to Index</a></p>
</body>
</html>

