/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Eleicao_anel;

import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.util.Random;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 */
public class passa_token extends Thread {
private int porta;
private int id;
private static int id_coord = -1;
private static  boolean eleito =false;
 Random r = new Random();
    passa_token(int porta,int id) {
       this.porta = porta;
       this.id = id;
        System.out.println("Port"+porta);
    }
    public void passa() throws SocketException, UnknownHostException, IOException {
    DatagramSocket socket = new DatagramSocket();
    InetAddress IPAddress = InetAddress.getByName("127.0.0.1");
    if((r.nextInt(10)%2) == 0) {
    
        System.out.println("Processo: " + id + "  participa da eleição");
        if(id_coord < id) {
                       System.out.println("Comparação:" + id_coord +" - "+ id);
            id_coord = id;
        }
        if(id_coord == id){
            System.out.println("Coordenador eleito  "+ id_coord);
            id_coord = id;
            eleito = true;
        }
    }
        if(!eleito) {
          byte[] sendData = new byte[1024];
          System.out.println("Manda pro proximo:" + id_coord);
          sendData = Integer.toString(id_coord).getBytes();
                  DatagramPacket sendPacket = new DatagramPacket(sendData,sendData.length,IPAddress,porta);
                  socket.send(sendPacket);
        }
        else {
          byte[] sendData = new byte[1024];
          System.out.println("Manda pro proximo:" + id_coord);
          sendData = Integer.toString(-2).getBytes();
                  DatagramPacket sendPacket = new DatagramPacket(sendData,sendData.length,IPAddress,porta);
                  socket.send(sendPacket);
            
        }
    }
    
    public void run() {
   
    try {
        passa();
    } catch (UnknownHostException ex) {
        Logger.getLogger(passa_token.class.getName()).log(Level.SEVERE, null, ex);
    } catch (IOException ex) {
        Logger.getLogger(passa_token.class.getName()).log(Level.SEVERE, null, ex);
    }
   
    
    }
    }
    
    

