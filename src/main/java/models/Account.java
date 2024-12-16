package models;

public class Account {
    private int id;
    private String username;
    private String password;
    private String email;
    private String role;

    // Getters et Setters
    public int getId() { return id; }
    public void setId(int id) { this.id = id; }

    public String getUsername() { return username; }
    public void setUsername(String username) { this.username = username; }

    public String getPassword() { return password; }
    public void setPassword(String password) { this.password = password; }

    public String getEmail() { return email; }
    public void setEmail(String email) {
        this.email = email;
        // Gestion automatique du rôle
        if (email.equals("baha.bouazizi@isimg.tn")) {
            this.role = "admin"; // Admin par défaut
        } else {
            this.role = "user"; // Par défaut user, sauf pour l'admin
        }
    }

    public String getRole() { return role; }
    public void setRole(String role) { this.role = role; }
}
