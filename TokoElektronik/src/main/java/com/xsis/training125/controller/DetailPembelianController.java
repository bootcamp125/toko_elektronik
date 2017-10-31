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
import com.xsis.training125.model.DetailPembelian;
import com.xsis.training125.model.Pembelian;
import com.xsis.training125.service.BarangService;
import com.xsis.training125.service.DetailPembelianService;
import com.xsis.training125.service.PembelianService;

@Controller
@RequestMapping("/detailpembelian")
public class DetailPembelianController {

	@Autowired
	DetailPembelianService detailPembelianService;
	@Autowired
	PembelianService pembelianService;
	@Autowired
	BarangService barangService;
	
	
	@RequestMapping(method=RequestMethod.GET)
	public String index(Model model){
		
		List<DetailPembelian> detailPembelian = detailPembelianService.getAllDetailPembelian();
		model.addAttribute("detailPembelian", detailPembelian);
		List<Pembelian> pembelian = pembelianService.getAllPembelian();
		model.addAttribute("pembelian",  pembelian);
		List<Barang> barang = barangService.getAllBarang();
		model.addAttribute("barang", barang);
		return "detailPembelian";
	}
	
	@RequestMapping(value="/save", method=RequestMethod.POST)
	public String savingData(@ModelAttribute DetailPembelian detailPembelian){
		detailPembelianService.save(detailPembelian);
		return "redirect:/detailPembelian";
	}
	
	@RequestMapping(value="/detailPembelianid/{id}")
	@ResponseBody
	public DetailPembelian getReturById(@PathVariable int id){
		DetailPembelian result = detailPembelianService.getDetailPembelianById(id);
		 return result;
	}
	
	@RequestMapping(value="/update", method=RequestMethod.PUT)
	@ResponseStatus(HttpStatus.OK)
	public void updateDetailPembelian(@RequestBody DetailPembelian detailPembelian){
		detailPembelianService.update(detailPembelian);
	}
	
	@RequestMapping(value="/delete/{id}", method=RequestMethod.DELETE)
	@ResponseStatus(HttpStatus.OK)
	public void delete(@PathVariable int id){
		detailPembelianService.delete(id);
	}
}
