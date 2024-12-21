package com.skilldistillery.dayz.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.dayz.data.ItemDAO;

@Controller
public class ItemController {
	
	@Autowired
	private ItemDAO itemDao;
	
	@RequestMapping(path= {"/", "home.do"})
	public String home(Model model) {
		model.addAttribute("itemList", itemDao.findAll());
		return "home";
	}

}
