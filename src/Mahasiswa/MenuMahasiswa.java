package Mahasiswa;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.input.MouseEvent;
import javafx.scene.layout.AnchorPane;
import javafx.stage.Stage;

import java.io.IOException;

public class MenuMahasiswa {

    @FXML
    private AnchorPane loadingMenu;

    @FXML
    private AnchorPane menuMahasiswa;

    @FXML
    private Button btn_pengajuanProposal;

    @FXML
    private Button btn_pendaftaranUjian;

    @FXML
    private Button btn_back;

    @FXML
    void PendaftaranUjian(ActionEvent event) throws IOException {
        btn_pendaftaranUjian.getScene().getWindow().hide();
       // btn_pendaftaranUjian.setStyle("-fx-background-color: #dd2c00");
        Parent root = FXMLLoader.load(getClass().getResource("../fxmlClass/MenuMahasiswaUjian.fxml"));
        Stage mainStage = new Stage();
        Scene scene = new Scene(root);
        mainStage.setScene(scene);
        mainStage.show();

    }

    @FXML
    void PengajuanProposal(ActionEvent event) throws IOException {
        btn_pengajuanProposal.getScene().getWindow().hide();
       // btn_pendaftaranUjian.setStyle("-fx-background-color: #dd2c00");
        Parent root = FXMLLoader.load(getClass().getResource("../fxmlClass/MenuMahasiswaProposal.fxml"));
        Stage mainStage = new Stage();
        Scene scene = new Scene(root);
        mainStage.setScene(scene);
        mainStage.show();
    }

    @FXML
    void back(ActionEvent event) throws IOException {
        btn_back.getScene().getWindow().hide();
        Parent root = FXMLLoader.load(getClass().getResource("../fxmlClass/tampilanLogin.fxml"));
        Stage mainStage = new Stage();
        Scene scene = new Scene(root);
        mainStage.setScene(scene);
        mainStage.show();

    }
    @FXML
    void mouse1(MouseEvent event) {
        btn_pendaftaranUjian.setStyle("-fx-background-color: #dd2c00");
    }
    @FXML
    void mouse2(MouseEvent event) {
        btn_pengajuanProposal.setStyle("-fx-background-color: #dd2c00");
    }
    @FXML
    void mouse3(MouseEvent event) {
        btn_back.setStyle("-fx-background-color: #dd2c00");
    }

}
