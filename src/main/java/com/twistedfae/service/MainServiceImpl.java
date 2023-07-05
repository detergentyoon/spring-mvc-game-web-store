package com.twistedfae.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.twistedfae.mapper.MainMapper;
import com.twistedfae.model.UserVO;
import com.twistedfae.model.WeeklySaleVO;

@Service
public class MainServiceImpl implements MainService {

	@Autowired
    private MainMapper mapper;

	@Override
	public void register(UserVO user) {
		mapper.register(user);
	}
    
	@Override
	public UserVO login(String user_id, String password) {
		return mapper.login(user_id, password);
	}

	@Override
	public List<WeeklySaleVO> getAllWeeklySales() {
		return mapper.getAllWeeklySales();
	}

	@Override
	public UserVO getNickname(String user_id) {
		return mapper.getNickname(user_id);
	}

}
