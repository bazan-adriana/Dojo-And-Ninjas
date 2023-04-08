package com.adriana.dojoandninjas.controllers;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.adriana.dojoandninjas.models.Dojo;
import com.adriana.dojoandninjas.models.Ninja;
import com.adriana.dojoandninjas.services.DojoService;
import com.adriana.dojoandninjas.services.NinjaService;

@Controller
public class HomeController {
	
	public final DojoService dojoServ;
	public final NinjaService ninjaServ;

	public HomeController(DojoService dojoServ, NinjaService ninjaServ) {
		this.dojoServ = dojoServ;
		this.ninjaServ = ninjaServ;
	}

	
	@GetMapping("/")
	public String index(Model model) {
		model.addAttribute("allNinjas", ninjaServ.getAll());
		return "main/dashboard.jsp";
	}
	
	@GetMapping("/ninja/create")
	public String createNinja(@ModelAttribute("newNinja") Ninja ninja, Model model) {
		model.addAttribute("allDojo", dojoServ.findAll());
		return "ninja/create.jsp";
	}
	
	@PostMapping("/ninja/process/new")
	public String processNewNinja(@Valid @ModelAttribute("newNinja") Ninja newNinja, BindingResult result) {
		if (result.hasErrors()) {
			return "ninja/create.jsp";
		}
		Ninja newlyCreatedNinja = ninjaServ.create(newNinja);
		return "redirect:/dojo/"+newlyCreatedNinja.getDojo().getId();
	}
	
	@GetMapping("/dojo/create")
	public String createDojo(@ModelAttribute("newDojo") Dojo dojo, Model model) {
	
		return "dojo/create.jsp";
	}
	
	@PostMapping("/dojo/process/new")
	public String processNewDojo(@Valid @ModelAttribute("newDojo") Dojo newDojo, BindingResult result, Model model) {
		if (result.hasErrors()) {
			return "dojo/create.jsp";
			
		}
		Dojo newlyCreatedDojo = dojoServ.create(newDojo);
		return "redirect:/dojo/"+newlyCreatedDojo.getId();
	}
	
	@GetMapping("/dojo/{id}")
	public String showOneDojo(@PathVariable("id") Long id,Model model) {
		model.addAttribute("dojo", dojoServ.getOne(id));
		return "dojo/displayOne.jsp";
	}
	
}
