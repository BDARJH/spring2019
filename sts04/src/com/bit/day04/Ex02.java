package com.bit.day04;

import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.bit.day04.module.Module1;
import com.bit.day04.module.Module2;
import com.bit.day04.module.Module3;

public class Ex02 {

	public static void main(String[] args) {
		// IoC (제어역전) 원래 module3에서 어떤 모듈을 선택할지 제어했는데
		//이제는 실행단계에서 제어할 수 있다.
//		Module3 mod = new Module3();
//		mod.setModule(new Module2());
		
		ClassPathXmlApplicationContext context = null;
		context = new ClassPathXmlApplicationContext("applicationContext.xml");
		Module3 mod = (Module3) context.getBean("mod");
		mod.func();
		
	}

}
