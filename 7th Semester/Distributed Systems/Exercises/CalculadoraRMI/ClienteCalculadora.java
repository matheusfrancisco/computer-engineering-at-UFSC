package CalculadoraRMI;

import java.rmi.Naming;

import CalculadoraRMI.Calculadora;

public class ClienteCalculadora {

    private ClienteCalculadora() {}

    public static void main(String[] args) {
		try {
		    Calculadora stub = (Calculadora) Naming.lookup("rmi://localhost/ServidorCalculadora"); //stub = conexão remota do cliente com o servidor
		    
		    System.out.println(stub.somar(9, 8));
		    System.out.println(stub.subtrair(10, 9));
		    System.out.println(stub.multiplicar(9, 7));
		    System.out.println(stub.dividir(10, 8));
		}catch(Exception e){
			System.out.println(e);
		}
    }
	
}
