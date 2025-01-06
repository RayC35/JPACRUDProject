package com.skilldistillery.dayz.data;

import java.util.List;

import org.springframework.stereotype.Service;

import com.skilldistillery.dayz.entities.Item;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.transaction.Transactional;

@Service
@Transactional
public class ItemDAOJPAImpl implements ItemDAO {

	@PersistenceContext
	private EntityManager em;
	
	//IS THE JPQL NECESSARY?
	@Override
	public List<Item> findAll() {
		String jpql = "SELECT i from Item i";
		return em.createQuery(jpql, Item.class).getResultList(); 
	}

	@Override
	public Item findById(int itemId) {
		return em.find(Item.class, itemId);
	}

	@Override
	public Item create(Item newItem) {
		em.persist(newItem);
		return newItem;
	}

	@Override
	public Item update(int itemId, Item updatingItem) {
		Item existingItem = em.find(Item.class, itemId);
		if (existingItem != null) {
			existingItem.setName(updatingItem.getName());
			existingItem.setType(updatingItem.getType());
			existingItem.setStatus(updatingItem.getStatus());
			existingItem.setQuantity(updatingItem.getQuantity());
			existingItem.setWeight(updatingItem.getWeight());
			existingItem.setDescription(updatingItem.getDescription());
			
			return existingItem;
		} else {
		return null;
		}
	}

	@Override
	public boolean deleteById(int itemId) {
		Item itemToDelete = em.find(Item.class, itemId);
		if (itemToDelete != null) {
			em.remove(itemToDelete);
			return true;
		}
		return false;
	}

}
