package dao;

import models.Reservation;
import utils.DatabaseConnection;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ReservationDAO {

    public List<Reservation> getAllReservations() {
        List<Reservation> reservations = new ArrayList<>();
        String query = "SELECT * FROM Reservation";

        try (Connection connection = DatabaseConnection.getConnection();
             Statement statement = connection.createStatement();
             ResultSet resultSet = statement.executeQuery(query)) {

            while (resultSet.next()) {
                Reservation reservation = new Reservation();
                reservation.setId(resultSet.getInt("id"));
                reservation.setHotelId(resultSet.getInt("hotel_id"));
                reservation.setRoomTypeId(resultSet.getInt("room_type_id"));
                reservation.setAccountId(resultSet.getInt("account_id"));
                reservation.setCheckInDate(resultSet.getString("check_in_date"));
                reservation.setCheckOutDate(resultSet.getString("check_out_date"));
                reservation.setGuestName(resultSet.getString("guest_name"));
                reservation.setGuestEmail(resultSet.getString("guest_email"));
                reservation.setGuestPhone(resultSet.getString("guest_phone"));
                reservations.add(reservation);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return reservations;
    }

    public boolean addReservation(Reservation reservation) {
        String query = "INSERT INTO Reservation (hotel_id, room_type_id, account_id, check_in_date, check_out_date, guest_name, guest_email, guest_phone) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";

        try (Connection connection = DatabaseConnection.getConnection();
             PreparedStatement statement = connection.prepareStatement(query)) {

            statement.setInt(1, reservation.getHotelId());
            statement.setInt(2, reservation.getRoomTypeId());
            statement.setInt(3, reservation.getAccountId());
            statement.setString(4, reservation.getCheckInDate());
            statement.setString(5, reservation.getCheckOutDate());
            statement.setString(6, reservation.getGuestName());
            statement.setString(7, reservation.getGuestEmail());
            statement.setString(8, reservation.getGuestPhone());

            return statement.executeUpdate() > 0;

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return false;
    }

    // Autres méthodes CRUD pour Reservation (modifier, supprimer) à suivre...
}
