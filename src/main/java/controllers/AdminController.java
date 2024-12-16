package controllers;

import dao.AdminDAO;
import models.Account;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/admin")
public class AdminController extends HttpServlet {
    private AdminDAO adminDAO = new AdminDAO();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if ("login".equals(action)) {
            String email = request.getParameter("email");
            String password = request.getParameter("password");

            Account account = new Account(); // Création d'un objet temporaire
            account.setEmail(email);
            account.setPassword(password);

            // Vérifier si les informations de l'admin sont correctes
            if (adminDAO.verifyAdmin(account)) {
                request.getSession().setAttribute("account", account);
                response.sendRedirect("admin_dashboard.jsp"); // Redirection vers le tableau de bord de l'admin
            } else {
                request.setAttribute("error", "Email ou mot de passe incorrect.");
                RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
                dispatcher.forward(request, response);
            }
        }
    }
}
