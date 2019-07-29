package com.bit.day04;

import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.bit.day04.module.Module1;
import com.bit.day04.module.Module2;
import com.bit.day04.module.Module3;

public class Ex02 {

	public static void main(String[] args) {
		// IoC (�����) ���� module3���� � ����� �������� �����ߴµ�
		//������ ����ܰ迡�� ������ �� �ִ�.
//		Module3 mod = new Module3();
//		mod.setModule(new Module2());
		
		ClassPathXmlApplicationContext context = null;
		context = new ClassPathXmlApplicationContext("applicationContext.xml");
		Module3 mod = (Module3) context.getBean("mod");
		mod.func();
		
	}

}
