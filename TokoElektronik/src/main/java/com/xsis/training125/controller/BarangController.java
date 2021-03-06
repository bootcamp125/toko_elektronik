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
import com.xsis.training125.model.Employee;
import com.xsis.training125.model.Karyawan;
import com.xsis.training125.model.Penjualan;
import com.xsis.training125.service.BarangService;
import com.xsis.training125.service.KaryawanService;


@Controller
@RequestMapping("/barang")
public class BarangController {

	@Autowired
	BarangService barangService;
	
	
	@RequestMapping(value = " ", method=RequestMethod.GET)
	public String index(Model model){
		List<Barang> barang = barangService.getAllBarang();
		model.addAttribute("barang", barang);
		return "barang2";
	}
	
	@RequestMapping(value = "/tambahbarang", method=RequestMethod.GET)
	public String tambahBarang( Model model){
		List<Barang> barang = barangService.getAllBarang();
		model.addAttribute("barang", barang);
		return "formBarang";
	}
	
	@RequestMapping(value = "/detailbarang/{id}")
	public String getInvoice(@PathVariable int id, Model model) {
		Barang barang = barangService.getBarangById(id);
		model.addAttribute("barang", barang);
		
		return "detailBarang";
	}
	
	@RequestMapping(value="/save", method=RequestMethod.POST)
	public String savingData(@RequestBody Barang barang){
		barangService.save(barang);
		return "redirect:/barang";
	}
	
	@RequestMapping(value="/barangid/{id}")
	@ResponseBody
	public Barang getBarangById(@PathVariable int id){
		 Barang result = barangService.getBarangById(id);
		 return result;
	}
	
	@RequestMapping(value="/update", method=RequestMethod.PUT)
	@ResponseStatus(HttpStatus.OK)
	public void updateBarang(@RequestBody Barang barang){
		barangService.update(barang);
	}
	
	@RequestMapping(value="/delete/{id}", method=RequestMethod.DELETE)
	@ResponseStatus(HttpStatus.OK)
	public void delete(@PathVariable int id){
		barangService.delete(id);
	}
}
