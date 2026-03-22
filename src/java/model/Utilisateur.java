/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author ok
 */

public class Utilisateur {
    private String username;
    private String password;
    private int id;
    public Utilisateur() {}

    public Utilisateur(String username, String password ,int id) {
        this.username = username;
        this.password = password;
        this.id=id;
    }

    public String getUsername() { return username; }
    public void setUsername(String username) { this.username = username; }

    public String getPassword() { return password; }
    public  int getId(){ return id; }
    public void setPassword(String password) { this.password = password; }

    public void setId(int aInt) {
        this.id=aInt;
    }
}
