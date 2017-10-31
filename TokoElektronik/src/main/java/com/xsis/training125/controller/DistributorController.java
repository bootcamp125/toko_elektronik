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

import com.xsis.training125.model.Distributor;
import com.xsis.training125.model.Karyawan;
import com.xsis.training125.service.DistributorService;

@Controller
@RequestMapping("/distributor")
public class DistributorController {

	@Autowired
	DistributorService distributorService;
	
	@RequestMapping(method=RequestMethod.GET)
	public String index(Model model){
		
		List<Distributor> distributor = distributorService.getAllDistributor();
		model.addAttribute("distributor", distributor);
		return "distributor";
	}
	
	@RequestMapping(value = "/tambahdistributor", method=RequestMethod.GET)
	public String tambahKaryawan(){
		return "formDistributor";
	}
	
	@RequestMapping(value="/save", method=RequestMethod.POST)
	public String savingData(@ModelAttribute Distributor distributor){
		distributorService.save(distributor);
		return "redirect:/distributor";
	}
	
	@RequestMapping(value="/distributorid/{id}")
	@ResponseBody
	public Distributor getDistributorById(@PathVariable int id){
		Distributor result = distributorService.getDistributorById(id);
		 return result;
	}
	
	@RequestMapping(value="/update", method=RequestMethod.PUT)
	@ResponseStatus(HttpStatus.OK)
	public void updateDistributor(@RequestBody Distributor distributor){
		distributorService.update(distributor);
	}
	
	@RequestMapping(value="/delete/{id}", method=RequestMethod.DELETE)
	@ResponseStatus(HttpStatus.OK)
	public void delete(@PathVariable int id){
		distributorService.delete(id);
	}
}
