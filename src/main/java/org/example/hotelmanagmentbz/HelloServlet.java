package org.example.hotelmanagmentbz;

import utils.DatabaseConnection;
import java.io.*;
import java.sql.Connection;
import java.sql.SQLException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "helloServlet", value = "/hello-servlet")
public class HelloServlet extends HttpServlet {
    private String message;

    public void init() {
        message = "Hello World!";
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        // Test de connexion à la base de données
        try (Connection connection = DatabaseConnection.getConnection()) {
            if (connection != null) {
                out.println("<html><body>");
                out.println("<h1>" + message + "</h1>");
                out.println("<p>Connexion à la base de données réussie !</p>");
            } else {
                out.println("<html><body>");
                out.println("<h1>" + message + "</h1>");
                out.println("<p>Échec de la connexion à la base de données.</p>");
            }
        } catch (SQLException e) {
            out.println("<html><body>");
            out.println("<h1>" + message + "</h1>");
            out.println("<p>Erreur de connexion : " + e.getMessage() + "</p>");
        }
        out.println("</body></html>");
    }

    public void destroy() {
    }
}
