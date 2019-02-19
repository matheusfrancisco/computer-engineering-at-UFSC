package lamport;

import java.io.IOException;
import java.net.DatagramPacket;
import java.net.MulticastSocket;
import java.util.logging.Level;
import java.util.logging.Logger;

/**

 */
public class TrataGrupo implements Runnable{

    MulticastSocket recebe;
    DatagramPacket pack;
    RelogioLamport relogio;
    byte buf[] = new byte[1024];
    
    public TrataGrupo(MulticastSocket recebe, DatagramPacket pack, RelogioLamport relogio){
        this.recebe = recebe;
        this.pack = pack;
        this.relogio = relogio;
    }
    
    @Override
    public void run() {
        while(true){
            try {
                recebe.receive(pack);
                String data = new String(pack.getData(), 0, 
                                     pack.getLength(), "UTF-8");               
                int rel = Integer.parseInt(data);                
                relogio.setClock(rel);
                
            } catch (IOException ex) {
                Logger.getLogger(TrataGrupo.class.getName()).log(Level.SEVERE, null, ex);
            }
        }        
    }
}
