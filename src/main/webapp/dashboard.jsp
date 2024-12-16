<!DOCTYPE html>
<html>
<head>
    <title>Tableau de Bord des Agents</title>
</head>
<body>

<h2>Tableau de Bord des Agents</h2>

<table border="1">
    <tr>
        <th>ID</th>
        <th>Nom d'utilisateur</th>
        <th>Email</th>
        <th>Rôle</th>
        <th>Actions</th>
    </tr>
    <c:forEach var="agent" items="${agents}">
        <tr>
            <td>${agent.id}</td>
            <td>${agent.username}</td>
            <td>${agent.email}</td>
            <td>${agent.role}</td>
            <td>
                <a href="admin?action=editAgent&id=${agent.id}">Modifier</a> |
                <a href="admin?action=deleteAgent&id=${agent.id}" onclick="return confirm('Êtes-vous sûr de vouloir supprimer cet agent ?')">Supprimer</a>
            </td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
