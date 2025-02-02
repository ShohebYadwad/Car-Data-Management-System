<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Car Dashboard</title>
    <style>
        /* General body styling */
        body {
            font-family: Arial, sans-serif;
            background-image: url("Images/Car.jpg"); /* Corrected path */
            background-size: cover; /* Ensures full coverage */
            background-position: center; /* Centers the image */
            background-repeat: no-repeat; /* Prevents tiling */
            height: 100vh; /* Full screen height */
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            margin: 0;
            padding: 0;
            text-align: center;
        }

        /* Header styling */
        h1 {
            font-size: 2.5rem;
            color: #fff; /* Better visibility on any background */
            text-shadow: 2px 2px 5px rgba(0, 0, 0, 0.6);
        }

        /* Sub-header styling */
        h2 {
            font-size: 1.5rem;
            margin: 20px 0;
        }

        /* Link styling for buttons */
        a {
            text-decoration: none;
            color: #fff;
            font-weight: bold;
            background-color:#292222;
            padding: 12px 25px;
            border-radius: 8px;
            transition: all 0.3s ease-in-out;
            display: inline-block;
        }

        /* Hover effect for links */
        a:hover {
            background-color: black;
            color: white;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
        }
    </style>
</head>
<body>
    <h1>Welcome To Car Dashboard!!</h1>
    <h2><a href="AddCar.jsp">ADD NEW CAR</a></h2>
    <h2><a href="display-all-cars">DISPLAY ALL CARS</a></h2>
</body>
</html>
