package com.example.hotel;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.Node;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.stage.Stage;

import java.awt.*;
import java.io.IOException;
import java.sql.Connection;

public class AdminLoginController {
    private Stage stage;
    private Scene scene;
    private Parent root;
    private DatabaseConnection databaseConnection = new DatabaseConnection();

    @FXML
    private Button loginButton;
    // Method to switch to Admin Home after successful login
    public void switchToAdminHome(ActionEvent event) throws IOException {
        if (!testDatabaseConnection()) {
            System.out.println("Authentication failed.");
            // Handle authentication failure (e.g., show error message)
        } else {
            root = FXMLLoader.load(getClass().getResource("AdminHome.fxml"));
            stage = (Stage) ((Node) event.getSource()).getScene().getWindow();
            scene = new Scene(root);
            stage.setScene(scene);
            stage.show();
        }
    }

    @FXML
    private Button logoutButton;
    // Method to switch back to the Main Page
    public void switchToMainPage(ActionEvent event) throws IOException {
        root = FXMLLoader.load(getClass().getResource("MainPage.fxml"));
        stage = (Stage) ((Node) event.getSource()).getScene().getWindow();
        scene = new Scene(root);
        stage.setScene(scene);
        stage.show();
    }

    public boolean testDatabaseConnection() {
        Connection connection = databaseConnection.connect(); // Call the connect method
        if (connection != null) {
            System.out.println("Database connected successfully!");
            // You can perform further database operations here if needed
        } else {
            System.out.println("Failed to connect to the database.");
        }
        return false;
    }
}