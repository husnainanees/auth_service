
package com.kalsym.Controller;

import com.kalsym.Models.User;
import com.kalsym.Repositories.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController

public class Controller {
    
    @Autowired
    private UserRepository userRepository;
    
    @Autowired
    private User user;
    
  @RequestMapping("/welcome")
    public String setUser(){
//        user.setName("oil");
//        user.setPrice("500");
//        User user1=userRepository.save(user);
//       System.out.println(user1);
        return "Hello world";
    }
}
