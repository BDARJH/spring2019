package com.bit.day09.aop;

import org.aopalliance.intercept.MethodInterceptor;
import org.aopalliance.intercept.MethodInvocation;

public class AroundRun implements MethodInterceptor{

	@Override
	public Object invoke(MethodInvocation invocation) throws Throwable {
		System.out.println("before");
		Object obj = null;
		try {
			obj = invocation.proceed();			
		}catch(Exception e) {
			e.printStackTrace();
		}
		System.out.println("after");
		return obj;
	}
	
}
