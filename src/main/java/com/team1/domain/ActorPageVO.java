package com.team1.domain;


import java.util.List;

import lombok.Data;

@Data
public class ActorPageVO {
	private ActorVO ActorVo;
	private List<CastVO> CastVO;
	
}