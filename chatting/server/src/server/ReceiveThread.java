package server;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.Socket;

public class ReceiveThread extends Thread{

	private Socket m_Socket;
	
	@Override
	public void run() {
		super.run();
		
		try {
			BufferedReader tmpbuf = new BufferedReader(new InputStreamReader(m_Socket.getInputStream()));
			
			String receiveString;
			
			while(true) {
				receiveString = tmpbuf.readLine();
				
				if(receiveString ==null) {
					System.out.println("상대방 연결이 끊어졌습니다.");
					break;
				}else {
					System.out.println("상대방 > "+ receiveString);
				}
			}
			
			tmpbuf.close();
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	public void setSocket(Socket _socket) {
		m_Socket = _socket;
	}
}
