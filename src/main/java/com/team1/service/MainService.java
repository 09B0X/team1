package com.team1.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.team1.domain.ActoridVO;
import com.team1.domain.MovieVO;
import com.team1.domain.MovieidVO;
import com.team1.mapper.MainMapper;
import com.team1.mapper.MovieMapper;
import com.team1.mapper.ThumbMapper;

import lombok.Setter;

@Service
public class MainService {

	@Setter(onMethod_ = @Autowired)
	private MainMapper mapper;
	
	@Setter(onMethod_ = @Autowired)
	private ThumbMapper thumbMapper;
	
	
	public MovieVO get(Integer id) {
		return mapper.read(id);
	}
	public MovieVO getm(MovieidVO mid) {
		return mapper.readm(mid);
	}
	public String[] getActor(Integer id) {
		return mapper.getActor(id);
	}
	
	public List<Integer> getar(Integer id) {
		return mapper.getar(id);
	}
	public MovieidVO getmid(Integer id) {
		return mapper.getmid(id);
	}
	public List<MovieVO> listd() {
		return mapper.getListd();
	}
	public List<MovieVO> listm(String kate) {
		return mapper.getListm(kate);
	}
	public List<MovieVO> lista(Integer userid) {
		return mapper.getLista(userid);
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
	public String[] getPlatform(Integer id) {
		return mapper.getPlatform(id);
	}
	
}
