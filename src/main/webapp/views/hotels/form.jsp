<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
  <title>Formulaire d'Hôtel</title>
</head>
<body>
<h1>${action == 'edit' ? 'Modifier Hôtel' : 'Ajouter Hôtel'}</h1>

<form action="HotelController" method="post">
  <input type="hidden" name="action" value="${action}">
  <input type="hidden" name="id" value="${hotel.id}">

  <label>Nom : </label>
  <input type="text" name="name" value="${hotel.name}" required><br>

  <label>Ville : </label>
  <input type="text" name="city" value="${hotel.city}" required><br>

  <label>Étoiles : </label>
  <input type="number" name="stars" value="${hotel.stars}" required><br>

  <label>Description : </label>
  <textarea name="description" required>${hotel.description}</textarea><br>

  <input type="submit" value="Soumettre">
  <a href="HotelController?action=list">Annuler</a>
</form>
</body>
</html>
