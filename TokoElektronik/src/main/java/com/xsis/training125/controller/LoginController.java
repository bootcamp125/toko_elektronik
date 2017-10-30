package com.xsis.training125.controller;

import java.util.List;

import org.hibernate.mapping.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.xsis.training125.model.Barang;
import com.xsis.training125.model.Karyawan;
import com.xsis.training125.service.BarangService;
import com.xsis.training125.service.KaryawanService;

@Controller
@RequestMapping("/")
public class LoginController {

	@Autowired
	KaryawanService karyawanService;
	@Autowired
	BarangService barangService;

	@RequestMapping(method = RequestMethod.GET)
	public String index() {
		return "login";
	}

	@RequestMapping(value = "/login/{username}/{pass}", method = RequestMethod.GET)
	@ResponseBody
	public List<Karyawan> Login(@PathVariable String username, @PathVariable String pass, Model model) {
		List<Karyawan> karyawan = karyawanService.Login(username, pass);
		model.addAttribute("karyawan", karyawan);
		return karyawan;
	}

	@RequestMapping(value = "/home/{username}", method = RequestMethod.GET)
	public String getKaryawanByUsename(@PathVariable String username, Model model) {
		List<Karyawan> karyawan = karyawanService.getKaryawanByUsername(username);
		model.addAttribute("karyawan", karyawan);
		List<Barang> barang = barangService.getAllBarang();
		model.addAttribute("barang", barang);
		return "home";
	}
}
