<!DOCTYPE html>
<html>
<head>
  <title>Créer un Agent</title>
</head>
<body>

<h2>Créer un Nouvel Agent</h2>

<form action="account" method="post">
  <input type="hidden" name="action" value="createAgent">
  <label for="username">Nom d'utilisateur :</label>
  <input type="text" id="username" name="username" required><br><br>

  <label for="email">Email :</label>
  <input type="email" id="email" name="email" required><br><br>

  <label for="password">Mot de passe :</label>
  <input type="password" id="password" name="password" required><br><br>

  <button type="submit">Créer</button>
</form>

</body>
</html>
