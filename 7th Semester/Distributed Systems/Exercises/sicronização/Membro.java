/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sicronização;

import java.io.IOException;
import java.net.DatagramPacket;
import java.net.InetAddress;
import java.net.MulticastSocket;
import java.net.Socket;
import java.net.UnknownHostException;
import java.util.TimerTask;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * 

 */
public class Membro extends TimerTask {
    //Incrementará o relógio e irá enviar para o grupo.
    int relogio;
    private int id;
    MulticastSocket ms;
    
 

    Membro(int id) {
       this.id = id;   
    }


 
public void run() {
        try {
            relogio++;
            try {
                ms = new MulticastSocket();
            } catch (IOException ex) {
                Logger.getLogger(Membro.class.getName()).log(Level.SEVERE, null, ex);
            }
            byte[] send = new byte[1024];
            InetAddress IPAddress;
            
            IPAddress = InetAddress.getByName("239.200.100.37");
            
            String msg = (id + "#" + relogio);
            send = msg.getBytes();
            
//Integer.toString(id + "#" + relogio)
            DatagramPacket sendtime = new DatagramPacket(send,send.length,IPAddress,9876);
            try {
               
              
                ms.send(sendtime);
                TrataGrupo trata = new TrataGrupo();
                trata.start();
                
                
//enviar mensagem
            } catch (IOException ex) {
                Logger.getLogger(Membro.class.getName()).log(Level.SEVERE, null, ex);
            }
            TrataGrupo s = new TrataGrupo();
            s.setmembro(this);
            
        } catch (UnknownHostException ex) {
            Logger.getLogger(Membro.class.getName()).log(Level.SEVERE, null, ex);
        }
       
}
}
