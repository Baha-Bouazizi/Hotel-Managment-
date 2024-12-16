<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <title>Liste des Hôtels</title>
</head>
<body>
<h1>Liste des Hôtels</h1>

<table>
    <thead>
    <tr>
        <th>Nom</th>
        <th>Ville</th>
        <th>Étoiles</th>
        <th>Description</th>
        <th>Actions</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="hotel" items="${hotels}">
        <tr>
            <td>${hotel.name}</td>
            <td>${hotel.city}</td>
            <td>${hotel.stars}</td>
            <td>${hotel.description}</td>
            <td>
                <a href="HotelController?action=edit&id=${hotel.id}">Modifier</a> |
                <a href="HotelController?action=delete&id=${hotel.id}">Supprimer</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>

<a href="HotelController?action=add">Ajouter un Hôtel</a>
</body>
</html>
