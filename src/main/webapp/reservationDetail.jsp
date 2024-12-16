<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
  <title>Reservation Details</title>
</head>
<body>
<h2>Reservation Details</h2>

<c:if test="${reservation == null}">
  <p>No reservation found.</p>
</c:if>

<table border="1">
  <tr>
    <th>ID</th>
    <td>${reservation.id}</td>
  </tr>
  <tr>
    <th>Account ID</th>
    <td>${reservation.accountId}</td>
  </tr>
  <tr>
    <th>Event ID</th>
    <td>${reservation.eventId}</td>
  </tr>
  <tr>
    <th>Status</th>
    <td>${reservation.status}</td>
  </tr>
</table>
</body>
</html>
