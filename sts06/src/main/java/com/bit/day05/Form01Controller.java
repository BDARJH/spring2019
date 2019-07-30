package com.bit.day05;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class Form01Controller {
	@RequestMapping("/ex09")
	public String ex09() {
		return "form01";
	}
	
	//넘어오는 param값도 바로 인자로 받을 수 있다.
	//형변환도 알아서 해준다.
	//변수이름을 넘어오는 값의 이름과 같게 해주면 생략가능하다 
	@RequestMapping("/ex10")
	public void ex10(Model model,int num,String msg) {
		model.addAttribute("num",num);
		model.addAttribute("msg",msg);
	}
}
