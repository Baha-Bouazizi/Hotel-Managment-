package controllers;

import dao.ReservationDAO;
import models.Reservation;
import jakarta.servlet.http.HttpServletRequest;
import java.util.List;

public class ReservationController {

    private ReservationDAO reservationDAO;

    public ReservationController() {
        this.reservationDAO = new ReservationDAO();
    }

    public void fetchAllReservations(HttpServletRequest request) {
        List<Reservation> reservations = reservationDAO.getAllReservations();
        request.setAttribute("reservations", reservations);
    }

    public boolean createReservation(HttpServletRequest request, Reservation reservation) {
        return reservationDAO.addReservation(reservation);
    }

    // Autres méthodes pour gérer les réservations (modifier, supprimer) à suivre...
}
