/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Eleicao_anel;


import anel.Cria_processos;
import anel.Membro;
import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.util.logging.Level;
import java.util.logging.Logger;
import static jdk.nashorn.internal.runtime.Debug.id;

/**

 */
public class Cria_anel extends Thread {
    private int id;
    private int porta = 9870;
    private int final_anel = 9;
    DatagramSocket socket;
     private Cria_anel(int id) {
       this.id = id;
    }
     
  
    private void criar_anel() throws SocketException, UnknownHostException, IOException {
         socket = new DatagramSocket(porta + id);
         System.out.println("Crie socket"+ porta+id);
         int anterior = 0;
         while(true){   
            
            if(final_anel == id){
                passa_token token = new passa_token(9870,id);
                token.start();  
                               }
            else {
              passa_token token = new passa_token(porta+id+1,id);
              token.start();
            }
             
              
            byte[] receive = new byte[1024];
            DatagramPacket pacote = new DatagramPacket(receive, receive.length);
            System.out.println ("Esperando pacotes...");
            socket.receive(pacote);
           
            byte[] buffer1 = new byte[1024];
            buffer1 = pacote.getData();
            String teste = (new String(buffer1).trim());
            anterior = Integer.parseInt(teste);
            System.out.println("Recebeu porta:" + porta + "Token com o valor:" + anterior );
            if(anterior > id){
                id = anterior;
            }
            if(anterior ==id) {
                System.out.println("Coordenador eleito dentro de cria_anel");
                break;
            }
            if(anterior==-2) break;
                
              }
       
       
    }
     public static void main(String args[]){
        
        for(int i =0;i<10;i++){
            Cria_anel processo = new Cria_anel(i);
            processo.start();
        }
         
         
    }
@Override
         public void run() {
        
        
            try {
                criar_anel();
            } catch (IOException ex) {
                Logger.getLogger(Cria_anel.class.getName()).log(Level.SEVERE, null, ex);
            }
    
         }
   
       
           
}
