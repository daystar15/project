package com.example.demo.goods.bo;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.goods.dao.GoodsDAO;

@Service
public class GoodsBO {

	@Autowired
	private GoodsDAO goodsDAO;
	
	public List<Map<String, Object>> getGoodsListTEST() {
		return goodsDAO.selectGoodsListTEST();
	}
	
	
}
