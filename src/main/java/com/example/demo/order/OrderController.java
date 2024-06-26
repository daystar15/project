package com.example.demo.order;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class OrderController {

	/**
	 * order_list
	 */
	@GetMapping("/order_list_view")
	public String orderListView(Model model) {
		model.addAttribute("viewName", "order/orderList");
		return "template/layout";
	}
	
	/**
	 * order
	 */
	@GetMapping("/order_view")
	public String orderView(Model model) {
		model.addAttribute("viewName", "order/order");
		return "template/layout";
	}
}
