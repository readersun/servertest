package log;

import org.apache.log4j.Logger;
import org.apache.log4j.PropertyConfigurator;

public class Main {
	private static final Logger log = Logger.getLogger(Main.class); // 자기 자신의 클래스의 로그를 찍는다.

	public static void main(String[] args) {
		// 로그를 하기 위해서는 설정파일이 필요한데 xml로도 해줄 수 있고 properties 파일로 만들 수 있는데 이게 없으면 무조건 오류가 생긴다.
		PropertyConfigurator.configure("C:\\project\\work\\jwork\\springphonebook\\src\\main\\java\\log\\log4j.properties"); // 로그 설정파일이 필요하다. // 이 코딩을 하면 자동으로 주입이 된다. 로그가 기록된다.
		log.debug("START");
		//log.debug("LOG [ INFO ]");
	}

}