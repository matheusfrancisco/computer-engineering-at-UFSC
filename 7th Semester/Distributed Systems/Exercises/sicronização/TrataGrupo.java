/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sicronização;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import static java.lang.Integer.parseInt;
import java.net.DatagramPacket;
import java.net.InetAddress;
import java.net.MulticastSocket;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *

 */
public class TrataGrupo extends Thread{
    MulticastSocket ms;
    private int relogio;
    private int relogio_grupo = 0;
    private Membro m;
  
   public TrataGrupo (){}
    TrataGrupo(int relogio) {
     this.relogio = relogio;
    }
    public void setmembro(Membro m) {
        this.m = m;    
        if (relogio_grupo < m.relogio) {
                       relogio_grupo = m.relogio;
                       System.out.println("Grupo alterou seu relógio de " + relogio_grupo + "   para:" + m.relogio);
                       
                   }
    }
    
    @Override
    public void run() {
        
           byte[] receive = new byte[1024];
        try {
            ms = new MulticastSocket(9876);
        } catch (IOException ex) {
            Logger.getLogger(TrataGrupo.class.getName()).log(Level.SEVERE, null, ex);
        }
           while(true) {
               
               try {
                   
                  try {
                       ms.joinGroup(InetAddress.getByName("239.200.100.36"));
                   } catch (IOException ex) {
                       Logger.getLogger(TrataGrupo.class.getName()).log(Level.SEVERE, null, ex);
                   }
                   DatagramPacket pacote = new DatagramPacket(receive, receive.length);
                   try {
                       
                       ms.receive(pacote);
                   } catch (IOException ex) {
                       Logger.getLogger(TrataGrupo.class.getName()).log(Level.SEVERE, null, ex);
                   }
                   
                   String mensagem = new String(pacote.getData(),0,pacote.getData().length,"UTF-8");
                   
                   String MsgRecebida[] = mensagem.split("#");
                   System.out.println(MsgRecebida[0]);
                   System.out.println(MsgRecebida[1]);
                   
                 //  relogio = Integer.parseInt(MsgRecebida[1]); 
            
                   
                   
                   
                   byte[] send = new byte[1024];
                   
                   DatagramPacket pacoteenvio = new DatagramPacket(send, send.length, pacote.getAddress(), pacote.getPort());
                   String msg ="";
                   ms.send(pacoteenvio);
                   if(msg=="sair") break;
                   
               } catch (UnsupportedEncodingException ex) {
                   Logger.getLogger(TrataGrupo.class.getName()).log(Level.SEVERE, null, ex);
               } catch (IOException ex) {
                   Logger.getLogger(TrataGrupo.class.getName()).log(Level.SEVERE, null, ex);
               }
        
        }
        try {
            ms.leaveGroup(InetAddress.getByName("239.200.100.36"));
        } catch (IOException ex) {
            Logger.getLogger(TrataGrupo.class.getName()).log(Level.SEVERE, null, ex);
        }
         ms.close();
    }
}
