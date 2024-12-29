package com.skilldistillery.dayz.data;

import java.util.List;

import com.skilldistillery.dayz.entities.Item;

public interface ItemDAO {
	
	List<Item> findAll();
	Item findById(int itemId);
	Item create(Item newItem);
	Item update(int itemId, Item updatingItem);
	boolean deleteById(int itemId);
//	Item delete( itemId);

}
