package com.skilldistillery.dayz.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.skilldistillery.dayz.data.ItemDAO;

@Controller
public class ItemController {
	
	@Autowired
	private ItemDAO itemDao;
	
	@RequestMapping(path= {"/", "home.do"})
	public String goHome(Model model) {
		return "home";
	}
	
	
	@RequestMapping( path= {"allitems.do"})
	public String home(Model model) {
		model.addAttribute("itemList", itemDao.findAll());
		return "allitems";
	}
	
	@RequestMapping(path= {"idsearchresult.do"})
	public String findById(Model model, @RequestParam("itemId") int itemId) {
		model.addAttribute("searchResult", itemDao.findById(itemId));
		return "idsearchresult";
	}

}
