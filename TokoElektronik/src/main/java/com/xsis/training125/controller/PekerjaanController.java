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

import com.xsis.training125.model.Pekerjaan;
import com.xsis.training125.service.PekerjaanService;

@Controller
@RequestMapping("/pekerjaan")
public class PekerjaanController {

	@Autowired
	PekerjaanService pekerjaanService;

	@RequestMapping(method=RequestMethod.GET)
	public String index(Model model){
		
		List<Pekerjaan> pekerjaan = pekerjaanService.getAllPekerjaan();
		model.addAttribute("pekerjaan", pekerjaan);
		return "pekerjaan";
	}
	
	@RequestMapping(value="/save", method=RequestMethod.POST)
	public String savingData(@ModelAttribute Pekerjaan pekerjaan){
		pekerjaanService.save(pekerjaan);
		return "redirect:/pekerjaan";
	}
	
	@RequestMapping(value="/barangid/{id}")
	@ResponseBody
	public Pekerjaan getBarangById(@PathVariable int id){
		Pekerjaan result = pekerjaanService.getPekerjaanById(id);
		 return result;
	}
	
	@RequestMapping(value="/update", method=RequestMethod.PUT)
	@ResponseStatus(HttpStatus.OK)
	public void updatePekerjaan(@RequestBody Pekerjaan pekerjaan){
		pekerjaanService.update(pekerjaan);
	}
	
	@RequestMapping(value="/delete/{id}", method=RequestMethod.DELETE)
	@ResponseStatus(HttpStatus.OK)
	public void delete(@PathVariable int id){
		pekerjaanService.delete(id);
	}
}
