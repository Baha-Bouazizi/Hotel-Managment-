package dao;

import models.Hotel;
import utils.DatabaseConnection;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class HotelDAO {

    public List<Hotel> getAllHotels() {
        List<Hotel> hotels = new ArrayList<>();
        String query = "SELECT * FROM Hotel";

        try (Connection connection = DatabaseConnection.getConnection();
             Statement statement = connection.createStatement();
             ResultSet resultSet = statement.executeQuery(query)) {

            while (resultSet.next()) {
                Hotel hotel = new Hotel();
                hotel.setId(resultSet.getInt("id"));
                hotel.setName(resultSet.getString("name"));
                hotel.setCity(resultSet.getString("city"));
                hotel.setStars(resultSet.getInt("stars"));
                hotel.setDescription(resultSet.getString("description"));
                hotel.setImage(resultSet.getString("image"));
                hotels.add(hotel);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return hotels;
    }

    // Autres méthodes CRUD pour Hotel (ajouter, modifier, supprimer) à suivre...
}
