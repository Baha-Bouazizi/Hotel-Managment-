<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
  <title>All Reservations</title>
</head>
<body>
<h2>Reservations</h2>

<c:if test="${empty reservations}">
  <p>No reservations found.</p>
</c:if>

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

<a href="addReservation.jsp">Add New Reservation</a>
</body>
</html>
