package com.bit.day09.aop;

import java.lang.reflect.Method;

import org.springframework.aop.AfterReturningAdvice;

public class AfterRun implements AfterReturningAdvice{

	//afterReturning : return된 후에만 실행 (오류로 return이 안된다면 수행이 안된다)
	@Override
	public void afterReturning(Object returnValue, Method method, Object[] args, Object target) throws Throwable {
		//returnValue : 메소드가 수행된 후 return 값이 무엇인지
		System.out.println("afterReturning...");
	}

}
