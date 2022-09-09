/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package kalsym;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;

import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
@RestController
@ResponseBody
public class AccessController {
    @Autowired
    private LoginService service;

    @GetMapping("/welcome/{t}")
    public String welcome(@PathVariable String t){
            if(service.access(t) == true){
                return "You Can Access the correct Path";
            }else{
                return "Invalid Token";
            }
         
    }
}