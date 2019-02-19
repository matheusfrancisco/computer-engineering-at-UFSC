package lamport;

import java.util.Random;
import java.util.Timer;


public class Execucao implements Runnable{
    
    Random rand = new Random();
    
    public void run(){
        Timer timer = new Timer();
        int interval = 1000 + rand.nextInt(500);
        timer.schedule(new RelogioLamport(),0, interval);       
    }    
    
    public static void main(String args[]){    
        for(int i=0;i<3;i++){        
            Thread td = new Thread(new Execucao());
            td.start();            
        }    
    }
    
}
