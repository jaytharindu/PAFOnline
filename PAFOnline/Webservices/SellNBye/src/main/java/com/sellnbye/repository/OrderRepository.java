package com.sellnbye.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.sellnbye.model.Order;

public interface OrderRepository extends JpaRepository<Order, Long> {

}
