package com.bit.day04;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import com.bit.day04.module.Module;

public class Ex05 {
	public static void main(String[] args) {
//		String filename = "applicationContext.xml";
		String filename = "classpath:/applicationContext.xml";
		
		ApplicationContext ctxt = null;
//		ctxt = new ClassPathXmlApplicationContext(filename);
		
		//system에서 파일경로를 통해 읽는다.
//		String path = "C:\\java\\workspace4\\sts04\\src\\";
//		String path = "C:\\java\\workspace4\\sts04\\target\\classes\\";
		//현재루트를 기준으로 경로를 설정할 수도 있다
		String path = "./target\\classes\\";
//		ctxt = new FileSystemXmlApplicationContext(path+filename);
		
		//두개의 기능을 동시에
		//그냥 filename도 되고, classpath를 주고싶다면 classpath:/를 추가하면 된다
		//system경로가 안되는 이유는 packaging 했을 때 기준으로 보기 때문에
		ctxt = new GenericXmlApplicationContext(filename);
		
		Module module = (Module) ctxt.getBean("module");
		System.out.println(module.getMsg());
	}
}
