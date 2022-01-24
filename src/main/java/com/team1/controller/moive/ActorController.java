package com.team1.controller.moive;

import java.io.IOException;
import java.time.LocalDate;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import com.team1.domain.ActorPageInfoVO;

import com.team1.domain.ActorVO;
import com.team1.domain.CastVO;
import com.team1.service.ActorService;
import lombok.Setter;

@Controller
@RequestMapping("/actor")
public class ActorController {

	@Setter(onMethod_ = @Autowired)
	private ActorService service;
	
	@GetMapping("/actorlist")
	public void list(Model model) {

		List<ActorVO> list = service.getList();
		
		model.addAttribute("list", list);
		
		
	}

	// /board/get?id=10
	@GetMapping({ "/actor" })
	public void get(@RequestParam("id") Integer id, Model model) {
		ActorVO Actor = service.read(id);
		List<CastVO> Cast = service.getCast(id);
		
		
		model.addAttribute("Actor", Actor);
		model.addAttribute("Cast", Cast);
		}
}

