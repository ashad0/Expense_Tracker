package com.grownited.Controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.ExpenseEntity;
import com.grownited.repository.ExpenseRepository;

@Controller
public class ExpenseController {
	
	@Autowired
	ExpenseRepository repositoryexpense;
	
	@GetMapping("Expense")
	public String expense() {
		return "Expense";
	}
	
	@PostMapping("saveexpense")
	public String saveexpense(ExpenseEntity entityexpense) {
		System.out.println(entityexpense.getTitle());
		System.out.println(entityexpense.getStatus());
		System.out.println(entityexpense.getAmount());
		System.out.println(entityexpense.getTransactionDate());
		System.out.println(entityexpense.getDescription());

		repositoryexpense.save(entityexpense);
		return "Expense";
	}
	
	@GetMapping("ListExpense")
	public String listexpense(Model model) {
		List<ExpenseEntity> expenseList = repositoryexpense.findAll();
		model.addAttribute("expenseList", expenseList);
		return "ListExpense";
	}
	
	@GetMapping("deleteexpense")
	public String deleteexpense(Integer expenseid) {
		repositoryexpense.deleteById(expenseid);
		return "redirect:/ListExpense";
	}
	
	@GetMapping("ViewExpense")
	public String viewexpense(Integer expenseid, Model model) {
		System.out.println("id ===>" + expenseid);
		Optional<ExpenseEntity> op = repositoryexpense.findById(expenseid);
		if (op.isEmpty()) {
			
		}else {
			ExpenseEntity expense = op.get();
			model.addAttribute("expense", expense);
		}
		return "ViewExpense";
	}
}
















