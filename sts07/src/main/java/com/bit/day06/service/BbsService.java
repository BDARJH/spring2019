package com.bit.day06.service;

import org.springframework.ui.Model;

import com.bit.day06.model.entity.BbsVo;

public interface BbsService {
	//list 출력기능
	void selectAll(Model model);
	//상세보기 기능
	void selectOne(Model model,int num);
	//입력 기능
	void add(BbsVo bean);
	//수정 기능
	void update(BbsVo bean);
	//삭제 기능
	void delete(int num);
}
