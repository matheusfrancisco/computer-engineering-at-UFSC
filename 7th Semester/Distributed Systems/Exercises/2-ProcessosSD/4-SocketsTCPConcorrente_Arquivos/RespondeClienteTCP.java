package br.ufsc.sockets.tcp.arquivos;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;

public class RespondeClienteTCP extends Thread {

	Socket conn;
	OutputStream out;
	InputStream in;
	FileInputStream fileIn;

	public RespondeClienteTCP(Socket s) {
		conn = s;
		try {
			out = conn.getOutputStream();
			in = conn.getInputStream();
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
			
			//Criando as streams para enviar os dados via TCP
			DataInputStream msgIn = new DataInputStream(in);
			DataOutputStream msgOut = new DataOutputStream(out);
			//Recebendo mensagens de texto.
			//Cliente deve enviar TERMINA para finalizar o envio(Cliente) de mensagens
			while (!(msgRecebida = msgIn.readUTF()).equalsIgnoreCase("TERMINA")) {

				System.out.println("Servidor: " + msgRecebida);

				msgOut.writeUTF("Servidor recebeu: " + msgRecebida);
			}

			//Preparando o arquivo para ser enviado
			File file = new File("/home/vinicius/temp/transfFoto.jpg");
			//Criando a Stream a partir do arquivo selecionado
			fileIn = new FileInputStream(file);

			byte[] cbuffer = new byte[1024];
			int bytesRead;
			System.out.println("Sending file...");
			float tamanho = 0.0f;
			//Envio de arquivo. Finaliza quando terminar de ler todos os dados do arquivo
			while ((bytesRead = fileIn.read(cbuffer)) != -1) {

				//Copiando o conteudo para o fluxo de dados
				out.write(cbuffer, 0, bytesRead);
				out.flush();
				tamanho += bytesRead;
				System.out.println("Qtd de bytes enviados: " + tamanho);
			}
			System.out.println("Arquivo enviado com SUCESSO!");
			//out.close();
			// Leitura de Mensagens de Texto

			

		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			if (conn != null) {
				try {
					conn.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}

			if (out != null) {
				try {
					out.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}

			if (fileIn != null) {
				try {
					fileIn.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
	}

}
