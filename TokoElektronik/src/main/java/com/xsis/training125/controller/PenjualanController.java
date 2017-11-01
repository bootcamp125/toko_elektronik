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
import com.xsis.training125.model.DetailPenjualan;
import com.xsis.training125.model.Distributor;
import com.xsis.training125.model.Penjualan;
import com.xsis.training125.service.BarangService;
import com.xsis.training125.service.DetailPenjualanService;
import com.xsis.training125.service.PenjualanService;

@Controller
@RequestMapping("/penjualan")
public class PenjualanController {
	
	@Autowired
	PenjualanService penjualanService;
	@Autowired
	DetailPenjualanService detailPenjualanService;
	@Autowired
	BarangService barangService;
	
	@RequestMapping(method=RequestMethod.GET)
	public String index(Model model){
		List<Penjualan> penjualan = penjualanService.getAllPenjualan();
		model.addAttribute("penjualan",penjualan);
		List<Barang> barang = barangService.getAllBarang();
		model.addAttribute("barang", barang);
		return "penjualan";
	}
	@RequestMapping(value = "/tambahdetailpenjualan", method=RequestMethod.GET)
	public String tambahPembelian( Model model){
		List<Penjualan> penjualan = penjualanService.getAllPenjualan();
		model.addAttribute("penjualan",penjualan);
		List<DetailPenjualan> detailPenjualan = detailPenjualanService.getAllDetailPenjualan();
		model.addAttribute("detailPenjualan", detailPenjualan);
		return "formPenjualan";
	}
	
	@RequestMapping(value="/save", method=RequestMethod.POST)
	public String savingData(@ModelAttribute Penjualan penjualan){
		penjualanService.save(penjualan);
		return "redirect:/penjualan";
	}
	
	@RequestMapping(value="/penjualanid/{id}")
	@ResponseBody
	public Penjualan getPenjualanById(@PathVariable int id){
		Penjualan result = penjualanService.getPenjualanById(id);
		return result;
	}
	
	@RequestMapping(value="/update", method=RequestMethod.PUT)
	@ResponseStatus(HttpStatus.OK)
	public void updatePenjualan(@RequestBody Penjualan penjualan){
		penjualanService.update(penjualan);
	}
	
	@RequestMapping(value="/delete/{id}", method=RequestMethod.DELETE)
	@ResponseStatus(HttpStatus.OK)
	public void delete(@PathVariable int id){
		penjualanService.delete(id);
	}
}
