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
import com.xsis.training125.model.Pembelian;
import com.xsis.training125.service.BarangService;
import com.xsis.training125.service.PembelianService;

@Controller
@RequestMapping("/pembelian")
public class PembelianController {

	@Autowired
	PembelianService pembelianService;
	@Autowired
	BarangService barangService;
	
	@RequestMapping(method=RequestMethod.GET)
	public String index(Model model){
		List<Pembelian> pembelian = pembelianService.getAllPembelian();
		model.addAttribute("pembelian",pembelian);
		return "pembelian2";
	}
	
	@RequestMapping(value = "/tambahpembelian", method=RequestMethod.GET)
	public String tambahBarang( Model model){
		List<Barang> barang = barangService.getAllBarang();
		model.addAttribute("barang",barang);
		return "formPembelian";
	}
	

	@RequestMapping(value="/save", method=RequestMethod.POST)
	public String savingData(@ModelAttribute Pembelian pembelian){
		pembelianService.save(pembelian);
		return "redirect:/pembelian";
	}
	
	@RequestMapping(value="/pembelianid/{id}")
	@ResponseBody
	public Pembelian getPembelianById(@PathVariable int id){
		Pembelian result = pembelianService.getPembelianById(id);
		 return result;
	}
	
	@RequestMapping(value="/update", method=RequestMethod.PUT)
	@ResponseStatus(HttpStatus.OK)
	public void updatePembelian(@RequestBody Pembelian pembelian){
		pembelianService.update(pembelian);
	}
	
	@RequestMapping(value="/delete/{id}", method=RequestMethod.DELETE)
	@ResponseStatus(HttpStatus.OK)
	public void delete(@PathVariable int id){
		pembelianService.delete(id);
	}
}
