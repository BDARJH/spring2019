package com.bit.day05;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bit.day05.model.entity.Day02Vo;

@Controller
public class Form02Controller {
	Logger log = LoggerFactory.getLogger(getClass());
	
	@RequestMapping(value="/ex12", method = RequestMethod.GET)
	public String get() {
		return "form02";
	}
	
	//Day02Vo의 필드값과 넘어온 값들의 이름이 같아야한다.
	//Day02Vo의 이름이 bean이면 modelattribute 생략가능
	@RequestMapping(value="/ex12", method = RequestMethod.POST)
	public void post(@ModelAttribute("bean") Day02Vo vo) {
		log.debug(vo.toString());
	}
}
