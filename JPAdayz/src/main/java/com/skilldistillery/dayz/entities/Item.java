package com.skilldistillery.dayz.entities;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Item {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	private String name;
	
	private String type;

	private String status;
	
	private int quantity;
	
	private double weight;
	
	private String description;



	public Item() {
		super();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getType() {
		return type;
	}
	
	public void setType(String type) {
		this.type = type;
	}
	
	public String getStatus() {
		return status;
	}
	
	public void setStatus(String status) {
		this.status = status;
	}
	
	public int getQuantity() {
		return quantity;
	}
	
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public double getWeight() {
		return weight;
	}
	
	public void setWeight(double weight) {
		this.weight = weight;
	}
	
	public String getDescription() {
		return description;
	}
	
	public void setDescription(String description) {
		this.description = description;
	}
	@Override
	public String toString() {
		return "Item [id=" + id + ", name=" + name + ", type=" + type + ", status=" + status + ", quantity=" + quantity
				+ ", weight=" + weight + ", description=" + description + "]";
	}

	
	
}
