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

import com.xsis.training125.model.Barang;
import com.xsis.training125.model.Retur;
import com.xsis.training125.service.ReturService;

@Controller
@RequestMapping("/retur")
public class ReturController {

	@Autowired
	ReturService returService;
	
	@RequestMapping(method=RequestMethod.GET)
	public String index(Model model){
		List<Retur> returs=returService.getAllRetur();
		model.addAttribute("retur",returs);
		return "retur";
	}
	
	@RequestMapping(value="/save", method=RequestMethod.POST)
	public String savingData(@ModelAttribute Retur retur){
		returService.save(retur);
		return "redirect:/retur";
	}
	
	@RequestMapping(value="/returid/{id}")
	@ResponseBody
	public Retur getReturById(@PathVariable int id){
		Retur retur = returService.getReturById(id);
		return retur;
	}
	

	@RequestMapping(value="/update", method=RequestMethod.PUT)
	@ResponseStatus(HttpStatus.OK)
	public void updateRetur(@RequestBody Retur retur){
		returService.update(retur);
	}
	
	@RequestMapping(value="/delete/{id}", method=RequestMethod.DELETE)
	@ResponseStatus(HttpStatus.OK)
	public void delete(@PathVariable int id){
		returService.delete(id);
	}
}
