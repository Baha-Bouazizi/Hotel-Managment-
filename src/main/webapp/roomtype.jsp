<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
  <title>Room Type List</title>
</head>
<body>
<h2>Room Type List</h2>

<c:if test="${empty roomTypes}">
  <p>No room types found.</p>
</c:if>

<table border="1">
  <tr>
    <th>ID</th>
    <th>Name</th>
    <th>Description</th>
  </tr>
  <c:forEach var="roomType" items="${roomTypes}">
    <tr>
      <td>${roomType.id}</td>
      <td>${roomType.name}</td>
      <td>${roomType.description}</td>
    </tr>
  </c:forEach>
</table>
</body>
</html>
