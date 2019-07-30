package com.bit.day05;

import java.io.PrintWriter;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.View;
import org.springframework.web.servlet.mvc.Controller;

//자동으로 패키지 명세가 붙는 이유는 같은이름의 인터페이스를 상속받았기 때문
//둘 중의 하나는 패키지 명세를 해줘야 구분이 가능하다.
@org.springframework.stereotype.Controller
public class Ex01Controller implements Controller {
	Logger log = LoggerFactory.getLogger(getClass());
	
	
	@Override
	@RequestMapping("/ex01")
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView("ex01");
		mav.addObject("msg","메시지 1");
		return mav;
	}
	
	@RequestMapping("/ex08")
	public String ex08(Model model) {
		model.addAttribute("msg","메세지 2");
		return "ex01";
	}
	
	//주소와 같은 이름을 가진 view 페이지가 있다면 return 값이 없어도 자동으로 연결
	//대신 뎁스가 view와 달라지면 (ex. /test/ex06) 페이지를 찾지 못한다.
	//확장명은 아무 상관없다 (ex06.bit라고 맵핑해도 알아서 ex06 view 페이지를 찾는다)
	//메소드 명과는 상관없다.
	@RequestMapping(value="/ex06")
	public void ex06(HttpServletRequest req) {
		req.setAttribute("msg", "메세지 전달");
		log.debug("ex06 controller...");
	}
	
	//view를 리턴하는 방법
	@RequestMapping("/ex07")
	public View ex07() {
		return new View() {
			
			@Override
			public void render(Map<String, ?> model, HttpServletRequest request, HttpServletResponse response)
					throws Exception {
				log.debug("ex07 render...");
				//view를 직접 만들어버림
				PrintWriter out = response.getWriter();
				out.print("test page");
			}
			
			@Override
			public String getContentType() {
				log.debug("ex07 ContentType...");
				return null;
			}
		};
	}

}
