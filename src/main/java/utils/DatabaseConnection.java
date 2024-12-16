package utils;

import java.sql.Connection; // Import correct pour la connexion SQL
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Logger;

public class DatabaseConnection {
    private static final Logger logger = Logger.getLogger(DatabaseConnection.class.getName());

    public static Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver"); // Charge le driver MySQL
            connection = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/HotelManagement?useSSL=false&serverTimezone=UTC",
                    "root",
                    "12720194Baha12"
            );
        } catch (ClassNotFoundException e) {
            logger.severe("Driver MySQL introuvable : " + e.getMessage());
        } catch (SQLException e) {
            logger.severe("Erreur de connexion à la base de données : " + e.getMessage());
        }
        return connection;
    }
}
