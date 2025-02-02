<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Car List</title>
<style>

    body {
       
        font-family: Arial, sans-serif;
        background: url('Images/Display.jpg') no-repeat center center fixed;
        background-size: cover;
        text-align: center;
        margin: 20px;
        color:  dark blue;
        margin: auto;
        
    }
    table {
        width: 80%;
        margin: auto;
        border-collapse: collapse;
        background: rgba(255, 255, 255, 0.2); /* Transparent background */
        backdrop-filter: blur(10px); /* Glassmorphism effect */
        box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.2);
        border-radius: 10px;
        overflow: hidden;
    }
    th, td {
        padding: 12px;
        text-align: center;
        border-bottom: 1px solid rgba(255, 255, 255, 0.3);
        color: black;
    }
    th {
        background-color: rgba(0, 123, 255, 0.3);
        text-transform: uppercase;
    }
    tr:nth-child(even) {
        background-color: rgba(255, 255, 255, 0.1);
    }
    tr:hover {
        background-color: rgba(255, 255, 255, 0.3);
        transition: 0.3s;
    }
    .btn {
        padding: 8px 12px;
        text-decoration: none;
        color: white;
        border-radius: 5px;
        font-size: 14px;
        transition: 0.3s;
    }
    .btn-update {
        background-color: rgba(40, 167, 69, 0.7);
    }
    .btn-update:hover {
        background-color: rgba(40, 167, 69, 1);
    }
    .btn-delete {
        background-color: rgba(220, 53, 69, 0.7);
    }
    .btn-delete:hover {
        background-color: rgba(220, 53, 69, 1);
    }
    .home-btn {
        display: inline-block;
        margin-top: 20px;
        padding: 10px 20px;
        background-color: rgba(0, 123, 255, 0.7);
        color: white;
        text-decoration: none;
        font-size: 16px;
        border-radius: 5px;
        transition: 0.3s;
    }
    .home-btn:hover {
        background-color: rgba(0, 123, 255, 1);
    }
</style>
</head>
<body>
<h1 >All cars information!</h1>

<%
ResultSet rs = (ResultSet) request.getAttribute("carList");
if (rs != null) {
%>

<table>
    <tr>
        <th>Car ID</th>
        <th>Car Model</th>
        <th>Car Brand</th>
        <th>Car Colour</th>
        <th>Car Price</th>
        <th>Update</th>
        <th>Delete</th>
    </tr>
  
    <% while (rs.next()) { %>
    <tr>
        <td><%= rs.getInt("CarId") %></td>
        <td><%= rs.getString("CarModel") %></td>
        <td><%= rs.getString("CarBrand") %></td>
        <td><%= rs.getString("CarColour") %></td>
        <td><%= rs.getInt("CarPrice") %>.Rs(₹)</td>
        <td><a class="btn btn-update" href="find-car-by-id?carId=<%= rs.getInt("CarId") %>">UPDATE</a></td>
        <td><a class="btn btn-delete" href="delete-car-by-id?carId=<%= rs.getInt("CarId") %>">DELETE</a></td>
    </tr>
    <% } %>

</table>

<% } else { %>
    <p>No cars found.</p>
<% } %>

<h2><a class="home-btn" href="Index.jsp">Back To Home</a></h2>

</body>
</html>
