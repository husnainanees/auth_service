package com.example.Unit_testing;

import static org.assertj.core.api.Assertions.assertThat;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class UnitTestingApplicationTests {

	@Test
	void contextLoads() {
	}
        CheckNumber checkNumber=new CheckNumber();
        @Test
        void testNumber(){
            long expected_result=1;
            int actualResult=checkNumber.checkPhoneFormat("923435163312");
            if(actualResult== expected_result){
                 System.out.println("Valid Phone Number");
            }else{
            System.out.println("Invalid Phone Number");
            }
            assertThat(actualResult).isEqualTo(expected_result);
        }

}
