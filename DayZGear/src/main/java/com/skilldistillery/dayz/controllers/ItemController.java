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
	
	//WORKING -- change method name?
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
	
	@RequestMapping(path= {"addnewitem.do"})
	public String goAddItem(Model model) {
		return "addnewitem";
	}
	
	@RequestMapping(path= {"delete.do"}, method = RequestMethod.POST)
	public String deleteItem(@RequestParam("itemId") int itemId, Model model) {
	    boolean isDeleted = itemDao.deleteById(itemId);
	    if (isDeleted) {
	        return "redirect:allitems.do";
	    } else {
	        model.addAttribute("error", "Item could not be deleted.");
	        return "allitems"; 
//	public String deleteById(Model model) {
//		return "allitems";
	}
	
//	@RequestMapping(path= {"updateItem.do"})
//	public String goUpdate(Model model, @RequestParam("itemId") int itemId) {
//		Item item = itemDao.findById(itemId);
//		model.addAttribute("searchResult", item);
//		return "updateItem";
//	}
	
//	@RequestMapping(path= {"updateItem.do"}, method = RequestMethod.GET)
//	public String goUpdate(Model model, @RequestParam("itemId") int itemId) {
//		model.addAttribute("item", itemDao.findById(itemId));
//		return "updateItem";
//	}
	    
//	@RequestMapping(path= {"updateItem.do"}, method = RequestMethod.GET)
//	public String update(Model model, @RequestParam("itemId") int itemId) {
//		model.addAttribute("item", itemDao.findById(itemId));
//		return "updateItem";
//	}
	}
}
