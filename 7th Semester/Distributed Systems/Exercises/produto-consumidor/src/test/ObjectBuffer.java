package test;


public class ObjectBuffer {
	private int memoria = -1;
	// Informa se o buffer estah disponivel para ESCRITA
	private boolean disponivel = true;
	/** Exatamente. Digamos, por exemplo, que duas 
	Threads diferentes tentem chamar o método add para 
	um dado objeto. Como é o método é synchronized, 
	uma Thread terá de esperar que a Thread que chamou o 
	método primeiro termine a execução do mesmo.**/
	// metodo de escrita de dados na memoria
	public synchronized void escreveBuffer(int valor) {

		while (!isDisponivel()) {
			try {
				wait();
			} catch (InterruptedException e) {
				System.out.println("Wait Produtor Error: " + e.getMessage());
			}
		}
		System.err.println(Thread.currentThread().getName()
				+ " produzindo o valor: " + valor); // imprime quem esta sendo executado

		setDisponivel(false);
		notifyAll();
		this.memoria = valor;
	}

	// metodo de leitura de dados na memoria

	public synchronized int lerBuffer() {
		
		while (isDisponivel()) {
			try {
				wait();
			} catch (InterruptedException e) {
				System.out.println("Wait Produtor Error: " + e.getMessage());
			}
		}
		System.err.println(Thread.currentThread().getName() //imprime quem esta sendo executado
				+ " consumindo o valor: " + this.memoria);

		setDisponivel(true);
		notifyAll();
		return this.memoria;
	}

	public boolean isDisponivel() {
		return disponivel;
	}

	public void setDisponivel(boolean disponivel) {
		this.disponivel = disponivel;
	}

}