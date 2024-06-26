package com.example.demo.goods;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.goods.bo.GoodsBO;

import jakarta.servlet.http.HttpSession;

@Controller
public class GoodsController {
	
	@Autowired
	private GoodsBO goodsBO;

	/**
	 * goods_list
	 */
	@GetMapping("/goods_list_view")
	public String goodsListView(Model model, HttpSession session) {
		
		
		
		List<Map<String, Object>> goodsList = goodsBO.getGoodsListTEST();
		model.addAttribute("goodsList", goodsList);

		
		model.addAttribute("viewName", "goods/goodsList");
		return "template/layout";
	}
}
