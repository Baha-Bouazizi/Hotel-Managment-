<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
  <title>Add Room Type</title>
</head>
<body>
<h2>Add New Room Type</h2>

<form action="addRoomType" method="post">
  <label for="type">Room Type:</label><br>
  <input type="text" id="type" name="type"><br><br>

  <label for="capacity">Capacity:</label><br>
  <input type="text" id="capacity" name="capacity"><br><br>

  <label for="price">Price:</label><br>
  <input type="text" id="price" name="price"><br><br>

  <input type="submit" value="Add Room Type">
</form>
</body>
</html>
