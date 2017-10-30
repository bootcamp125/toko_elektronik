package com.xsis.training125.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.xsis.training125.model.Retur;
import com.xsis.training125.service.ReturService;

@Controller
@RequestMapping("/retur")
public class ReturController {

	@Autowired
	ReturService returService;
	
	@RequestMapping(method=RequestMethod.GET)
	public String index(Model model){
		List<Retur> returs=returService.getAllRetur();
		model.addAttribute("retur",returs);
		return "retur";
	}
}
