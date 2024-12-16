<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <title>Liste des Types de Chambres</title>
</head>
<body>
<h1>Liste des Types de Chambres</h1>

<table>
    <thead>
    <tr>
        <th>Nom</th>
        <th>Description</th>
        <th>Prix par nuit</th>
        <th>Actions</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="roomType" items="${roomTypes}">
        <tr>
            <td>${roomType.name}</td>
            <td>${roomType.description}</td>
            <td>${roomType.pricePerNight}</td>
            <td>
                <a href="RoomTypeController?action=edit&id=${roomType.id}">Modifier</a> |
                <a href="RoomTypeController?action=delete&id=${roomType.id}">Supprimer</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>

<a href="RoomTypeController?action=add">Ajouter un Type de Chambre</a>
</body>
</html>
