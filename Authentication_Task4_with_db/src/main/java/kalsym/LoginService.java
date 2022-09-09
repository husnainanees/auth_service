/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package kalsym;

import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


/**
 *
 * @author Kalsym
 */
@Service
public class LoginService {
    @Autowired
    private LoginRepo loginrepo;
    
    private JwtResponse jwtResponse;
    private UserDetails userDetails;
    
    @Autowired
    private JwtUtil jwtutil;
   
    public Login saveLogin(Login product){
        return loginrepo.save(product);
    }
     public List<Login> saveLogins(List<Login> products){
        return (List<Login>) loginrepo.saveAll(products);
    }
     public List<Login> getLogins(){
        return (List<Login>) loginrepo.findAll();
    }
     public Login getLoginById(int id){
        return loginrepo.findById(id).orElse(null);
    }
     
    public String deleteLogin(int id){
        loginrepo.deleteById(id);
        return "product removed";
    }
     public Login updateLogin(Login product){
        Login existingProduct=loginrepo.findById(product.getId()).orElse(null);
        existingProduct.setUsername(product.getUsername());
        existingProduct.setPassword(product.getPassword());
        return loginrepo.save(existingProduct);
    }
    public String checkLogin(Login l) throws Exception{
        List list=loginrepo.findAll();
        for (int i = 0; i < list.size(); i++) {
            Login login=new Login();
              login=(Login) list.get(i);
              if((login.getUsername().compareTo(l.getUsername())==0) && login.getPassword().compareTo(l.getPassword())== 0){
//                  userDetails.setUsername(login.getUsername());
//                  userDetails.setPassword(login.getPassword());
                 String token= jwtutil.generateToken(login.getUsername());
                  return token;
              }
              else{
                  continue;
              }
    }
        return "Username Not Found";
}
   public boolean access(String token){
       if(token.startsWith("eyJhbGciOiJIUzI1NiJ9")){
           return true;
       }else{
       return false;
       }
   }
    
}