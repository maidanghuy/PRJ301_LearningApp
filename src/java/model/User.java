/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author macbookpro
 */
<<<<<<< HEAD
import java.sql.Date;

public class User {
    
=======
import java.security.SecureRandom;
import java.sql.Date;

public class User {

>>>>>>> d15b9b3f78d5c60a25cdd15e302b0e0ccac5f544
    private int userID;
    private String role;
    private String username;
    private String password;
    private String email;
    private Date dateOfBirth;
    private String status;
    private Date createdAt;
    private Date updatedAt;

<<<<<<< HEAD
=======
    private static final String CHARACTERS = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789@#$%";
    private static final int PASSWORD_LENGTH = 12;

>>>>>>> d15b9b3f78d5c60a25cdd15e302b0e0ccac5f544
    public User(int userID, String role, String username, String password, String email, Date dateOfBirth, String status) {
        this.userID = userID;
        this.role = role;
        this.username = username;
        this.password = password;
        this.email = email;
        this.dateOfBirth = dateOfBirth;
        this.status = status;
        this.createdAt = new Date(System.currentTimeMillis());
        this.updatedAt = new Date(System.currentTimeMillis());
    }
<<<<<<< HEAD
    
=======

>>>>>>> d15b9b3f78d5c60a25cdd15e302b0e0ccac5f544
    public User(String role, String username, String password, String email, Date dateOfBirth, String status) {
        this.role = role;
        this.username = username;
        this.password = password;
        this.email = email;
        this.dateOfBirth = dateOfBirth;
        this.status = status;
        this.createdAt = new Date(System.currentTimeMillis());
        this.updatedAt = new Date(System.currentTimeMillis());
    }

<<<<<<< HEAD
=======
    public User(GoogleAccount googleAccount) {
        this.username = googleAccount.getEmail();
        this.email = googleAccount.getEmail();
        this.role = "Student";
        this.status = googleAccount.isVerified_email() ? "Active" : "Inactive";
        this.password = generateRandomPassword();
        this.createdAt = new Date(System.currentTimeMillis());
        this.updatedAt = new Date(System.currentTimeMillis());
    }

    // Hàm tạo mật khẩu ngẫu nhiên
    private static String generateRandomPassword() {
        SecureRandom random = new SecureRandom();
        StringBuilder password = new StringBuilder(PASSWORD_LENGTH);

        for (int i = 0; i < PASSWORD_LENGTH; i++) {
            password.append(CHARACTERS.charAt(random.nextInt(CHARACTERS.length())));
        }
        return password.toString();
    }

>>>>>>> d15b9b3f78d5c60a25cdd15e302b0e0ccac5f544
    // Getters and Setters
    public int getUserID() {
        return userID;
    }

    public void setUserID(int userID) {
        this.userID = userID;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Date getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(Date dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Date getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(Date createdAt) {
        this.createdAt = createdAt;
    }

    public Date getUpdatedAt() {
        return updatedAt;
    }

    public void setUpdatedAt(Date updatedAt) {
        this.updatedAt = updatedAt;
    }

    @Override
    public String toString() {
<<<<<<< HEAD
        return "User{" +
                "userID=" + userID +
                ", role='" + role + '\'' +
                ", username='" + username + '\'' +
                ", email='" + email + '\'' +
                ", dateOfBirth=" + dateOfBirth +
                ", status='" + status + '\'' +
                ", createdAt=" + createdAt +
                ", updatedAt=" + updatedAt +
                '}';
    }
=======
        return "User{" + "userID=" + userID + ", role=" + role + ", username=" + username + ", password=" + password + ", email=" + email + ", dateOfBirth=" + dateOfBirth + ", status=" + status + ", createdAt=" + createdAt + ", updatedAt=" + updatedAt + '}';
    }

>>>>>>> d15b9b3f78d5c60a25cdd15e302b0e0ccac5f544
}
