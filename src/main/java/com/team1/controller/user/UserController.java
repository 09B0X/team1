package com.team1.controller.user;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.team1.domain.UserVO;
import com.team1.service.UserService;

import lombok.Setter;

@Controller
@RequestMapping("/user")
public class UserController {
	
	@Setter(onMethod_ = @Autowired)
	private UserService service;
	
	@GetMapping("/login")
	public void login() {
		
	}
	
	@PostMapping("/login")
	public String login(String id, String password, HttpSession session) {
		// service 사용해서 아이디로 멤버vo 얻고
		UserVO vo = service.read(id);

		if (vo == null) {
			// 로그인 실패
			return null;
		}

		// 얻어온 멤버vo의 패스워드와 입력한 패스워드가 같은 지 확인
		boolean correctPassword = password.equals(vo.getPassword());

		// 멤버vo가 널이거나 패스워드가 다르면 로그인 실패
		if (!correctPassword) {
			// 로그인 실패
			return null;
		}

		// 멤버vo가 널이 아니고 패스워드가 일치하면 로그인 성공
		// 로그인 성공
		session.setAttribute("loggedInMember", vo);

		System.out.println(session.getAttribute("loggedInMember"));

		return "redirect:/movie/list";
	}
	
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		// 세션 invalidate
		session.invalidate();
		// /board/list redirect
		return "redirect:/movie/list";
	}
	
	@GetMapping("/signup")
	public void signup() {
		
	}
	
	@PostMapping("/signup")
	public String signup(@ModelAttribute("user") UserVO user, RedirectAttributes rttr, Model model) {
		UserVO m = service.read(user.getId());

		if (m == null) {
			boolean ok = service.register(user);

			if (ok) {
				rttr.addFlashAttribute("result", "회원가입이 완료되었습니다.");
				return "redirect:/movie/list";
			} else {
				return "redirect:/user/signup";
			}
		} else {
			model.addAttribute("alertMessage", "중복된 아이디 입니다.");
			return null;
		}
	}
	
	@RequestMapping("/nickNameCheck")
	@ResponseBody
	public String nickNameCheck(String nickName) {
		boolean has = service.hasNickName(nickName);
		
		if (has) {
			return "unable";
		} else {
			return "able";
		}
	}
	
	@RequestMapping("/idcheck") 
	@ResponseBody
	public String idcheck(String id) {
		
		boolean has = service.hasId(id);
		
		if (has) {
			return "unable";
		} else {
			return "able";
		}
	}
	
	@GetMapping("/info")
	public String info(HttpSession session) {
		// 로그인 상태일 때
		return null;
	}
	
	@PostMapping("/info")
	public String info(UserVO user, HttpSession session, RedirectAttributes rttr) {
		// 로그인된 상태
		boolean ok = service.modify(user);

		if (ok) {
			rttr.addFlashAttribute("result", "회원 정보가 변경되었습니다.");
			session.setAttribute("loggedInMember", service.read(user.getId()));
		} else {
			rttr.addFlashAttribute("result", "회원 정보가 변경되지 않았습니다.");
		}

		return "redirect:/movie/list";
	}
	
	@PostMapping("/remove")
	public String remove(String id, HttpSession session, RedirectAttributes rttr) {
		/* filter로 처리함
		MemberVO vo = (MemberVO) session.getAttribute("loggedInMember");

		// 로그아웃 상태
		if (vo == null) {
			return "redirect:/member/login";
		}
		*/
		
		// 로그인된 상태
		service.remove(id);
		
		session.invalidate();
		
		rttr.addFlashAttribute("result", "회원 탈퇴하였습니다");
		
		return "redirect:/movie/list";
	}
}
