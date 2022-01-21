package com.team1.mapper;

import java.util.List;

import com.team1.domain.MovieVO;

public interface MovieMapper {

	public MovieVO read(Integer movieId);

	public String[] getActor(Integer movieId);

	public List<MovieVO> getList();

	public String[] getKategorie(Integer id);
}
