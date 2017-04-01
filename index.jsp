<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
  <link rel="stylesheet" type="text/css" href="style.css">
  <title>Customer List</title>
  <a href="addCustomer.jsp">Add Customer</a>
</head>
<body>

<%
  Class.forName("com.mysql.jdbc.Driver");
  Connection connection = DriverManager.getConnection(
          "jdbc:mysql://localhost:3306/gcdojo",
          "jdbc",
          "java1234");
  Statement statement = connection.createStatement();
  //get data from form
  String sql= "SELECT CustomerID, firstName, lastName, email, phoneNum, location, sLevel FROM signups ORDER BY CustomerID";
  ResultSet resultset = statement.executeQuery(sql);
%>
<h1>Customer List</h1>
<a href="addCustomer.html">Add New Customer</a>
<table BORDER="1">
  <tr>
    <th colspan="8">Customer Info</th>
    <th colspan="2" rowspan="2">Operations</th>
  </tr>
  <tr>
    <th>CustomerID:</th>
    <th>First Name:</th>
    <th>Last Name</th>
    <th>email:</th>
    <th>Phone Number:</th>
    <th>Location</th>
    <th>Skill Level</th>
    <th>Operation</th>
  </tr>
  <% while(resultset != null && resultset.next()){ %>
  <TR>
    <td><%= resultset.getString("CustomerID")%></td>
    <td><%= resultset.getString("firstName")%></td>
    <td><%= resultset.getString("lastName")%></td>
    <td><%= resultset.getString("email")%></td>
    <td><%= resultset.getString("phoneNum")%></td>
    <td><%= resultset.getString("location")%></td>
    <td><%= resultset.getString("sLevel")%></td>

    <td class="button">
      <form method="post" action="upDateCustomerForm.jsp">
        <input type="hidden" name="CustomerID" value="<%= resultset.getString("CustomerID") %>">
        <input type="hidden" name="firstName" value="<%= resultset.getString("firstName") %>">
        <input type="hidden" name="lastName" value="<%= resultset.getString("lastName") %>">
        <input type="hidden" name="email" value="<%= resultset.getString("email") %>">
        <input type="hidden" name="phoneNum" value="<%= resultset.getString("phoneNum") %>">
        <input type="hidden" name="location" value="<%= resultset.getString("location") %>">
        <input type="hidden" name="sLevel" value="<%= resultset.getString("sLevel") %>">
        <input type="submit" value="Update">
      </form>
  </td>
    <td class="button">
      <form action="deleteCustomer.jsp" method="post">
        <input type="hidden" name="id" value="<%= resultset.getString("CustomerID") %>">
        <input type="submit" value="Delete">
      </form>
    </td>
  </TR>
  <%
    if (connection != null) {
      resultset.close();
    }
    if (statement != null) {
      statement.close();
    }
    if (connection != null) {
      connection.close();
    }

  %>
</table>
</body>
</html>
