
package com.pandago.Auth_Service;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;


@Service
public class ClientService {
    @Autowired
    private ResponseRepo ResponseRepo;
    
    
    
    @Autowired
    private JwtUtil jwtutil;
    
    public JwtResponse saveResponse(JwtResponse jwtResponse){
        return ResponseRepo.save(jwtResponse);
    }
//     public List<Client> saveClients(List<Client> clients){
//        return (List<Client>) clientRepo.saveAll(clients);
//    }
     public boolean getJwtResponses(String c){
          List list=(List) ResponseRepo.findAll();
          for (int i = 0; i < list.size(); i++) {
            JwtResponse jwtResponse=new JwtResponse();
              jwtResponse=(JwtResponse) list.get(i);
              if((jwtResponse.getToken().compareTo(c)==0)){
                    return true;
                }
          }
          return false;
     }
//     public Client getClientById(int id){
//        return clientRepo.findById(id).orElse(null);
//    }
//    public String deleteClient(int id){
//        clientRepo.deleteById(id);
//        return "product removed";
//    }
//     public Client updateClient(Client c){
//        Client existingProduct=clientRepo.findById(c.getId()).orElse(null);
//        existingProduct.setUser_id(c.getUser_id());
//        return clientRepo.save(existingProduct);
//    }
//      public ResponseEntity<?> verifyClientId(Client c) throws Exception{
//        List list=(List) clientRepo.findAll();
//        String Date=null;
//        String token=null;
//        for (int i = 0; i < list.size(); i++) {
//            Client client=new Client();
//              client=(Client) list.get(i);
//              if((client.getUser_id().compareTo(c.getUser_id())==0)){
//                     token= jwtutil.generateToken(client.getUser_id());
//                     Date expiryTime=jwtutil.getExpirationDateFromToken(token);
//                     DateFormat dateFormat = new SimpleDateFormat("dd-M-yyyy hh:mm:ss");  
//                     Date = dateFormat.format(expiryTime); 
//                     return ResponseEntity.ok(new JwtResponse(token,Date));
//              }
//              else{
//                  continue;
//              }
//    }
//        return ResponseEntity.ok(new JwtResponse(token,Date));
//}
      
       public ResponseEntity<?> getToken(String client_id) throws Exception{
           String token= jwtutil.generateToken(client_id);
            Date expiryTime=jwtutil.getExpirationDateFromToken(token);
            DateFormat dateFormat = new SimpleDateFormat("dd-M-yyyy hh:mm:ss");  
            String Date = dateFormat.format(expiryTime);
//            JwtResponse j=new JwtResponse(0,token,Date,"pandago.api.sg.*","bearer");
//           System.out.println(saveJwtResponse(j));
            JwtResponse j=new JwtResponse(0,token,Date,"pandago.api.sg.*","bearer");
            saveResponse(j);
            return ResponseEntity.ok(new JwtResponse(0,token,Date,"pandago.api.sg.*","bearer"));
       }
       
//        public JwtResponse saveJwtResponse(JwtResponse jwtResponse)throws Exception{
//            return jwtResponseRepo.save(jwtResponse);  
//    }
}
