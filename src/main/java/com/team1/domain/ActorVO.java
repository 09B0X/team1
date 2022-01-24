package com.team1.domain;


import java.time.LocalDate;
import java.util.Date;

import lombok.Data;

@Data
public class ActorVO {
	private Integer id;
	private String name;
	private Date birth;
	private String photoName;
}

