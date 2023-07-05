package com.twistedfae.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.twistedfae.model.UserVO;
import com.twistedfae.model.WeeklySaleVO;

public interface MainMapper {
	
	// 회원가입
	public void register(UserVO user);

	// 로그인
	public UserVO login(@Param("user_id") String user_id, @Param("password") String password);
	
	// 주중 할인 섹션 출력
	public List<WeeklySaleVO> getAllWeeklySales();
	
	// 로그인 시 헤더에서 닉네임 출력
	public UserVO getNickname(@Param("user_id") String user_id);

}
