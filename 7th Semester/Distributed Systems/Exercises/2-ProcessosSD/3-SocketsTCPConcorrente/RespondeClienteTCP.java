package br.ufsc.sockets.tcp;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.net.Socket;

public class RespondeClienteTCP extends Thread {

	Socket conn;
	DataOutputStream out;
	DataInputStream in;

	public RespondeClienteTCP(Socket s) {
		conn = s;
		try {
			out = new DataOutputStream(conn.getOutputStream());
			in = new DataInputStream(conn.getInputStream());
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		this.start();
	}

	@Override
	public void run() {

		String msgRecebida = "";
		try {
			while (!(msgRecebida = in.readUTF()).equalsIgnoreCase("TERMINA")) {

				System.out.println("Servidor: " + msgRecebida);

				out.writeUTF("Servidor recebeu: " + msgRecebida);
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
