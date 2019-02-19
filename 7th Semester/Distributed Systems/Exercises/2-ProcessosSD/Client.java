package br.ufsc.socket.udp;

import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.SocketException;
import java.net.UnknownHostException;

public class Client extends Thread {
	
	public static void main(String[] args) {
		for (int i = 0; i < 1000000; i++) {
			Client c = new Client();
			c.start();
		}
	}
	
	@Override
	public void run() {
		int port = 4567;
		System.out.println("Criando pacotes UDP...");
		try {
			
			InetAddress serverAddress = InetAddress.getByName("localhost");
			
			//Criar socket UDP - DatagramSocket
			DatagramSocket socket = new DatagramSocket();
		
			// Dados de envio
			//Criar um Buffer para enviar a mensagem - byte[1024]
			byte[] mensagem = new byte[1024];
			
			//Escrever a mensagem - buffer = new String (“Mensagem”).getBytes();
			mensagem = new String("Mensagem enviada pelo cliente").getBytes();
			
			//Criar o pacote que conterá a mensagem = DatagramPacket(buffer, length, address, port)
			DatagramPacket pack = new DatagramPacket(mensagem, mensagem.length, 
					serverAddress, port);

			//Enviar o pacote via socket UDP - socket.send(packet)
			socket.send(pack);
			
			System.out.println("Finalizando...");
			
			
			
			
			
			
			
			
			
			
			
		
		
		} catch (SocketException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (UnknownHostException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
}
