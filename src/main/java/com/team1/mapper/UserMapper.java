package com.team1.mapper;

import com.team1.domain.UserVO;

public interface UserMapper {

	public int insert(UserVO user);

	public UserVO select(String id);
	
	public int update(UserVO member);
	
	public int delete(String id);
	
	public UserVO selectByNickName(String nickName);
}
