<!DOCTYPE html>
<html>
<head>
  <title>Supprimer l'Agent</title>
</head>
<body>

<h2>Êtes-vous sûr de vouloir supprimer cet agent ?</h2>

<form action="account" method="post">
  <input type="hidden" name="action" value="deleteAgent">
  <input type="hidden" name="id" value="${agent.id}">

  <button type="submit">Supprimer</button>
  <a href="dashboard.jsp">Annuler</a>
</form>

</body>
</html>
