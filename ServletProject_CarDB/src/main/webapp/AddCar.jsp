<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Car Details Form</title>
    <link rel="stylesheet" type="text/css" href="css/Style.css">
</head>
<body>
    <h1 class="heading">Enter the Car Details</h1>
    <form action="add-car" method="post">
        <input type="number" placeholder="Enter CarID" name="carId"> <br>
        <input type="text" placeholder="Enter CarModel" name="carModel"> <br>
        <input type="text" placeholder="Enter CarBrand" name="carBrand"> <br>
        <input type="text" placeholder="Enter CarColour" name="carColour"> <br>
        <input type="number" placeholder="Enter CarPrice" name="carPrice"> <br>
        <input type="submit" value="Add">
    </form>
</body>
</html>
