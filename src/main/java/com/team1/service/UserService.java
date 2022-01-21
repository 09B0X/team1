package com.team1.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.team1.domain.UserVO;
import com.team1.mapper.UserMapper;

import lombok.Setter;

@Service
public class UserService {

	@Setter(onMethod_ = @Autowired)
	private UserMapper mapper;

	public UserVO read(String id) {
		return mapper.select(id);
	}

	public boolean register(UserVO user) {

		try {
			return mapper.insert(user) == 1;
		} catch (Exception e) {
			e.printStackTrace();
		}

		return false;
	}

	@Transactional
	public boolean remove(String id) {

		// 3. 멤버 지우기
		return mapper.delete(id) == 1;
	}
	
	public boolean modify(UserVO user) {
		return mapper.update(user) == 1;
	}
	
	public boolean hasId(String id) {

		UserVO user =  mapper.select(id);
		
		return user != null;
	}

	public boolean hasNickName(String nickName) {

		UserVO user = mapper.selectByNickName(nickName);
		
		return user != null;
	}
}
