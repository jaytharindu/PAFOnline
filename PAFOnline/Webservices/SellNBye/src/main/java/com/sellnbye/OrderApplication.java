package com.sellnbye;

import java.util.ArrayList;
import java.util.List;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.data.jpa.repository.config.EnableJpaAuditing;

import com.sellnbye.controller.OrderController;
import com.sellnbye.dao.OrderDAO;
import com.sellnbye.model.Order;

@SpringBootApplication
@EnableJpaAuditing 
public class OrderApplication {

	public static void main(String args[]) {
	
		SpringApplication.run(OrderApplication.class, args);
	}
}
