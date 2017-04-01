
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="style.css">
    <title>Update Customer Form</title>
</head>
<body>
<h1>Update Customer <%= request.getParameter("CustomerID") %></h1>
<form method="post" action="updateCustomer.jsp">
    First Name: <input type="text" name="firstName" value="<%= request.getParameter("firstName") %>"><br>
    <input type="hidden" name="CustomerID" value="<%= request.getParameter("CustomerID") %>">
    Last Name: <input type="text" name="lastName" value="<%= request.getParameter("lastName") %>"><br>
    email: <input type="text" name="email" value="<%= request.getParameter("email") %>"><br>
    Phone Number: <input type="text" name="phoneNum" value="<%= request.getParameter("phoneNum") %>"><br>
    <select name="location" id="location">
        <option value="">Choose a Location</option>
        <option value="Judo">Kodokan (Judo)</option>
        <option value="Aikido">Aikikai Hombu Dōjō (Aikido)</option>
        <option value="Kendo">Noma dojo (Kendo)</option>
        <option value="Shorin-Ryu Shorinkan">Nakazato Karate Weapons Gym (Shorin-Ryu Shorinkan)</option>
    </select>
    <select name="sLevel" id="sLevel">
        <option value="">Choose a Skill Level</option>
        <option value="Beginner">Beginner</option>
        <option value="Intermediate">Intermediate</option>
        <option value="Advanced">Advanced</option>
    </select>
    <input type="submit" value="Update">
    <input type="reset" value="Reset Form">
</form>
</body>
</html>

