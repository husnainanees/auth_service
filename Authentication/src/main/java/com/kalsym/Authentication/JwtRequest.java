
package com.kalsym.Authentication;

public class JwtRequest {

    @Override
    public String toString() {
        return "JwtRequest{" + "username=" + username + ", password=" + password + '}';
    }
    String username;
    String password;

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

    public JwtRequest(String username, String password) {
        this.username = username;
        this.password = password;
    }

    public JwtRequest() {
        super();
    }
}
