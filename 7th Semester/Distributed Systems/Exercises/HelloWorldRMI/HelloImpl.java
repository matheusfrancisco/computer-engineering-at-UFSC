public class HelloImpl extends
    java.rmi.server.UnicastRemoteObject
	implements Hello {

	public HelloImpl() throws java.rmi.RemoteException {
        super();
    }

	public String sayHello() {
		return "Hello, world!";
	}

}
