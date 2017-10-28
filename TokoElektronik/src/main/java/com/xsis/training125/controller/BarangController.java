package com.xsis.training125.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.xsis.training125.model.Barang;
import com.xsis.training125.model.Employee;
import com.xsis.training125.service.BarangService;


@Controller
@RequestMapping("/barang")
public class BarangController {

	@Autowired
	BarangService barangService;

	@RequestMapping(method=RequestMethod.GET)
	public String index(Model model){
		
		List<Barang> barang = barangService.getAllBarang();
		model.addAttribute("barang", barang);
		return "barang";
	}
	
	@RequestMapping(value="/save", method=RequestMethod.POST)
	public String savingData(@ModelAttribute Barang barang){
		barangService.save(barang);
		return "redirect:/barang";
	}
}
