package com.example.demo.user;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.user.bo.UserBO;
import com.example.demo.user.dto.UserDTO;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@RestController
@RequestMapping("/user")
public class UserRestController {

	@Autowired
	private UserBO userBO;
	
	@PostMapping("/sign_in")
	public Map<String, Object> singIn(
			@RequestParam(value="user_id", required=false) String user_id,
			@RequestParam(value="user_pwd", required=false) String user_pwd) {
		
			// db select
			UserDTO user = userBO.getUserByLoginIdPassword(user_id, user_pwd);
			
			Map<String, Object> result = new HashMap<>();
			
			if (user != null) {
				// 사용자 정보 1건 이상
				result.put("code", 200);
				result.put("result", "성공");
				
			} else {
				// 사용자 정보 0건 이하
				result.put("code", 500);
				result.put("errorMessage", "존재하지 않는 사용자입니다.");
			}
			
			// return map
			return result; // response
		
	}
	
}
