<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="style.css">
    <%
        Class.forName("com.mysql.jdbc.Driver");
        Connection connection = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/gcdojo",
                "jdbc",
                "java1234");
        Statement statement = connection.createStatement();
        int result = statement.executeUpdate(
                "UPDATE signups\n" +
                        "SET\n" +
                        "firstName='" + request.getParameter("firstName") + "',\n" +
                        "lastName='" + request.getParameter("lastName") + "',\n" +
                        "email='" + request.getParameter("email") + "',\n" +
                        "phoneNum='" + request.getParameter("phoneNum") + "'\n" +
                        "location='" + request.getParameter("location") + "'\n" +
                        "sLevel='" + request.getParameter("sLevel") + "'\n" +
                        "password='" + request.getParameter("password") + "'\n" +
                        "WHERE CustomerID='" + request.getParameter("CustomerID") + "'\n");

    %>


    <title>Update Confirmed</title>
</head>
<body>
<h1>Update Confirmed <%=request.getParameter("CustomerID") %>
</h1>
<%= request.getParameter("firstName") %><br>
<%= request.getParameter("lastName") %><br>
<%= request.getParameter("email") %><br>
<%= request.getParameter("phoneNum") %><br>
<%= request.getParameter("location") %><br>
<%= request.getParameter("sLevel") %><br>
<%= request.getParameter("password") %><br>
<p>
    <a href="#" onclick="window.history.back()">&leftarrow;--Change Update</a></p>
<p>
    <a href="index.jsp">&leftarrow;--Back to Index</a>
</p>
</body>
</html>

