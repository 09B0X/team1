package com.team1.mapper;

import java.util.List;

import com.team1.domain.ActoridVO;
import com.team1.domain.MovieVO;
import com.team1.domain.MovieidVO;

public interface MainMapper {

	public MovieVO read(Integer movieId);

	public String[] getActor(Integer movieId);

	public List<MovieVO> getListd();
	public List<MovieVO> getListm(String kate);
	public List<MovieVO> getLista(Integer userid);
	public List<MovieVO> getList();
	public List<Integer> getar(Integer id);
	public MovieidVO getmid(Integer id);
	public String[] getKategorie(Integer id);

	public String[] getPlatform(Integer id);

	public MovieVO readm(MovieidVO mid);
}
