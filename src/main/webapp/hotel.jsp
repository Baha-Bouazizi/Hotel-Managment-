<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
  <title>Hotel List</title>
</head>
<body>
<h2>Hotel List</h2>

<c:if test="${not empty errorMessage}">
  <p style="color: red;">${errorMessage}</p>
</c:if>

<c:if test="${empty hotels}">
  <p>No hotels found.</p>
</c:if>

<table border="1">
  <tr>
    <th>ID</th>
    <th>Name</th>
    <th>City</th>
    <th>Stars</th>
    <th>Description</th>
    <th>Image</th>
  </tr>
  <c:forEach var="hotel" items="${hotels}">
    <tr>
      <td>${hotel.id}</td>
      <td>${hotel.name}</td>
      <td>${hotel.city}</td>
      <td>${hotel.stars}</td>
      <td>${hotel.description}</td>
      <td><img src="${hotel.image}" alt="${hotel.name}" style="width: 100px; height: auto;"></td>
    </tr>
  </c:forEach>
</table>
</body>
</html>
