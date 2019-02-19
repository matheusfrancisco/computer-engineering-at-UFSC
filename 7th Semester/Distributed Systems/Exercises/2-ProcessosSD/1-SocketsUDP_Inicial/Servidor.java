package br.ufsc.sockets.udp;

import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.SocketException;
import java.net.UnknownHostException;

public class Servidor {

	public static void main(String[] args) {
		Servidor server = new Servidor();
		try {
			server.iniciar();
		} catch (SocketException e) {
			System.err.println("Servidor Socket: " + e.getMessage());
		} catch (UnknownHostException e) {
			System.err.println("Unknow Host: " + e.getMessage());
		} catch (IOException e) {
			System.err.println("IO Error: " + e.getMessage());
		}
	}

	public void iniciar() throws SocketException, UnknownHostException,
			IOException {
		// InetAddress serverAddress = InetAddress.getByName("localhost");
		int serverPort = 6668;
		System.out.println("Iniciando Servidor...");

		// Criar um socket UDP
		DatagramSocket servidorSocket = new DatagramSocket(serverPort);

		while (true) {
			// Criar mensagem para recebimento
			byte[] mensagem = new byte[1024];

			// Pacote que serah recebido
			DatagramPacket request = new DatagramPacket(mensagem,
					mensagem.length);

			servidorSocket.receive(request);

			mensagem = request.getData();
			String msgRecebida = new String(mensagem);
			System.out.println("Servidor recebeu: " + msgRecebida);
		}
	}
}
