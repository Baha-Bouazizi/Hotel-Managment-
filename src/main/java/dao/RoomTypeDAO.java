package dao;

import models.RoomType;
import utils.DatabaseConnection;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class RoomTypeDAO {

    public List<RoomType> getAllRoomTypes() {
        List<RoomType> roomTypes = new ArrayList<>();
        String query = "SELECT * FROM RoomType";

        try (Connection connection = DatabaseConnection.getConnection();
             Statement statement = connection.createStatement();
             ResultSet resultSet = statement.executeQuery(query)) {

            while (resultSet.next()) {
                RoomType roomType = new RoomType();
                roomType.setId(resultSet.getInt("id"));
                roomType.setLabel(resultSet.getString("label"));
                roomType.setCapacity(resultSet.getInt("capacity"));
                roomType.setPrice(resultSet.getInt("price"));
                roomTypes.add(roomType);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return roomTypes;
    }

    // Autres méthodes CRUD pour RoomType (ajouter, modifier, supprimer) à suivre...
}
