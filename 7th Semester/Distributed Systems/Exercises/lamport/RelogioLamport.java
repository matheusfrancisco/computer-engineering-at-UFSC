package lamport;

import java.io.IOException;
import java.net.DatagramPacket;
import java.net.InetAddress;
import java.net.MulticastSocket;
import java.net.UnknownHostException;
import java.util.TimerTask;
import java.util.logging.Level;
import java.util.logging.Logger;

/**

 */
public class RelogioLamport extends TimerTask {

    private int clock = 0;
    int port = 5000;
    String group = "225.4.5.6";    
    MulticastSocket recebe;
    MulticastSocket envio;     
    byte buf[] = new byte[1024];
    DatagramPacket pack = new DatagramPacket(buf, buf.length);
    private TrataGrupo trataGrupo;    
    public RelogioLamport(){
        try {
            envio = new MulticastSocket(); 
            recebe = new MulticastSocket(port);
            recebe.joinGroup(InetAddress.getByName(group));            
            trataGrupo = new TrataGrupo(recebe, pack, this);            
            Thread tg = new Thread(trataGrupo);
            tg.start();            
        } catch (IOException ex) {
            Logger.getLogger(RelogioLamport.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    @Override
    public void run() {
        clock++;
        enviaMeuClock(clock);
    }
    
    public void setClock(int clock){                     
        if(this.clock < clock)
            this.clock = clock;
    }
    
    public void enviaMeuClock(int clock){
		byte[] buffer = new byte[1024]; 
		String texto = Integer.toString(clock);
		buffer = texto.getBytes();		
		try {            
			DatagramPacket pack = new DatagramPacket(buffer, buffer.length,InetAddress.getByName(group), port);   
			envio.send(pack); 
        } catch (IOException ex) {
            Logger.getLogger(RelogioLamport.class.getName()).log(Level.SEVERE, null, ex);
        }    
    }
    
    public void fecharSocket(){
        envio.close();     
    }
}
