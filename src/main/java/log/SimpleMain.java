package log;


import org.apache.log4j.BasicConfigurator;
import org.apache.log4j.Logger;


public class SimpleMain {
	// logger 객체의 인스턴스 로드
	private static final Logger log = Logger.getLogger(SimpleMain.class.getName());

	public static void main(String[] args) {
		BasicConfigurator.configure();
		log.info("[INFO] hello log4k");
	}
}