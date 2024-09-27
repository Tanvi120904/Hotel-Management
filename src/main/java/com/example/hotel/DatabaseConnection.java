package com.example.hotel;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class DatabaseConnection {

    private static final String URL = "jdbc:mysql://localhost:3306/mysql"; // Update with your database name
    private static final String USER = "root"; // Update with your MySQL username
    private static final String PASSWORD = "oracle"; // Update with your MySQL password

    public Connection connect() {
        Connection connection = null;
        try {
            // Load the MySQL JDBC Driver
            Class.forName("com.mysql.cj.jdbc.Driver");
            // Establish a connection
            connection = DriverManager.getConnection(URL, USER, PASSWORD);
            System.out.println("Connection established successfully.");
        } catch (ClassNotFoundException e) {
            System.out.println("MySQL JDBC Driver not found.");
            e.printStackTrace();
        } catch (SQLException e) {
            System.out.println("Connection failed. Check output console.");
            e.printStackTrace();
        }
        return connection;
    }

    public void executeSampleQuery() {
        String query = " select * from adminlogininfo"; // Update with your SQL query
        try (Connection connection = connect();
             Statement statement = connection.createStatement()) {

            // Execute the query
            statement.executeQuery(query);
            // Process the results (if any)
            System.out.println("Query executed successfully.");

        } catch (SQLException e) {
            System.out.println("Query execution failed.");
            e.printStackTrace();
        }
    }

    public static void main(String[] args) {
        DatabaseConnection dbConnection = new DatabaseConnection();
        dbConnection.executeSampleQuery(); // Call method to execute a sample query
    }
}
