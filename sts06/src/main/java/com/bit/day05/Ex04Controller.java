package com.bit.day05;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

//Ŭ������ ���� requestmapping�� namespace�� ������ �Ѵ�
//Ŭ�������� �ٰ� �޼ҵ忡�� �Ⱥ��� �� ����. �޼ҵ�� �ʼ�**
//�ƿ� �޼ҵ忡 ���� requestmapping�� /test/ex04�� �ٷ� �ٿ��� ���� �ִ�.
// /test/ex04
// /test �������� ����
@Controller
@RequestMapping("/test")
public class Ex04Controller {
	
	//get��ĸ� ���
	@RequestMapping(value = "/ex04", method = RequestMethod.GET)
	public String ex04() {
		return "ex04";
	}
	
	//����ϴ� method ��ĵ� �������� �� �ִ�. default�� get ���
	//post��ĸ� ���
	@RequestMapping(value = "/ex05", method = RequestMethod.POST)
	public String ex05() {
		return "ex05";
	}
}
