package CalculadoraRMI;

public class CalculadoraImpl extends java.rmi.server.UnicastRemoteObject implements Calculadora{
	
	public CalculadoraImpl()
		throws java.rmi.RemoteException{
			super();
	}
		public long somar(long x, long y)
			throws java.rmi.RemoteException{
				return x + y;
		}
		public long subtrair(long x, long y)
			throws java.rmi.RemoteException{
				return x - y;
		}
		public long multiplicar(long x, long y)
			throws java.rmi.RemoteException{
				return x * y;
		}
		public long dividir(long x, long y)
			throws java.rmi.RemoteException{
				return x / y;
		}

}
