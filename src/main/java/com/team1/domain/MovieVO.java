package com.team1.domain;

import lombok.Data;

@Data
public class MovieVO {
	private Integer id;
	private String title;
	private String content;
	private String thumbNail;
	private String platformimg;
	private String platform;
	private Integer userid;
}
