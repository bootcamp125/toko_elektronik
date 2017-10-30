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
import com.xsis.training125.model.Employee;
import com.xsis.training125.model.Karyawan;
import com.xsis.training125.service.EmployeeService;
import com.xsis.training125.service.KaryawanService;

@Controller
@RequestMapping("/karyawan")
public class KaryawanController {
	@Autowired
	KaryawanService karyawanService;

	@RequestMapping(method=RequestMethod.GET)
	public String index(Model model){
		
		List<Karyawan> karyawan = karyawanService.getAllKaryawan();
		model.addAttribute("karyawan", karyawan);
		return "karyawan";
	}
	
	@RequestMapping(value = "/tambahkaryawan", method=RequestMethod.GET)
	public String tambahKaryawan( Model model){
		List<Karyawan> karyawan = karyawanService.getAllKaryawan();
		model.addAttribute("karyawan", karyawan);
		return "formKaryawan";
	}
	
	@RequestMapping(value="/save", method=RequestMethod.POST)
	public String savingData(@ModelAttribute Karyawan karyawan){
		karyawanService.save(karyawan);
		return "redirect:/karyawan";
	}
	
	@RequestMapping(value="/karyawanid/{id}")
	@ResponseBody
	public Karyawan getKaryawanById(@PathVariable int id){
		 Karyawan result = karyawanService.getKaryawanById(id);
		 return result;
	}
	
	@RequestMapping(value="/update", method=RequestMethod.PUT)
	@ResponseStatus(HttpStatus.OK)
	public void updateKaryawan(@RequestBody Karyawan karyawan){
		karyawanService.update(karyawan);
	}
	
	@RequestMapping(value="/delete/{id}", method=RequestMethod.DELETE)
	@ResponseStatus(HttpStatus.OK)
	public void delete(@PathVariable int id){
		karyawanService.delete(id);
	}

	@RequestMapping(value="/allkaryawan", method=RequestMethod.GET)
	@ResponseBody
	public List<Karyawan> getAllKaryawan(){
		List<Karyawan> karyawan = karyawanService.getAllKaryawan();
		
		return karyawan;
	}
}
