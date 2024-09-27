package com.example.hotel;

import java.io.IOException;
import java.util.Objects;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.Node;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.stage.Stage;

import static javafx.fxml.FXMLLoader.load;

public class CreateAccController {
    private Stage stage;
    private Scene scene;
    private Parent root;




    public void switchToFirstPage(ActionEvent event) throws IOException {
        root = load(Objects.requireNonNull(getClass().getResource("FirstPage.fxml")));
        stage = (Stage) ((Node) event.getSource()).getScene().getWindow();
        scene = new Scene(root);
        stage.setScene(scene);
        stage.show();
    }

}