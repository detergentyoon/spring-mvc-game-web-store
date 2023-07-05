package com.twistedfae.service;

import java.util.List;

import com.twistedfae.model.UserVO;
import com.twistedfae.model.WeeklySaleVO;

public interface MainService {
	
	// 회원가입
	public void register(UserVO user);
	
	// 로그인
	public UserVO login(String user_id, String password);
	
	// 주중 할인 섹션 출력
	public List<WeeklySaleVO> getAllWeeklySales();

	// 로그인 시 헤더에서 닉네임 출력
	public UserVO getNickname(String user_id);
}
