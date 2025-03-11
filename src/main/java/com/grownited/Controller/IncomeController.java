package com.grownited.Controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.IncomeEntity;
import com.grownited.repository.IncomeRepository;

@Controller
public class IncomeController {

	@Autowired
	IncomeRepository repositoryincome;
	
	@GetMapping("Income")
	public String income() {
		return "Income";
	}
	
	@PostMapping("saveincome")
	public String saveincome(IncomeEntity entityincome) {
		System.out.println(entityincome.getTitle());
		System.out.println(entityincome.getStatus());
		System.out.println(entityincome.getAmount());
		System.out.println(entityincome.getTranscationDate());
		System.out.println(entityincome.getDescription());

		repositoryincome.save(entityincome);
		return "Income";
	}
	
	@GetMapping("ListIncome")
	public String listincome(Model model) {
		List<IncomeEntity> incomeList = repositoryincome.findAll();
		model.addAttribute("incomeList", incomeList);
		return "ListIncome";
	}
	
	@GetMapping("deleteincome")
	public String deleteincome(Integer incomeid) {
		repositoryincome.deleteById(incomeid);
		return "redirect:/ListIncome";
	}
	
	@GetMapping("ViewIncome")
	public String viewincome(Integer incomeid, Model model) {
		System.out.println("id ===>" + incomeid);
		Optional<IncomeEntity> op = repositoryincome.findById(incomeid);
		if (op.isEmpty()) {
			
		}else {
			IncomeEntity income = op.get();
			model.addAttribute("income", income);
		}
		return "ViewIncome";
	}
	
}
