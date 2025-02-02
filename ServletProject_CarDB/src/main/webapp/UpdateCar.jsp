
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
 <style>
       body {
    font-family: Arial, sans-serif;
    background-image: url("Images/Update.jpg"); /* Updated path */
    background-size: cover;
    background-position: center;
    background-repeat: no-repeat;
    background-attachment: fixed;
    text-align: center;
    padding: 50px;
    padding-top: 20px !important;
    animation: fadeInBackground 1.5s ease-in-out;
}

/* Background Fade-in Animation */
@keyframes fadeInBackground {
    from {
        opacity: 0;
    }
    to {
        opacity: 1;
    }
}

h1 {
    color: aqua;
    opacity: 10;
    animation: slideDown 2s ease-in-out forwards;
    
}

/* Heading Slide-down Animation */
@keyframes slideDown {
    from {
        transform: translateY(-50px);
        opacity: 0;
    }
    to {
        transform: translateY(0);
        opacity: 1;
    }
}

form {
    background: transparent black; /* Transparent white */
    padding: 20px 50px 20px 30px;
    border-radius: 10px;
    box-shadow: 0px 0px 20px rgb(0, 0, 0);
    display: inline-block;
    text-align: left;
    width: 26rem;
    opacity: 0;
    animation: fadeInUp 1s ease-in-out forwards 0.5s;
}

/* Form Fade-in Up Animation */
@keyframes fadeInUp {
    from {
        transform: translateY(50px);
        opacity: 0;
    }
    to {
        transform: translateY(0);
        opacity: 1;
    }
}

input {
    width: 100%;
    padding: 10px;
    margin: 10px 0;
    border: 1px solid #ccc;
    border-radius: 5px;
    font-size: 16px;
    transition: all 0.3s ease-in-out;
    background: rgba(255, 255, 255, 0.5); /* Slightly transparent input fields */
}

/* Placeholder color */
input::placeholder {
    color: black;
    font-weight: bold;
}

/* Input Field Focus Animation */
input:focus {
    border-color: #28a745;
    box-shadow: 0 0 10px rgba(40, 167, 69, 0.5);
    transform: scale(1.05);
}

/* Submit Button Animation */
input[type="submit"] {
    background-color: aqua;
    color: white;
    border: none;
    cursor: pointer;
    font-weight: bold;
    padding: 8px 20px; /* Reduced padding */
    font-size: 14px; /* Reduced font size */
    transition: all 0.3s ease-in-out;
    width: 200px ;
    position:inherit;
    margin: 10px auto;
}

/* Submit Button Hover Effect */
input[type="submit"]:hover {
    background-color: black;
    transform: scale(1.05);
}

/* Heading Styling */
.heading {
    font-size: 3rem;
    color: gray-blue;
    margin-top: 0px;
    animation: slideDown 1s ease-in-out forwards 0.3s;
}
    </style>
<body>
<%
	ResultSet rs = (ResultSet) request.getAttribute("carObject");
    rs.next();
    
	%>
<h1> Enter Updated Feilds:- </h1>
<form action="Save-Update-Car" method="post">
<input type="number" value=<%=rs.getInt(1)%>  name="carId" readonly="readonly"><br>
<input type="text"   value=<%=rs.getString(2)%> name="carModel"><br>
<input type="text"   value=<%=rs.getString(3)%> name="carBrand"><br>
<input type= "text"  value=<%=rs.getString(4)%> name="carColour"><br>
<input type="number" value=<%=rs.getInt(5)%> name="carPrice"><br>
<input type="submit" value="UPDATE">
</form>
</body>
</html>