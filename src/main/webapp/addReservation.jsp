<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
  <title>Add Reservation</title>
</head>
<body>
<h2>Add New Reservation</h2>

<form action="addReservation" method="post">
  <label for="accountId">Account ID:</label><br>
  <input type="text" id="accountId" name="accountId"><br><br>

  <label for="eventId">Event ID:</label><br>
  <input type="text" id="eventId" name="eventId"><br><br>

  <label for="status">Status:</label><br>
  <input type="text" id="status" name="status"><br><br>

  <input type="submit" value="Add Reservation">
</form>
</body>
</html>
