package com.bit.day05;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Ex11Controller {
	Logger log = LoggerFactory.getLogger(getClass());
	
	//변수가 같으면 @PathVariable의 인자값(value)은 생략가능 (아예 pathVariable을 생략할 수는 없음)
	@RequestMapping("/ex11/{msg}/{su}")
	public String ex11(@PathVariable("msg") String msg,
			@PathVariable("su") int num) {
		log.debug(msg);
		log.debug(num+"");
		return "ex11";
	}
}
