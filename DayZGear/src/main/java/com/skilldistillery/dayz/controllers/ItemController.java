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
	
	//WORKING
	@RequestMapping(path= {"addnewitem.do"}, method = RequestMethod.GET)
	public String goAddItem(Model model) {
		model.addAttribute("item", new Item());
		return "addnewitem";
	}
	
	//WORKING
	@RequestMapping(path = "newitemconfirm.do", method = RequestMethod.POST)
	public String addNewItem(@ModelAttribute Item item, Model model) {
	    Item createdItem = itemDao.create(item);
	    if (createdItem != null) {
	        model.addAttribute("item", createdItem); 
//	        return "redirect:idsearchresult.do?itemId=" + createdItem.getId();
	        return "newitemconfirm";
	    } else {
	            model.addAttribute("error", "Item could not be created.");
//	            return "addnewitem";
	            return "newitemconfirm";
	        }
	}
	
	//WORKING
	@RequestMapping(path= {"updateItem.do"}, method = RequestMethod.GET)
	public String goUpdateItem(Model model, @RequestParam("itemId") int itemId) {
		model.addAttribute("item", itemDao.findById(itemId));
		return "updateitem";
	}
	
	//PROCESS FORM SUBMISSION - FOR UPDATE -- SEEMS TO WORK
	@RequestMapping(path = {"updateItem.do"}, method= RequestMethod.POST)
	public String updateExistingItem(Model model, @ModelAttribute Item item) {
		Item updatedItem = itemDao.update(item.getId(), item); 
		model.addAttribute("items", updatedItem);
		return "redirect:allitems.do";
	}
	
	            
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
		}
}
