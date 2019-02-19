/*  nome : Matheus Francisco Batista Machado n 14202492  */
/*  nome : Gabriel Domenee Assunção 		n  14103299 */
package test;

public class Teste {

	public static void main(String[] args) {
		ObjectBuffer _buffer = new ObjectBuffer();
		
		Produtor p = new Produtor(_buffer);
		Consumidor c = new Consumidor(_buffer);
		
		
		p.start();
		c.start();

	}

}
