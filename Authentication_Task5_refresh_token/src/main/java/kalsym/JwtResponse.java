/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package kalsym;

/**
 *
 * @author Kalsym
 */
public class JwtResponse {
    private String token;
    private String RefreshToken;

    public String getRefreshToken() {
        return RefreshToken;
    }

    public void setRefreshToken(String RefreshToken) {
        this.RefreshToken = RefreshToken;
    }

    public JwtResponse(String token, String RefreshToken) {
        super();
        this.token = token;
        this.RefreshToken = RefreshToken;
    }

    public JwtResponse(String token) {
        this.token = token;
    }

    public String getToken() {
        return token;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public JwtResponse() {
        super();
    }
}
