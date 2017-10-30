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

import com.xsis.training125.model.DetailPenjualan;
import com.xsis.training125.service.DetailPenjualanService;


@Controller
@RequestMapping("/detailpenjualan")
public class DetailPenjualanController {

	@Autowired
	DetailPenjualanService detailPenjualanService;
	
	
	@RequestMapping(method=RequestMethod.GET)
	public String index(Model model){
		
		List<DetailPenjualan> detailPenjualan = detailPenjualanService.getAllDetailPenjualan();
		model.addAttribute("detailPenjualan", detailPenjualan);
		return "detailPenjualan";
	}
	
	@RequestMapping(value="/save", method=RequestMethod.POST)
	public String savingData(@ModelAttribute DetailPenjualan detailPenjualan){
		detailPenjualanService.save(detailPenjualan);
		return "redirect:/detaildpenjualan";
	}
	
	@RequestMapping(value="/detailpenjualanid/{id}")
	@ResponseBody
	public DetailPenjualan getReturById(@PathVariable int id){
		DetailPenjualan result = detailPenjualanService.getDetailPenjualanById(id);
		 return result;
	}
	
	@RequestMapping(value="/update", method=RequestMethod.PUT)
	@ResponseStatus(HttpStatus.OK)
	public void updateDetailPenjualan(@RequestBody DetailPenjualan retur){
		detailPenjualanService.update(retur);
	}
	
	@RequestMapping(value="/delete/{id}", method=RequestMethod.DELETE)
	@ResponseStatus(HttpStatus.OK)
	public void delete(@PathVariable int id){
		detailPenjualanService.delete(id);
	}
}
