package com.example.demo.user.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.example.demo.user.dto.UserDTO;

@Repository
public interface UserDAO {

	public UserDTO selectUserByLoginIdPassword(
			@Param("user_id") String user_id,
			@Param("user_pwd") String user_pwd);
}
