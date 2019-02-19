/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sicronização;

import java.io.IOException;
import java.util.Timer;

/**
 *

 */
public class Sicronização extends Thread {
 private int id;
    Sicronização(int id) {
       this.id = id;
    }

   
  
   
   
    
    public void run () {
       //Irá chamar a thread em membro no intevalo de tempo enviado.
        int INTERVALO = 5000 * id;
 
        Timer t = new Timer();
        Membro lamp = new Membro(id);
        t.scheduleAtFixedRate(lamp,0,INTERVALO); 
    
    
}

   }

   

    
    

