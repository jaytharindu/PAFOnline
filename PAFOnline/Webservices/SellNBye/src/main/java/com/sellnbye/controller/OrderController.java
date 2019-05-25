package com.sellnbye.controller;

import java.util.List;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired; 
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.sellnbye.dao.OrderDAO;
import com.sellnbye.model.Order;

@RestController
@RequestMapping("/company")
public class OrderController {

	@Autowired	
	OrderDAO orderDAO;

	/* SAVE AN ORDER */
	
	@PostMapping("/orders")
	public Order createOrder(@Valid @RequestBody Order ord) {
		return orderDAO.save(ord);
	}
	
	
	/* GET ALL ORDERS*/
	
	@GetMapping("/orders")
	public List<Order> getAllOrders(){
		return orderDAO.findAll();
	}
	
	
	/* GET ORDER BY ID */
	
	@GetMapping("/orders/{id}")
	public ResponseEntity<Order> getOrderById(@PathVariable(value="id") Long oId){
	
		Order ord = orderDAO.findOne(oId);
	
		if(ord==null) {
			return ResponseEntity.notFound().build();
		}
			return ResponseEntity.ok().body(ord); 
	}
	
	
	/* UPDATE AN ORDER BY ID */
	
	@PutMapping("/orders/{id}")
	public ResponseEntity<Order> updateOrder(@PathVariable(value="id") Long oId,@Valid @RequestBody Order ordDetails){
	
		Order ord=orderDAO.findOne(oId);
	
		if(ord==null) {
			return ResponseEntity.notFound().build();
		}
			ord.setName(ordDetails.getName());
			ord.setAddress(ordDetails.getAddress());
			ord.setPaymethod(ordDetails.getPaymethod());

			Order updateOrder=orderDAO.save(ord);
			return ResponseEntity.ok().body(updateOrder);
		}
	
	
	/*DELETE AN ORDER*/
	
	@DeleteMapping("/orders/{id}")
	public ResponseEntity<Order> deleteOrder(@PathVariable(value="id") Long oId){
	
	
		Order ord = orderDAO.findOne(oId);
	
		if(ord==null) {
			return ResponseEntity.notFound().build();
		}
			orderDAO.delete(ord);
			return ResponseEntity.ok().build(); 
	}
}
