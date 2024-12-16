<!DOCTYPE html>
<html>
<head>
  <title>Liste des Agents</title>
</head>
<body>
<h1>Liste des Agents</h1>
<table border="1">
  <thead>
  <tr>
    <th>ID</th>
    <th>Nom d'utilisateur</th>
    <th>Email</th>
    <th>Rôle</th>
  </tr>
  </thead>
  <tbody>
  <c:forEach var="agent" items="${agents}">
    <tr>
      <td>${agent.id}</td>
      <td>${agent.username}</td>
      <td>${agent.email}</td>
      <td>${agent.role}</td>
    </tr>
  </c:forEach>
  </tbody>
</table>
<br>
<a href="admin?action=createAgent">Créer un nouvel Agent</a>
</body>
</html>
