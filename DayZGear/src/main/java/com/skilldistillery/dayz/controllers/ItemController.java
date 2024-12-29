package com.skilldistillery.dayz.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.skilldistillery.dayz.data.ItemDAO;
import com.skilldistillery.dayz.entities.Item;

@Controller
public class ItemController {
	
	@Autowired
	private ItemDAO itemDao;
	
	//WORKING
	@RequestMapping(path= {"/", "home.do"})
	public String goHome(Model model) {
		return "home";
	}
	
	//WORKING
	@RequestMapping( path= {"allitems.do"})
	public String home(Model model) {
		model.addAttribute("itemList", itemDao.findAll());
		return "allitems";
	}
	//WORKING
	@RequestMapping(path= {"idsearchresult.do"}, method = RequestMethod.GET )
	public String findById(Model model, @RequestParam("itemId") int itemId) {
		Item item = itemDao.findById(itemId);
		model.addAttribute("searchResult", item);
		return "idsearchresult";
	}

}
