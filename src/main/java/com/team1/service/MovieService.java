package com.team1.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.team1.domain.MovieVO;
import com.team1.mapper.MovieMapper;
import com.team1.mapper.ThumbMapper;

import lombok.Setter;

@Service
public class MovieService {

	@Setter(onMethod_ = @Autowired)
	private MovieMapper mapper;
	
	@Setter(onMethod_ = @Autowired)
	private ThumbMapper thumbMapper;
	
	
	public MovieVO get(Integer id) {
		return mapper.read(id);
	}

	public String[] getActor(Integer id) {
		return mapper.getActor(id);
	}

	public List<MovieVO> list() {
		return mapper.getList();
	}
	
	public String[] getThumbNailByMovieId(Integer id) {
		return thumbMapper.selectThumbByMovieId(id);
	}

	public String[] getKategorie(Integer id) {
		return mapper.getKategorie(id);
	}
}
