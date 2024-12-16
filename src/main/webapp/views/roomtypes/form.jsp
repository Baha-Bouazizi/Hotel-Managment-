<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
  <title>Formulaire de Type de Chambre</title>
</head>
<body>
<h1>${action == 'edit' ? 'Modifier Type de Chambre' : 'Ajouter Type de Chambre'}</h1>

<form action="RoomTypeController" method="post">
  <input type="hidden" name="action" value="${action}">
  <input type="hidden" name="id" value="${roomType.id}">

  <label>Nom : </label>
  <input type="text" name="name" value="${roomType.name}" required><br>

  <label>Description : </label>
  <textarea name="description" required>${roomType.description}</textarea><br>

  <label>Prix par nuit : </label>
  <input type="number" name="pricePerNight" value="${roomType.pricePerNight}" required><br>

  <input type="submit" value="Soumettre">
  <a href="RoomTypeController?action=list">Annuler</a>
</form>
</body>
</html>
