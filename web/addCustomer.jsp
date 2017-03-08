<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <link rel="stylesheet" href="style.css">
    <title>Add Customer</title>
</head>
<body>
<h1>Customer Added</h1>
<%
    Class.forName("com.mysql.jdbc.Driver");
    Connection connection = DriverManager.getConnection(
            "jdbc:mysql://localhost:3306/gcdojo",
            "jdbc",
            "java1234");
    Statement statement = connection.createStatement();
    int result = statement.executeUpdate("INSERT INTO gcdojo.signups "
            + "(CustomerID, firstName, lastName, email, phoneNum, location, sLevel, password)"
            + "VALUES ('" + request.getParameter("CustomerID") + "','"
            + request.getParameter("firstName") + "','"
            + request.getParameter("lastName") + "','"
            + request.getParameter("email") + "','"
            + request.getParameter("phoneNum") + "','"
            + request.getParameter("location") + "','"
            + request.getParameter("level") + "','"
            + request.getParameter("password") + "');");
%>
Customer ID: <%= request.getParameter("CustomerID") %><br>
Customer First Name: <%= request.getParameter("firstName") %><br>
Customer Last Name: <%= request.getParameter("lastName") %><br>
<a href="index.jsp">Return to Customer List</a>
<%

    //cleaning up after myself
    if (statement != null) {
        statement.close();
    }
    if (connection != null) {
        connection.close();
    }
%>

</body>
</html>

