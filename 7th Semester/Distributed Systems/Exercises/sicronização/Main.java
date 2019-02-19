/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sicronização;

import java.io.IOException;

/**
 *

 */
public class Main  {
     public static void main(String[] args) throws IOException {
        
        Sicronização p1 = new Sicronização(1);
        p1.start();
        Sicronização p2 = new Sicronização(2);
        p2.start();
        Sicronização p3 = new Sicronização(3);
        p3.start();
    }
    
     
    
}
