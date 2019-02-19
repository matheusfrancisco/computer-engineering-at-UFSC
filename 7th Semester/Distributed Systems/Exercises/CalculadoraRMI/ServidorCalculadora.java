package CalculadoraRMI;

import java.rmi.Naming;

public class ServidorCalculadora {

	public ServidorCalculadora(){
		try{
			Calculadora c = new CalculadoraImpl();
			Naming.rebind("//localhost/CalculatorService", c);
		}catch(Exception e){
			System.out.println(e);
		}
	}
		
	public static void main(String args[]){
		new ServidorCalculadora();
	}
	
}
