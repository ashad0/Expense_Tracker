package com.grownited.Controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.VendorEntity;
import com.grownited.entity.userentity;
import com.grownited.repository.VendorRepository;

import jakarta.servlet.http.HttpSession;

@Controller
public class VendorController {
	
	@Autowired
	VendorRepository repositoryvendor;
	
	@GetMapping("Vendor")
	public String vendor() {
		return "Vendor";
	}
	
	@PostMapping("savevendor")
	public String savevendor(VendorEntity entityvendor, HttpSession session) {
		System.out.println(entityvendor.getTitle());
		
		userentity user = (userentity)session.getAttribute("user");
		Integer userid = user.getUserid();
		entityvendor.setUserid(userid);
		
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
	
	@GetMapping("EditVendor")
	public String editVendor(Integer vendorId,Model model) {
		Optional<VendorEntity> op = repositoryvendor.findById(vendorId);
		if (op.isEmpty()) {
			return "redirect:/ListVendor";
		} else {
			model.addAttribute("Vendor",op.get());
			return "EditVendor";

		}
	}
	
	@PostMapping("updatevendor")
	public String updatevendor(VendorEntity vendorEntity) {
		
		System.out.println(vendorEntity.getTitle());
				Optional<VendorEntity> op = repositoryvendor.findById(vendorEntity.getVendorId());
		if(op.isPresent())
		{
		VendorEntity dbac = op.get(); 
			dbac.setTitle(vendorEntity.getTitle());
			repositoryvendor.save(dbac);
		}
		return "redirect:/ListVendor";
	}
	
}
