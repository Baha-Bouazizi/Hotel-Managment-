<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <title>Add Account</title>
</head>
<body>
<h2>Add New Account</h2>

<form action="addAccount" method="post">
    <label for="username">Username:</label><br>
    <input type="text" id="username" name="username"><br><br>

    <label for="password">Password:</label><br>
    <input type="password" id="password" name="password"><br><br>

    <label for="email">Email:</label><br>
    <input type="text" id="email" name="email"><br><br>

    <label for="role">Role:</label><br>
    <input type="text" id="role" name="role"><br><br>

    <input type="submit" value="Add Account">
</form>
</body>
</html>
