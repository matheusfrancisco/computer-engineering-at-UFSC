package test;

public class Produtor extends Thread{

	private ObjectBuffer buffer;
	
	public Produtor(ObjectBuffer buf) {
		super ("Produtor");
		buffer = buf;
	}
	
	@Override
	public void run() {

		for (int i = 0; i < 10; i++) {
			// dorme por um intervalo aleatorio
			try {
				Thread.sleep( (int) ( Math.random() * 3000 ) );
			}
			// Tratamento de excecao
			catch( InterruptedException exception ) {
				System.err.println( exception.toString() );
			}
			
			buffer.escreveBuffer(i);

		}
	}

}
