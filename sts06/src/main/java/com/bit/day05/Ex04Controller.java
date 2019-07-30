package com.bit.day05;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

//클래스에 붙은 requestmapping은 namespace의 역할을 한다
//클래스에만 붙고 메소드에는 안붙을 수 없다. 메소드는 필수**
//아예 메소드에 붙은 requestmapping에 /test/ex04를 바로 붙여줄 수도 있다.
// /test/ex04
// /test 공통적용 가능
@Controller
@RequestMapping("/test")
public class Ex04Controller {
	
	//get방식만 허용
	@RequestMapping(value = "/ex04", method = RequestMethod.GET)
	public String ex04() {
		return "ex04";
	}
	
	//허용하는 method 방식도 설정해줄 수 있다. default는 get 방식
	//post방식만 허용
	@RequestMapping(value = "/ex05", method = RequestMethod.POST)
	public String ex05() {
		return "ex05";
	}
}
