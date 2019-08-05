package com.bit.day09.aop;

import org.springframework.aop.ThrowsAdvice;

//exception 상황에서 수행되는 throwsadvice
public class AfterExceptionRun implements ThrowsAdvice{
	public void afterThrowing(Exception ex) {
		System.out.println("에러로 끝남");
	}
}
