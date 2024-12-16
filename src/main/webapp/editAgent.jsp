<!DOCTYPE html>
<html>
<head>
    <title>Modifier l'Agent</title>
</head>
<body>

<h2>Modifier les Détails de l'Agent</h2>

<form action="account" method="post">
    <input type="hidden" name="action" value="editAgent">
    <input type="hidden" name="id" value="${agent.id}">

    <label for="username">Nom d'utilisateur :</label>
    <input type="text" id="username" name="username" value="${agent.username}" required><br><br>

    <label for="email">Email :</label>
    <input type="email" id="email" name="email" value="${agent.email}" required><br><br>

    <label for="password">Mot de passe :</label>
    <input type="password" id="password" name="password" value="${agent.password}" required><br><br>

    <button type="submit">Mettre à jour</button>
</form>

</body>
</html>
