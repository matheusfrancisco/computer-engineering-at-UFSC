package test;

public class Consumidor extends Thread {
	
	private ObjectBuffer buffer;
	
	public Consumidor(ObjectBuffer buf) {
		super ("Consumidor");
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
			
			buffer.lerBuffer();

		}
	}


}
