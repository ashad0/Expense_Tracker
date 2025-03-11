package com.grownited.Controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.VendorEntity;
import com.grownited.repository.VendorRepository;

@Controller
public class VendorController {
	
	@Autowired
	VendorRepository repositoryvendor;
	
	@GetMapping("Vendor")
	public String vendor() {
		return "Vendor";
	}
	
	@PostMapping("savevendor")
	public String savevendor(VendorEntity entityvendor) {
		System.out.println(entityvendor.getTitle());
		
		repositoryvendor.save(entityvendor);
		return "Vendor";
	}
	
	@GetMapping("ListVendor")
	public String listvendor(Model model) {
		List<VendorEntity> vendorList = repositoryvendor.findAll();
		model.addAttribute("vendorList", vendorList);
		return "ListVendor";
	}
	
	@GetMapping("deletevendor")
	public String deletevendor(Integer vendorid) {
		repositoryvendor.deleteById(vendorid);
		return "redirect:/ListVendor";
	}
	
	@GetMapping("ViewVendor")
	public String viewvendor(Integer vendorid, Model model) {
			System.out.println("id ===>" + vendorid);
			Optional<VendorEntity> op = repositoryvendor.findById(vendorid);
			if (op.isEmpty()) {
				
			}else {
				VendorEntity vendor = op.get();
				model.addAttribute("vendor", vendor);
			}
		return "ViewVendor";
	}
}
