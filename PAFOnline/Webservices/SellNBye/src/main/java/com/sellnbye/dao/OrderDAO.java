package com.sellnbye.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;
import com.sellnbye.model.Order;
import com.sellnbye.repository.OrderRepository;

@Service
public class OrderDAO {


	@Autowired
	OrderRepository orderRepository;
	
	
	/* SAVE AN ORDER */
	
	public Order save(Order ord) {
		return orderRepository.save(ord);
	}
	
	
	/* SEARCH ALL ORDER */
	
	public List<Order> findAll(){
		return orderRepository.findAll();
	}
	
	
	/* GET AN ORDER */
	
	public Order findOne(Long oId) {
		return orderRepository.findOne(oId);
	}
	
	
	/* DELETE AN ORDER by id */
	
	public void delete(Order ord) {
		orderRepository.delete(ord);
	
	}
} 
