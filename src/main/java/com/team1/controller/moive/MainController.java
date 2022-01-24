package com.team1.controller.moive;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.team1.domain.ActoridVO;
import com.team1.domain.MovieVO;
import com.team1.domain.MovieidVO;
import com.team1.service.MainService;
import com.team1.service.MovieService;

import lombok.Setter;

@Controller
@RequestMapping("/main")
public class MainController {

	@Setter(onMethod_ = @Autowired)
	private MainService service;

	@GetMapping("/recommend")
	public void list(Model model) {
		List<MovieVO> movieList = service.list();
		
		model.addAttribute("movieList", movieList);
	
	}
	@GetMapping("/recommendbym")
	public void listm(@RequestParam("kate") String kate,Model model) {
		List<MovieVO> movieList = service.listm(kate);
		
		model.addAttribute("movieList", movieList);
	
	}
	@GetMapping("/recommendbya")
	public void lista(@RequestParam("id") Integer userid,Model model) {
		List<MovieVO> movieList = service.lista(userid);
		
		model.addAttribute("movieList", movieList);
	}
	@GetMapping("/recommendbyd")
	public void listd(@RequestParam("id") Integer id,Model model) {
		List<MovieVO> movieList = service.listd();
		
		model.addAttribute("movieList", movieList);
	}
	
	@GetMapping("/get")
	public void get(@RequestParam("id") Integer id, Model model) {
		MovieVO movie = service.get(id);
		
		String[] actorList = service.getActor(id);
		String actor = String.join(", ", actorList);
		
		String[] kategorieList = service.getKategorie(id);
		String kategories = String.join(", ", kategorieList);
		
		String[] Platform  = service.getPlatform(id);
		
		
		model.addAttribute("movie", movie);
		model.addAttribute("actor", actor);
		model.addAttribute("kategories", kategories);
		model.addAttribute("Platform", Platform);
	}
}
