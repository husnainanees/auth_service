
package com.example.Unit_testing;

/**
 *
 * @author Kalsym
 */
public class CheckNumber {
    
   public static int checkPhoneFormat(String phoneNumber){
        long x=Long.parseLong(phoneNumber); 
        if(x == (long)x){
           if( getlength(x) <=12 && getlength(x) > 9){
                      if(phoneNumber.startsWith("923")){
                          return 1;
                      }
//            return true;
            
        } 
        }
//            return false;
            return 0;
        
       
    }
   
   public static int getlength(long number){
        int length = 1;
if (number >= 100000000) {
    length += 8;
    number /= 100000000;
}
if (number >= 10000) {
    length += 4;
    number /= 10000;
}
if (number >= 100) {
    length += 2;
    number /= 100;
}
if (number >= 10) {
    length += 1;
}
return length;
   }
}
//       if (number < 100000) {
//    if (number < 100) {
//        if (number < 10) {
//            return 1;
//        } else {
//            return 2;
//        }
//    } else {
//        if (number < 1000) {
//            return 3;
//        } else {
//            if (number < 10000) {
//                return 4;
//            } else {
//                return 5;
//            }
//        }
//    }
//} else {
//    if (number < 10000000) {
//        if (number < 1000000) {
//            return 6;
//        } else {
//            return 7;
//        }
//    } else {
//        if (number < 100000000) {
//            return 8;
//        } else {
//            if (number < 1000000000) {
//                return 9;
//            } else {
//                return 10;
//            }
//        }
//    }
//}
//       
//       
//}
