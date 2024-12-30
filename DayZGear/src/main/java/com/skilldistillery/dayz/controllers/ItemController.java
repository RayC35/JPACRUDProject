package com.skilldistillery.dayz.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
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
		System.out.println(item.getStatus());
		System.out.println(item.getType());
		return "idsearchresult";
	}
	
	@RequestMapping(path= {"addnewitem.do"}, method = RequestMethod.GET)
	public String goAddItem(Model model) {
		model.addAttribute("item", new Item());
		return "addnewitem";
	}
	
	@RequestMapping(path = "addnewitem.do", method = RequestMethod.POST)
	public String addNewItem(@ModelAttribute Item item, Model model) {
	    Item createdItem = itemDao.create(item);
	    if (createdItem != null) {
	        model.addAttribute("item", createdItem); 
	        return "redirect:idsearchresult.do?itemId=" + createdItem.getId();
	    } else {
	            model.addAttribute("error", "Item could not be created.");
	            return "addnewitem";
	        }
	}
//	@RequestMapping(path= {"newitemconfirm.do"})
//	public String create() {
//		return "newitemconfirm";
//	}
	            
	//WORKING
	@RequestMapping(path= {"delete.do"}, method = RequestMethod.POST)
	public String deleteItem(@RequestParam("itemId") int itemId, Model model) {
	    boolean isDeleted = itemDao.deleteById(itemId);
	    if (isDeleted) {
	        return "redirect:allitems.do";
	    } else {
	        model.addAttribute("error", "Item could not be deleted.");
	        return "allitems"; 
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
