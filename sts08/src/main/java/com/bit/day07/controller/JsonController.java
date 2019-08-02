package com.bit.day07.controller;

import java.sql.SQLException;
import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bit.day07.model.entity.BbsVo;
import com.bit.day07.service.BbsService;

@Controller
public class JsonController {
	Logger log = LoggerFactory.getLogger(getClass());
	@Inject
	BbsService bbsService;

//	@RequestMapping("/json/list")
	//@ResponseBody는 return 값을 body로 사용하는 것
	//jackson 라이브러리를 사용하면 알아서 json으로 변경된다.
	@GetMapping("/json/list")
	public @ResponseBody List<BbsVo> getList() throws SQLException {
//		log.debug(bbsService.list().toString());
//		bbsService.list();
		return bbsService.list();
	}
	
//	@RequestMapping(value="/json/add", method = RequestMethod.POST)
	@PostMapping("/json/add")
	public ResponseEntity add(@ModelAttribute BbsVo bean) throws SQLException {
//		log.debug("name:{},sub:{},content:{}",new Object[] {name,sub,content});
		bbsService.bbsAdd(bean);
		//return이 있어야하는 이유 비동기 통신이어도 이게 success인지 확인해야 콜백함수를 실행시킬 수 있음
		//따라서 성공적으로 종료되는 무언가의 전달이 꼭 있어야 함
		//따라서 body는 없지만 헤더의 OK정보값은 전달이 되어야하기때문에 이렇게 한다.
		ResponseEntity entity=ResponseEntity.status(HttpStatus.OK).body("");
		return entity;
	}
	
}
