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
import com.xsis.training125.model.Distributor;
import com.xsis.training125.model.Pembelian;
import com.xsis.training125.service.BarangService;
import com.xsis.training125.service.DetailPembelianService;
import com.xsis.training125.service.DistributorService;
import com.xsis.training125.service.PembelianService;

@Controller
@RequestMapping("/")
public class PembelianController {

	@Autowired
	PembelianService pembelianService;
	@Autowired
	DetailPembelianService detailPembelianService;
	@Autowired
	BarangService barangService;
	@Autowired
	DistributorService distributorService;
	
	
	
	@RequestMapping(value = "/tambahdetailpembelian", method=RequestMethod.GET)
	public String tambahPembelian( Model model){
		List<Distributor> distributor= distributorService.getAllDistributor();
		model.addAttribute("distributor",distributor);
		List<Barang> barang = barangService.getAllBarang();
		model.addAttribute("barang", barang);
		List<Pembelian> pembelian = pembelianService.getAllPembelian();
		model.addAttribute("pembelian",pembelian);
		List<DetailPembelian> detailPembelian = detailPembelianService.getAllDetailPembelian();
		model.addAttribute("detailPembelian",detailPembelian);
		return "formDetailPembelian";
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
