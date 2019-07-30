package com.bit.day05.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bit.day05.model.Day05Dao;

@Controller
@RequestMapping("/bbs")
public class BbsController {
	@Autowired
	Day05Dao day05Dao;
	
	@RequestMapping("/list")
	public void list(Model model) {
		model.addAttribute("day05list", day05Dao.selectAll());
	}
	
	@RequestMapping("/detail")
	public void detail(Model model, int num) {
		model.addAttribute("day05detail", day05Dao.selectOne(num));
	}
}
