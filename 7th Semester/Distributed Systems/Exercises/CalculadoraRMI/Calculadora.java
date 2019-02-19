package CalculadoraRMI;

public interface Calculadora extends java.rmi.Remote {
	public long somar(long x, long y)
		throws java.rmi.RemoteException;
	public long subtrair(long x, long y)
		throws java.rmi.RemoteException;
	public long multiplicar(long x, long y)
		throws java.rmi.RemoteException;
	public long dividir(long x, long y)
		throws java.rmi.RemoteException;

}
