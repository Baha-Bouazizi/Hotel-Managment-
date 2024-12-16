package dao;

import java.sql.*;
import models.Account;
import utils.DatabaseConnection;

public class AccountDAO {

    public boolean createAccount(Account account) {
        // Vérifier si l'email existe déjà
        if (getAccountByEmail(account.getEmail()) != null) {
            return false; // L'email existe déjà
        }

        String query = "INSERT INTO Account (username, password, email, role) VALUES (?, ?, ?, ?)";

        try (Connection connection = DatabaseConnection.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(query)) {

            preparedStatement.setString(1, account.getUsername());
            preparedStatement.setString(2, account.getPassword());
            preparedStatement.setString(3, account.getEmail());
            preparedStatement.setString(4, account.getRole());

            int rowsAffected = preparedStatement.executeUpdate();
            return rowsAffected > 0;

        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public Account getAccountByEmail(String email) {
        String query = "SELECT * FROM Account WHERE email = ?";
        Account account = null;

        try (Connection connection = DatabaseConnection.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(query)) {

            preparedStatement.setString(1, email);

            ResultSet resultSet = preparedStatement.executeQuery();
            if (resultSet.next()) {
                account = new Account();
                account.setId(resultSet.getInt("id"));
                account.setUsername(resultSet.getString("username"));
                account.setPassword(resultSet.getString("password"));
                account.setEmail(resultSet.getString("email"));
                account.setRole(resultSet.getString("role"));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return account;
    }

}
