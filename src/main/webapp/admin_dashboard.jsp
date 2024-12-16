<!DOCTYPE html>
<html>
<head>
  <title>Dashboard Admin</title>
</head>
<body>
<h1>Tableau de bord Admin</h1>

<h2>Liste des Agents</h2>
<table border="1">
  <thead>
  <tr>
    <th>ID</th>
    <th>Nom d'utilisateur</th>
    <th>Email</th>
    <th>Rôle</th>
    <th>Actions</th>
  </tr>
  </thead>
  <tbody>
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
  </tbody>
</table>

<br>
<a href="createAgent.jsp">Créer un Nouvel Agent</a> <!-- Lien vers la page de création -->

</body>
</html>
