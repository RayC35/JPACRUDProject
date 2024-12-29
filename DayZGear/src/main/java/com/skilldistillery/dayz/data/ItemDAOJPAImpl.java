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
	
	@Override
	public List<Item> findAll() {
		String jpql = "SELECT i from Item i";
		return em.createQuery(jpql, Item.class).getResultList(); 
	}

	@Override
	public Item findById(int itemId) {
//		String jpql = "SELECT "
		return em.find(Item.class, itemId);
	}

	//NO transaction.begin/commit
	//NO em.close()
	@Override
	public Item create(Item newItem) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Item update(int itemId, Item updatingItem) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean deleteById(int itemId) {
		// TODO Auto-generated method stub
		return false;
	}

}
