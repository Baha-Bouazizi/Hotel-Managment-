<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
  <title>Reservation Details</title>
</head>
<body>
<h2>Reservation Details</h2>

<table border="1">
  <tr>
    <th>ID</th>
    <th>Account ID</th>
    <th>Event ID</th>
    <th>Status</th>
  </tr>
  <c:forEach var="reservation" items="${reservations}">
    <tr>
      <td>${reservation.id}</td>
      <td>${reservation.accountId}</td>
      <td>${reservation.eventId}</td>
      <td>${reservation.status}</td>
    </tr>
  </c:forEach>
</table>
</body>
</html>
