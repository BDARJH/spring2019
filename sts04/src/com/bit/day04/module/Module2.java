package com.bit.day04.module;

public class Module2 implements Module{
	private String msg = "환영합니다";
	
	public Module2() {
	}
	
	public Module2(String msg) {
		this.msg = msg;
	}
		
	public String getMsg() {
		return msg;
	}
	
//	public void setMsg(String msg) {
//		this.msg = msg;
//	}
}
