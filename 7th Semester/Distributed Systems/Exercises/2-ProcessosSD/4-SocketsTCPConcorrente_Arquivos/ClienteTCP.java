package br.ufsc.sockets.tcp.arquivos;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
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

			// Criando as streams (fluxo) de dados
			InputStream is = conn.getInputStream();
			DataOutputStream out = new DataOutputStream(conn.getOutputStream());
			DataInputStream in = new DataInputStream(is);

			// Enviando 10 mensagens para visualizar a ordem de envio e chegada
			// ao server
			for (int i = 0; i < 10; i++) {

				String mensagem = new String("Stream enviado pelo Cliente: "
						+ i);

				out.writeUTF(mensagem);

				String msgRecebida = "";
				// Escrevendo a mensagem no fluxo de dados
				msgRecebida = in.readUTF();
				System.out.println("Cliente recebeu: " + msgRecebida);
			}
			out.writeUTF("TERMINA");

			// Criando o arquivo
			File file = new File("/home/vinicius/temp/recebido.jpg");

			// Criando o stream para escrever o arquivo na sua pasta pelo SO
			FileOutputStream fos = new FileOutputStream(file);

			byte[] cbuffer = new byte[1024];
			int bytesRead;

			System.out.println("Recebendo arquivo...");
			float tamanho = 0.0f;
			// Recebendo os dados do arquivo pela stream
			while ((bytesRead = is.read(cbuffer)) != -1) {

				// Escrevendo o arquivo na sua pasta do SO que foi lido no fluxo
				// de dados
				fos.write(cbuffer, 0, bytesRead);
				fos.flush();

				tamanho += bytesRead;
				System.out.println("Qtd de bytes recebidos: " + tamanho);

			}
			System.out.println("Arquivo recebido com SUCESSO!");

			out.close();

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
