	package com.grownited.Controller;
	
	import java.util.List;
	import java.util.Optional;
	
	import org.springframework.beans.factory.annotation.Autowired;
	import org.springframework.stereotype.Controller;
	import org.springframework.ui.Model;
	import org.springframework.web.bind.annotation.GetMapping;
	import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.AccountEntity;
import com.grownited.entity.CategoryEntity;
	import com.grownited.entity.ExpenseEntity;
import com.grownited.entity.SubEntity;
import com.grownited.entity.VendorEntity;
import com.grownited.entity.userentity;
import com.grownited.repository.AccountRepository;
import com.grownited.repository.CategoryRepository;
	import com.grownited.repository.ExpenseRepository;
import com.grownited.repository.SubRepository;
import com.grownited.repository.VendorRepository;

import jakarta.servlet.http.HttpSession;
	
	@Controller
	public class ExpenseController {
		
		@Autowired
		CategoryRepository repositoryCategory;
		
		@Autowired
		ExpenseRepository repositoryexpense;
		
		@Autowired
		SubRepository subRepository;
		
		@Autowired
		VendorRepository vendorRepository;
		
		@Autowired
		AccountRepository accountRepository;
		
		@GetMapping("Expense")
		public String expense(Model model) {
			List<CategoryEntity> categoryList = repositoryCategory.findAll();
			model.addAttribute("categoryList", categoryList);
			List<SubEntity> subList = subRepository.findAll();
			model.addAttribute("subList", subList);
			List<VendorEntity> vendorList = vendorRepository.findAll();
			model.addAttribute("vendorList", vendorList);

			List<AccountEntity> accountList = accountRepository.findAll();
			model.addAttribute("accountList", accountList);
		
		
			return "Expense";
		}
		
		@PostMapping("saveexpense")
		public String saveexpense(ExpenseEntity entityexpense,HttpSession session, Integer categoryId,Integer vendorId,Integer subId,Integer accountId) {
			System.out.println(entityexpense.getTitle());
			System.out.println(entityexpense.getStatus());
			System.out.println(entityexpense.getAmount());
			System.out.println(entityexpense.getTransactionDate());
			System.out.println(entityexpense.getDescription());
			
			userentity user = (userentity)session.getAttribute("user");
			Integer userid = user.getUserid();
			entityexpense.setUserid(userid);
			entityexpense.setCategoryId(categoryId);
			entityexpense.setSubcategoryId(subId);
			entityexpense.setVendorId(vendorId);
			entityexpense.setAccountId(accountId);
			
	
			repositoryexpense.save(entityexpense);
			return "redirect:/Expense";
		}
		
		@GetMapping("ListExpense")
		public String listexpense(Model model) {
			List<ExpenseEntity> expenseList = repositoryexpense.findAll();
			
			// 🔥 Add total expense calculation here
		    double totalExpense = 0;
		    for (ExpenseEntity exp : expenseList) {
		        if (exp.getAmount() != null) {
		        	totalExpense += Double.parseDouble(exp.getAmount());
		        }
		    }
		    
		 // send data to JSP
		    model.addAttribute("expenseList", expenseList);
		    model.addAttribute("totalExpense", totalExpense); // 👈 add this

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
		
		@GetMapping("EditExpense")
		public String editExpense(Integer expenseId,Model model) {
			Optional<ExpenseEntity> op = repositoryexpense.findById(expenseId);
			if (op.isEmpty()) {
				return "redirect:/ListExpense";
			} else {
				model.addAttribute("Expense",op.get());
				return "EditExpense";

			}
		}
		
		@PostMapping("updateexpense")
		public String updateexpense(ExpenseEntity expenseEntity) {
			
			System.out.println(expenseEntity.getTitle());
			System.out.println(expenseEntity.getStatus());
			System.out.println(expenseEntity.getAmount());
			System.out.println(expenseEntity.getTransactionDate());
			System.out.println(expenseEntity.getDescription());

					Optional<ExpenseEntity> op = repositoryexpense.findById(expenseEntity.getExpenseId());
			if(op.isPresent())
			{
			ExpenseEntity dbac = op.get(); 
				dbac.setTitle(expenseEntity.getTitle());
				dbac.setStatus(expenseEntity.getStatus());
				dbac.setAmount(expenseEntity.getAmount());
				dbac.setTransactionDate(expenseEntity.getTransactionDate());
				dbac.setDescription(expenseEntity.getDescription());
				repositoryexpense.save(dbac);
			}
			return "redirect:/ListExpense";
		}
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
