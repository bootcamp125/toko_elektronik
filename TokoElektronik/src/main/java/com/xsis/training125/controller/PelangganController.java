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

import com.xsis.training125.model.Employee;
import com.xsis.training125.model.Pelanggan;
import com.xsis.training125.service.PelangganService;


@Controller
@RequestMapping("/pelanggan")
public class PelangganController {

	@Autowired
	PelangganService pelangganService;
	
	@RequestMapping(method=RequestMethod.GET)
	public String index(Model model){
		
		List<Pelanggan> pelanggan = pelangganService.getAllPelanggan();
		model.addAttribute("pelanggan", pelanggan);
		return "pelanggan";
	}
	
	@RequestMapping(value="/save", method=RequestMethod.POST)
	public String savingData(@ModelAttribute Pelanggan pelanggan){
		pelangganService.save(pelanggan);
		return "redirect:/pelanggan";
	}
	
	
	@RequestMapping(value="/pelangganid/{id}")
	@ResponseBody
	public Pelanggan getPelangganById(@PathVariable int id){
		 Pelanggan result = pelangganService.getPelangganById(id);
		 return result;
	}
	
	@RequestMapping(value="/update", method=RequestMethod.PUT)
	@ResponseStatus(HttpStatus.OK)
	public void updatePelanggan(@RequestBody Pelanggan pelanggan){
		pelangganService.update(pelanggan);
	}
	
	@RequestMapping(value="/delete/{id}", method=RequestMethod.DELETE)
	@ResponseStatus(HttpStatus.OK)
	public void delete(@PathVariable int id){
		pelangganService.delete(id);
	}

	@RequestMapping(value="/allemp", method=RequestMethod.GET)
	@ResponseBody
	public List<Pelanggan> getAllPelanggan(){
		List<Pelanggan> pelanggan = pelangganService.getAllPelanggan();
		
		return pelanggan;
	}
}
