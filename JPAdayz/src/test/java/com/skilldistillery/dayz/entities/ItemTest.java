package com.skilldistillery.dayz.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.junit.jupiter.api.Assertions.assertNull;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;

class ItemTest {

	private static EntityManagerFactory emf;
	private EntityManager em;
	private Item item;
	
	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("JPAdayz");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		item = em.find(Item.class, 25);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
	}

	@Test
	void test_Item_entity_mapping() {
//		assertNull(item);
		assertNotNull(item);
		assertEquals("Carp Fillet", item.getName());
		assertEquals("Food/Drink", item.getType());
		assertEquals("Worn", item.getStatus());
		assertEquals(2, item.getQuantity());
		assertEquals(1.1, item.getWeight());
		assertEquals(1, item.getDescription());
		
	}

}
