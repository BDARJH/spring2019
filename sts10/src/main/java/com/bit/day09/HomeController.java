package com.bit.day09;

import java.sql.SQLException;
import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bit.day09.model.entity.Day09Vo;
import com.bit.day09.service.Day09Service;

@Controller
//@Transactional
public class HomeController {
	@Inject
	Day09Service day09Service;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) throws SQLException {
		day09Service.getList(model);
		return "home";
	}
	
	@RequestMapping(value = "/{su}", method = RequestMethod.GET)
	public String home(Model model,@PathVariable int su) throws SQLException {
		if(su==0)day09Service.getList(model);
		else day09Service.getList(model,su);
		return "home";
	}
	
	@RequestMapping(value="/add", method = RequestMethod.POST)
	public String add(@ModelAttribute Day09Vo bean) throws SQLException {
		day09Service.add(bean);
		return "redirect:/";
	}
	
	@RequestMapping(value="/edit", method = RequestMethod.POST)
	public String edit(@ModelAttribute Day09Vo bean) throws SQLException {
		day09Service.edit(bean);
		return "redirect:/";
	}
	
	@RequestMapping(value="/del", method = RequestMethod.POST)
	public String delete(int num) throws SQLException {
		day09Service.delete(num);
		return "redirect:/";
	}
	
}
