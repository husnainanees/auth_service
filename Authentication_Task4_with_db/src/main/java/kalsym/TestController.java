
package kalsym;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;

import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
@ResponseBody
public class TestController {
    @Autowired
    private LoginService service;

   @PostMapping("/addLogin")
    public Login addProduct(@RequestBody Login prod){
        return service.saveLogin(prod);
    }
    @PostMapping("/addLogins")
     public List<Login>  addProducts(@RequestBody List<Login> products){
        return service.saveLogins(products);
    }
     @GetMapping("/logins")
     public List<Login>  findAllProducts(){
        return service.getLogins();
    }
     @GetMapping("/login/{id}")
      public Login findProductById(@PathVariable int id){
        return service.getLoginById(id);
    }
      
      @PutMapping("/update")
      public Login updateProduct(@RequestBody Login product){
        return service.updateLogin(product);
    }
       @DeleteMapping("/delete/{id}")
      public String deleteProduct(@PathVariable int id){
        return service.deleteLogin(id);
    }
       @PostMapping("/checkProduct")
       public ResponseEntity<?> checkLogin(@RequestBody Login l) throws Exception{
           return ResponseEntity.ok(new JwtResponse(service.checkLogin(l)));
     }
    
}
