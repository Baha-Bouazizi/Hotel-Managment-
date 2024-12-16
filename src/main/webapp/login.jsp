<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Connexion</title>
</head>
<body>
<h2>Connexion</h2>
<form action="admin" method="POST">
    <input type="hidden" name="action" value="login">
    <label for="email">Email:</label>
    <input type="email" id="email" name="email" required><br><br>
    <label for="password">Mot de passe:</label>
    <input type="password" id="password" name="password" required><br><br>
    <input type="submit" value="Connexion">
</form>

<c:if test="${not empty error}">
    <p style="color:red;">${error}</p>
</c:if>
</body>
</html>
