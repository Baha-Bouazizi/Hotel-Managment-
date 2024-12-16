<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <title>Add Hotel</title>
</head>
<body>
<h2>Add New Hotel</h2>

<form action="addHotel" method="post">
    <label for="name">Hotel Name:</label><br>
    <input type="text" id="name" name="name"><br><br>

    <label for="location">Location:</label><br>
    <input type="text" id="location" name="location"><br><br>

    <label for="rating">Rating:</label><br>
    <input type="text" id="rating" name="rating"><br><br>

    <input type="submit" value="Add Hotel">
</form>
</body>
</html>
