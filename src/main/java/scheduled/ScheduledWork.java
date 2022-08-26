package scheduled;

import java.text.SimpleDateFormat;
import java.util.Calendar;

import org.apache.log4j.Logger;
import org.apache.log4j.PropertyConfigurator;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import log.Main;


@Component
public class ScheduledWork {
	
	// @Scheduled(cron="0/5 * * * * ?")
	public void work1() {
		System.out.println("5초마다 작업 실행");
	}

	//@Scheduled(cron="0/10 * * * * ?")
	public void log() {
		Calendar calendar = Calendar.getInstance();
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		System.out.println("스케줄 실행:" + dateFormat.format(calendar.getTime()));
	}

}