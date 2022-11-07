package com.willbooster;

public class Main {
    public static void main(String[] args) {
        System.out.println("Hello");
        showWindow().setSize(600, 600);
    }

    public static MainWindow showWindow() {
        MainWindow mainWindow = new MainWindow();
        mainWindow.setVisible(true);
        return mainWindow;
    }
}