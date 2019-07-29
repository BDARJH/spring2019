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
		
		//system���� ���ϰ�θ� ���� �д´�.
//		String path = "C:\\java\\workspace4\\sts04\\src\\";
//		String path = "C:\\java\\workspace4\\sts04\\target\\classes\\";
		//�����Ʈ�� �������� ��θ� ������ ���� �ִ�
		String path = "./target\\classes\\";
//		ctxt = new FileSystemXmlApplicationContext(path+filename);
		
		//�ΰ��� ����� ���ÿ�
		//�׳� filename�� �ǰ�, classpath�� �ְ�ʹٸ� classpath:/�� �߰��ϸ� �ȴ�
		//system��ΰ� �ȵǴ� ������ packaging ���� �� �������� ���� ������
		ctxt = new GenericXmlApplicationContext(filename);
		
		Module module = (Module) ctxt.getBean("module");
		System.out.println(module.getMsg());
	}
}
