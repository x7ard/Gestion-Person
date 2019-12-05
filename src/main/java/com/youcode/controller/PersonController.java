package com.youcode.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.youcode.entity.person;
import com.youcode.services.I_PersonService;

@Controller
public class PersonController {

	@Autowired
	I_PersonService service;
	@RequestMapping("/display")
	public String display(Model M) {
		
		List<person> I = service.getAll();
		M.addAttribute("list", I);
		
		person P = new person();
		M.addAttribute("person", P);
		
		return "index";	
	}
	
	@RequestMapping("/add")
	public String add(@ModelAttribute("person")person P) {
		service.add(P);
		return "redirect:/display";
	}
	
	@RequestMapping("/delete")
	public String delete(@RequestParam("id") int id) {
		service.delete(id);
		return "redirect:/display";

	}
	
	@RequestMapping("/sendData")
	public String sendData(Model M,@RequestParam("id") int id) {
		person P = service.getPerson(id);
		M.addAttribute("person", P);
		return "updatejsp";
	}
	
	@RequestMapping("/update")
	public String update(@ModelAttribute("person")person P) {
		service.update(P);
		return "redirect:/display";
		
	}
	
	
	
	
}
