package br.ufsc.sockets.udp;

import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.SocketException;
import java.net.UnknownHostException;

public class Cliente {
	
	public static void main(String[] args) {
		Cliente c = new Cliente();
		try {
			c.iniciar();
		} catch (SocketException e) {
			System.err.println("Cliente Socket: "+ e.getMessage());
		} catch (UnknownHostException e) {
			System.err.println("Unknow Host: "+ e.getMessage());
		} catch (IOException e) {
			System.err.println("IO Error: "+ e.getMessage());
		}
	}

	public void iniciar() throws SocketException, UnknownHostException,
			IOException {
		InetAddress serverAddress = InetAddress.getByName("localhost");
		int serverPort = 6668;

		System.out.println("Iniciando Cliente...");
		// Criar um socket UDP
		DatagramSocket clienteSocket = new DatagramSocket();

		// Criar mensagem para envio
		byte[] mensagem = new byte[1024];
		mensagem = new String("Mensagem enviada pelo Cliente").getBytes();

		// Pacote que serah enviado ao servidor (address, port)
		DatagramPacket request = new DatagramPacket(mensagem,
				mensagem.length, serverAddress, serverPort);

		clienteSocket.send(request);

	}

}
