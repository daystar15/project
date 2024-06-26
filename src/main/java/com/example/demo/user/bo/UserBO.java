package com.example.demo.user.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.user.dao.UserDAO;
import com.example.demo.user.dto.UserDTO;

@Service
public class UserBO {

	@Autowired
	private UserDAO userDAO;
	
	public UserDTO getUserByLoginIdPassword(String user_id, String user_pwd) {
		return userDAO.selectUserByLoginIdPassword(user_id, user_pwd);
	}
}
