package com.team1.mapper;

import java.util.List;

import com.team1.domain.ActorVO;
import com.team1.domain.CastVO;

public interface ActorMapper {
		// 모든 게시물 조회
		public List<ActorVO> getActorList(); 
		
		public List<CastVO> getCast(Integer id);

		// id로 하나의 게시물 조회
		public ActorVO read(Integer ActorId);


		
}
