package controllers;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;

import models.Account;
import dao.AccountDAO;

@WebServlet("/account")
public class AccountController extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if ("register".equals(action)) {
            String username = request.getParameter("username");
            String email = request.getParameter("email");
            String password = request.getParameter("password");

            AccountDAO accountDAO = new AccountDAO();
            Account existingAccount = accountDAO.getAccountByEmail(email);

            if (existingAccount != null) {
                request.setAttribute("errorMessage", "Cet email existe déjà.");
                request.getRequestDispatcher("register.jsp").forward(request, response);
            } else {
                Account account = new Account();
                account.setUsername(username);
                account.setEmail(email);
                account.setPassword(password);
                account.setRole("user");

                boolean success = accountDAO.createAccount(account);

                if (success) {
                    response.sendRedirect("login.jsp");
                } else {
                    request.setAttribute("errorMessage", "Registration failed. Please try again.");
                    request.getRequestDispatcher("register.jsp").forward(request, response);
                }
            }
        }
    }

}
