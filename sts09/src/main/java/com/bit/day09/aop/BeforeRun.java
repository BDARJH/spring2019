package com.bit.day09.aop;

import java.lang.reflect.Method;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.springframework.aop.MethodBeforeAdvice;

public class BeforeRun implements MethodBeforeAdvice{

	public void before(JoinPoint joinPoint) {
		System.out.println("before run...");
	}
	
	public void after(JoinPoint joinPoint,Object result) {
		System.out.println("after run..."+result);
	}
	
	public void around(ProceedingJoinPoint joinPoint) {
		System.out.println("around before run...");
		try {
			joinPoint.proceed();
		} catch (Throwable e) {
			e.printStackTrace();
		}
		System.out.println("around after run...");
	}
	
	@Override
	public void before(Method method, Object[] args, Object target) throws Throwable {
		//어떤 메소드를 실행하였는지
		System.out.println(method.getName());
		//넘기는 인자값
		System.out.println(args[0]);
		//우리가 xml에서 target으로 설정한 dao객체
		System.out.println(target);
	}
}
