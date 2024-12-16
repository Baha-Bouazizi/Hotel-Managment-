<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="models.Account" %>
<%@ page import="controllers.AccountController" %>

<!DOCTYPE html>
<html>
<head>
  <title>Register</title>
</head>
<body>
<h2>Register</h2>

<% String errorMessage = null; %>

<% if (request.getAttribute("errorMessage") != null) { %>
<p style="color: red;"><%= request.getAttribute("errorMessage") %></p>
<% } %>

<form method="post" action="account?action=register">
  <label for="username">Username:</label>
  <input type="text" id="username" name="username" required><br><br>

  <label for="email">Email:</label>
  <input type="email" id="email" name="email" required><br><br>

  <label for="password">Password:</label>
  <input type="password" id="password" name="password" required><br><br>

  <input type="submit" value="Register">
</form>

<p>Already have an account? <a href="login.jsp">Login</a></p>
</body>
</html>
