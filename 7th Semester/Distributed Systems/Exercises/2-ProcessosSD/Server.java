0000000000package br.ufsc.socket.udp;

import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.SocketException;

public class Server {

	public static void main(String[] args) {
		/*
		 * Criar socket UDP - DatagramSocket Criar um Buffer para receber a
		 * mensagem - byte[1024] Criar o pacote que receberá a pacote =
		 * DatagramPacket(buffer, length) Receber a mensagem -
		 * socket.receive(pacote) Apresentar a mensagem recebida - new String
		 * (pacote.getData()); Voltar para 2. (loop)
		 */

		int port = 4567;

		System.out.println("Iniciando o server...");
		try {
			DatagramSocket socket = new DatagramSocket(port);
			while (true) {

				byte[] buffer = new byte[1024];
				DatagramPacket pacote = new DatagramPacket(buffer,
						buffer.length);

				socket.receive(pacote);
				String mensagem = new String(pacote.getData());
				System.out.println(mensagem);

			}

		} catch (SocketException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
