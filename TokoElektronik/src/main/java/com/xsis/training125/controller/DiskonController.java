package com.xsis.training125.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;

import com.xsis.training125.model.Diskon;
import com.xsis.training125.service.DiskonService;

@Controller
@RequestMapping("/diskon")
public class DiskonController {
	
	@Autowired
	DiskonService diskonService;

	@RequestMapping(method=RequestMethod.GET)
	public String index(Model model){
		
		List<Diskon> diskon = diskonService.getAllDiskon();
		model.addAttribute("diskon", diskon);
		return "diskon";
	}
	
	@RequestMapping(value="/save", method=RequestMethod.POST)
	public String savingData(@ModelAttribute Diskon diskon){
		diskonService.save(diskon);
		return "redirect:/diskon";
	}
	
	@RequestMapping(value="/diskonid/{id}")
	@ResponseBody
	public Diskon getDiskonById(@PathVariable int id){
		 Diskon result =diskonService.getDiskonById(id);
		 return result;
	}
	
	@RequestMapping(value="/update", method=RequestMethod.PUT)
	@ResponseStatus(HttpStatus.OK)
	public void updateDiskon(@RequestBody Diskon diskon){
		diskonService.update(diskon);
	}
	
	@RequestMapping(value="/delete/{id}", method=RequestMethod.DELETE)
	@ResponseStatus(HttpStatus.OK)
	public void delete(@PathVariable int id){
		diskonService.delete(id);
	}

	@RequestMapping(value="/alldiskon", method=RequestMethod.GET)
	@ResponseBody
	public List<Diskon> getAllEmployees(){
		List<Diskon> diskon= diskonService.getAllDiskon();
		
		return diskon;
	}
	
	
}
