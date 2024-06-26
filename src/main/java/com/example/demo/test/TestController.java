package com.example.demo.test;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class TestController {
	
	@GetMapping("/test1")
	@ResponseBody // 데이터 통으로 넘김
	public String test1() {
		return "Hello world!!";
	}
	
	@GetMapping("/test2")
	@ResponseBody
	public Map<String, Object> test2() {
		Map<String, Object> result = new HashMap<>();
		result.put("키1", 111);
		result.put("키2", 222);
		result.put("키3", 333);
		return result;
	}
	
	@GetMapping("/test3")
	public String test3() {
		return "test/test";
	}
	
}
