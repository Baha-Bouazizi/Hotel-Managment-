package controllers;

import dao.HotelDAO;
import models.Hotel;
import jakarta.servlet.http.HttpServletRequest;
import java.util.List;

public class HotelController {

    private HotelDAO hotelDAO;

    public HotelController() {
        this.hotelDAO = new HotelDAO();
    }

    public void fetchAllHotels(HttpServletRequest request) {
        List<Hotel> hotels = hotelDAO.getAllHotels();
        request.setAttribute("hotels", hotels);
    }

    // Méthodes pour gérer les hôtels (ajouter, modifier, supprimer) à suivre...
}
