package client;

import java.net.Socket;

public class ServerMain {
	public static void main(String[] args) {
		try {
			
			
			Socket c_socket = new Socket("127.0.0.1", 8888);
			
			ReceiveThread rec_thread = new ReceiveThread();
			rec_thread.setSocket(c_socket);
			
			SendThread send_thread = new SendThread();
			send_thread.setSocket(c_socket);
			
			rec_thread.start();
			send_thread.start();
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
}
