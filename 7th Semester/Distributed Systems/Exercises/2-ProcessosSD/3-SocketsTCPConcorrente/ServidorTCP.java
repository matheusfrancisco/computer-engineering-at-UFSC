package br.ufsc.sockets.tcp;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.net.ServerSocket;
import java.net.Socket;

public class ServidorTCP {

	Socket conn;

	public static void main(String[] args) {

		ServidorTCP s = new ServidorTCP();
		s.iniciar();

	}

	public void iniciar() {
		int serverPort = 6661;

		System.out.println("Iniciando server...\n");

		try {
			ServerSocket serverSocket = new ServerSocket(serverPort);

			while (true) {
				conn = serverSocket.accept();
				RespondeClienteTCP rc = 
					new RespondeClienteTCP(serverSocket.accept());
			}
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
