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
import com.xsis.training125.model.Diskon;
import com.xsis.training125.service.BarangService;
import com.xsis.training125.service.DiskonService;

@Controller
@RequestMapping("/diskon")
public class DiskonController {

	@Autowired
	DiskonService diskonService;
	@Autowired
	BarangService barangService;

	
	@RequestMapping(method=RequestMethod.GET)
	public String index(Model model){
		
		List<Diskon> diskon = diskonService.getAllDiskon();
		model.addAttribute("diskon", diskon);
		List<Barang> barang = barangService.getAllBarang();
		model.addAttribute("barang", barang);
		return "diskon";
	}
	
	@RequestMapping(value="/tambahdiskon/{id}", method=RequestMethod.GET)
	public String tambahDiskon(Model model, @PathVariable int id){
		
		List<Diskon> diskon = diskonService.getAllDiskon();
		model.addAttribute("diskon", diskon);
		Barang barang = barangService.getBarangById(id);
		model.addAttribute("barang", barang);
		return "formDiskon";
	}
	
	@RequestMapping(value="/save", method=RequestMethod.POST)
	public String savingData(@RequestBody Diskon diskon){
		diskonService.save(diskon);
		return "redirect:/retur";
	}
	
	@RequestMapping(value="/diskonid/{id}")
	@ResponseBody
	public Diskon getDiskonById(@PathVariable int id){
		Diskon result = diskonService.getDiskonById(id);
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
}
