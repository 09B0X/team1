package com.team1.controller.moive;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.team1.domain.MovieVO;
import com.team1.service.MovieService;

import lombok.Setter;

@Controller
@RequestMapping("/movie")
public class MovieController {

	@Setter(onMethod_ = @Autowired)
	private MovieService service;
	
	@GetMapping("/list")
	public void list(Model model) {
		List<MovieVO> movieList = service.list();
		
		model.addAttribute("movieList", movieList);
	}
	
	@GetMapping("/get")
	public void get(@RequestParam("id") Integer id, Model model) {
		MovieVO movie = service.get(id);
		
		String[] actorList = service.getActor(id);
		String actor = String.join(", ", actorList);
		
		String[] kategorieList = service.getKategorie(id);
		String kategories = String.join(", ", kategorieList);
		
		model.addAttribute("movie", movie);
		model.addAttribute("actor", actor);
		model.addAttribute("kategories", kategories);
	}
}
