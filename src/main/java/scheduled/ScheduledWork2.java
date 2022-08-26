package scheduled;

import java.text.SimpleDateFormat;
import java.util.Calendar;

import org.apache.log4j.Logger;
import org.apache.log4j.PropertyConfigurator;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import log.Main;
import lombok.extern.slf4j.Slf4j;

@Component
public class ScheduledWork2 {
	private static final Logger log = Logger.getLogger(Main.class); // 자기 자신의 클래스의 로그를 찍는다.
	//@Scheduled(cron = "0/5 * * * * ?")
	public void logger() {
		PropertyConfigurator.configure("C:\\project\\work\\jwork\\springphonebook\\src\\main\\java\\log\\log4j.properties"); // 로그 설정파일이 필요하다. // 이 코딩을 하면 자동으로 주입이 된다. 로그가 기록된다.
		log.debug("START");
	}
	// @Scheduled(cron = "0/5 * * * * ?")
	public void timelogger() {
		Calendar calendar = Calendar.getInstance();
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		System.out.println("샤발2");
		log.debug(dateFormat);
	}
}