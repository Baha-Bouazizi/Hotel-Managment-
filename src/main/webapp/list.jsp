<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <title>Liste des Comptes Utilisateurs</title>
</head>
<body>
<h1>Liste des Comptes Utilisateurs</h1>

<table>
    <thead>
    <tr>
        <th>Nom d'utilisateur</th>
        <th>Email</th>
        <th>Rôle</th>
        <th>Actions</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="account" items="${accounts}">
        <tr>
            <td>${account.username}</td>
            <td>${account.email}</td>
            <td>${account.role}</td>
            <td>
                <a href="AccountController?action=edit&id=${account.id}">Modifier</a> |
                <a href="AccountController?action=delete&id=${account.id}">Supprimer</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>

<a href="AccountController?action=add">Ajouter un Compte</a>
</body>
</html>
