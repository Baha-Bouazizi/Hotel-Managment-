package dao;

import models.Account;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import utils.DatabaseConnection ;
public class AdminDAO {

    // Vérifier si l'email existe déjà
    public boolean emailExists(String email) {
        String query = "SELECT COUNT(*) FROM Account WHERE email = ?";
        try (Connection connection = DatabaseConnection.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(query)) {

            preparedStatement.setString(1, email);
            ResultSet resultSet = preparedStatement.executeQuery();
            if (resultSet.next()) {
                return resultSet.getInt(1) > 0; // Retourne true si un email existe
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    // Création d'un agent
    public boolean createAgentAccount(String username, String email, String password) {
        if (emailExists(email)) {
            return false; // Ne pas créer si l'email existe déjà
        }

        String query = "INSERT INTO Account (username, email, password, role) VALUES (?, ?, ?, ?)";
        try (Connection connection = DatabaseConnection.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(query)) {

            preparedStatement.setString(1, username);
            preparedStatement.setString(2, email);
            preparedStatement.setString(3, password);
            preparedStatement.setString(4, "agent"); // Rôle forcé à "agent"

            int rowsInserted = preparedStatement.executeUpdate();
            return rowsInserted > 0;

        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    // Liste des agents
    public List<Account> getAllAgents() {
        String query = "SELECT * FROM Account WHERE role = 'agent'";
        List<Account> agents = new ArrayList<>();
        try (Connection connection = DatabaseConnection.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(query)) {

            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                Account account = new Account();
                account.setId(resultSet.getInt("id"));
                account.setUsername(resultSet.getString("username"));
                account.setEmail(resultSet.getString("email"));
                account.setPassword(resultSet.getString("password"));
                account.setRole(resultSet.getString("role"));
                agents.add(account);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return agents;
    }
    public Account getAgentById(int id) {
        String query = "SELECT * FROM Account WHERE id = ?";
        try (Connection connection = DatabaseConnection.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(query)) {

            preparedStatement.setInt(1, id);
            ResultSet resultSet = preparedStatement.executeQuery();
            if (resultSet.next()) {
                Account account = new Account();
                account.setId(resultSet.getInt("id"));
                account.setUsername(resultSet.getString("username"));
                account.setEmail(resultSet.getString("email"));
                account.setPassword(resultSet.getString("password"));
                account.setRole(resultSet.getString("role"));
                return account;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    // Supprimer un agent par ID
    public boolean deleteAgent(int id) {
        String query = "DELETE FROM Account WHERE id = ?";
        try (Connection connection = DatabaseConnection.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(query)) {

            preparedStatement.setInt(1, id);
            int rowsDeleted = preparedStatement.executeUpdate();
            return rowsDeleted > 0;

        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    // Modifier les détails d'un agent
    public boolean updateAgent(Account agent) {
        String query = "UPDATE Account SET username = ?, email = ?, password = ?, role = ? WHERE id = ?";
        try (Connection connection = DatabaseConnection.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(query)) {

            preparedStatement.setString(1, agent.getUsername());
            preparedStatement.setString(2, agent.getEmail());
            preparedStatement.setString(3, agent.getPassword());
            preparedStatement.setString(4, agent.getRole());
            preparedStatement.setInt(5, agent.getId());

            int rowsUpdated = preparedStatement.executeUpdate();
            return rowsUpdated > 0;

        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
    public boolean verifyAdmin(Account account) {
        String query = "SELECT * FROM Account WHERE email = ? AND password = ? AND role = 'admin'";

        try (Connection connection = DatabaseConnection.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(query)) {

            preparedStatement.setString(1, account.getEmail());
            preparedStatement.setString(2, account.getPassword());

            ResultSet resultSet = preparedStatement.executeQuery();
            return resultSet.next();

        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

}
