package com.chadvest.omikujiform.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/omikuji")
public class OmikujiController {
	
	@GetMapping("")
	public String index() {
		return "index";
	}
	
	@PostMapping("/process")
	public String process(
		HttpSession session,
		@RequestParam(value="years") Integer years,
		@RequestParam(value="city") String city,
		@RequestParam(value="person") String person,
		@RequestParam(value="hobby") String hobby,
		@RequestParam(value="animal") String animal,
		@RequestParam(value="note") String note
		) {
		session.setAttribute("years", years);
		session.setAttribute("city", city);
		session.setAttribute("person", person);
		session.setAttribute("hobby", hobby);
		session.setAttribute("animal", animal);
		session.setAttribute("note", note);
		return "redirect:/omikuji/show";
	}
	
	@GetMapping("/show")
	public String show(HttpSession session, Model model) {
		model.addAttribute("cyears", session.getAttribute("years"));
		model.addAttribute("ccity", session.getAttribute("city"));
		model.addAttribute("cperson", session.getAttribute("person"));
		model.addAttribute("chobby", session.getAttribute("hobby"));
		model.addAttribute("canimal", session.getAttribute("animal"));
		model.addAttribute("cnote", session.getAttribute("note"));
		return "show";
	}

}
