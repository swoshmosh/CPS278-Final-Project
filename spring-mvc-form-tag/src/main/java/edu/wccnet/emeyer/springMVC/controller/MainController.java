package edu.wccnet.emeyer.springMVC.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import edu.wccnet.emeyer.springMVC.domain.Pet;
import edu.wccnet.emeyer.springMVC.domain.PetRegService;

@Controller
public class MainController {
	@Autowired
	private PetRegService regService;
	@RequestMapping("/showForm")
	public String showForm(Model model) {
		Pet pet = new Pet();
		model.addAttribute("pet", pet);
		return "info-form";
	}
	
	@RequestMapping("/processForm")
	public String processForm(
			@ModelAttribute("pet") Pet pet) {
		System.out.println(pet.getName());
		
		return "confirmation";
	}
	
	@ModelAttribute
	public void populateFormWithData(Model model) {
		model.addAttribute("speciesList", regService.populateSpecies());
		model.addAttribute("genderList", regService.populateGender());
		model.addAttribute("sourceList", regService.populateSource());
	}
	

}