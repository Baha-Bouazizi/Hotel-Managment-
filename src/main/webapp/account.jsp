<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*, models.Account" %>
<%@ page import="controllers.AccountController" %>

<!DOCTYPE html>
<html>
<head>
  <title>Account List</title>
</head>
<body>
<h2>Account List</h2>

<%
  AccountController accountController = new AccountController();
  accountController.fetchAllAccounts(request);

  List<Account> accounts = (List<Account>) request.getAttribute("accounts");
  String errorMessage = null;

  if (accounts != null && !accounts.isEmpty()) {
%>
<table border="1">
  <tr>
    <th>ID</th>
    <th>Username</th>
    <th>Email</th>
    <th>Role</th>
  </tr>
  <%
    for (Account account : accounts) {
  %>
  <tr>
    <td><%= account.getId() %></td>
    <td><%= account.getUsername() %></td>
    <td><%= account.getEmail() %></td>
    <td><%= account.getRole() %></td>
  </tr>
  <%
    }
  %>
</table>
<%
} else if (errorMessage != null) {
%>
<p style="color: red;"><%= errorMessage %></p>
<%
} else {
%>
<p>No accounts found.</p>
<%
  }
%>
</body>
</html>
