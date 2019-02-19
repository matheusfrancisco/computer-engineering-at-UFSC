package br.ufsc.sockets.tcp;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.net.InetAddress;
import java.net.Socket;
import java.net.UnknownHostException;

public class ClienteTCP {

	Socket conn;

	public static void main(String[] args) {
		ClienteTCP c = new ClienteTCP();
		c.iniciar();
	}

	public void iniciar() {
		int serverPort = 6661;
		try {
			InetAddress serverAddress = InetAddress.getByName("localhost");

			conn = new Socket(serverAddress, serverPort);

			DataOutputStream out = new DataOutputStream(conn.getOutputStream());
			DataInputStream in = new DataInputStream(conn.getInputStream());

			for (int i = 0; i < 10; i++) {

				String mensagem = 
						new String("Stream enviado pelo Cliente: "+ i);

				out.writeUTF(mensagem);

				String msgRecebida = "";
				msgRecebida = in.readUTF();
				System.out.println("Cliente recebeu: " + msgRecebida);
			}
			out.writeUTF("TERMINA");

		} catch (UnknownHostException e) {
			System.err.println("Host conn: " + e.getMessage());
		} catch (IOException e) {
			System.err.println("IO: " + e.getMessage());
		} finally {
			try {
				conn.close();
			} catch (IOException e) {
				System.err.println("IO Closing Conn: " + e.getMessage());
			}
		}
	}
}
