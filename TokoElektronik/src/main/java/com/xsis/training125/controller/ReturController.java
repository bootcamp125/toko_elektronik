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
import com.xsis.training125.model.Distributor;
import com.xsis.training125.model.Karyawan;
import com.xsis.training125.model.Pembelian;
import com.xsis.training125.model.Retur;
import com.xsis.training125.service.DistributorService;
import com.xsis.training125.service.KaryawanService;
import com.xsis.training125.service.PembelianService;
import com.xsis.training125.service.ReturService;

@Controller
@RequestMapping("/retur")
public class ReturController {

	@Autowired
	ReturService returService;
	@Autowired
	KaryawanService karyawanService;
	@Autowired
	DistributorService distributorService;
	@Autowired
	PembelianService pembelianService;
	
	
	@RequestMapping(method=RequestMethod.GET)
	public String index(Model model){
		
		List<Retur> retur = returService.getAllRetur();
		model.addAttribute("retur", retur);
		List<Karyawan> karyawan = karyawanService.getAllKaryawan();
		model.addAttribute("karyawan", karyawan);
		List<Distributor> distributor = distributorService.getAllDistributor();
		model.addAttribute("distributor", distributor);
		List<Pembelian> pembelian = pembelianService.getAllPembelian();
		model.addAttribute("pembelian", pembelian);
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
		 Retur result = returService.getReturById(id);
		 return result;
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
