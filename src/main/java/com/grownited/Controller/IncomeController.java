package com.grownited.Controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.AccountEntity;
import com.grownited.entity.IncomeEntity;
import com.grownited.entity.userentity;
import com.grownited.repository.AccountRepository;
import com.grownited.repository.IncomeRepository;

import jakarta.servlet.http.HttpSession;

@Controller
public class IncomeController {

	@Autowired
	IncomeRepository repositoryincome;
	
	@Autowired
	AccountRepository accountRepository;
	
	@GetMapping("Income")
	public String income(Model model) {
		List<AccountEntity> accountList = accountRepository.findAll();
		model.addAttribute("accountList", accountList);
		return "Income";
	}
	
	@PostMapping("saveincome")
	public String saveincome(IncomeEntity entityincome,HttpSession session, Integer accountId) {
		System.out.println(entityincome.getTitle());
		System.out.println(entityincome.getStatus());
		System.out.println(entityincome.getAmount());
		System.out.println(entityincome.getTranscationDate());
		System.out.println(entityincome.getDescription());

		userentity user = (userentity)session.getAttribute("user");
		Integer userid = user.getUserid();
		entityincome.setUserId(userid);
		entityincome.setAccountId(accountId);
		
		repositoryincome.save(entityincome);
		return "Income";
	}
	
	@GetMapping("ListIncome")
	public String listincome(Model model) {
		List<IncomeEntity> incomeList = repositoryincome.findAll();
		
		// 🔥 Add total expense calculation here
	    double totalIncome = 0;
	    for (IncomeEntity exp : incomeList) {
	        if (exp.getAmount() != null) {
	        	totalIncome += Double.parseDouble(exp.getAmount());
	        }
	    }
	    
	 // send data to JSP
	    model.addAttribute("incomeList", incomeList);
	    model.addAttribute("totalIncome", totalIncome); // 👈 add this

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
	
	@GetMapping("EditIncome")
	public String editIncome(Integer incomeId,Model model) {
		Optional<IncomeEntity> op = repositoryincome.findById(incomeId);
		if (op.isEmpty()) {
			return "redirect:/ListIncome";
		} else {
			model.addAttribute("Income",op.get());
			return "EditIncome";

		}
	}
	
	@PostMapping("updateincome")
	public String updateincome(IncomeEntity incomeEntity) {
		
		System.out.println(incomeEntity.getTitle());
		System.out.println(incomeEntity.getStatus());
		System.out.println(incomeEntity.getAmount());
		System.out.println(incomeEntity.getTranscationDate());
		System.out.println(incomeEntity.getDescription());

				Optional<IncomeEntity> op = repositoryincome.findById(incomeEntity.getIncomeId());
		if(op.isPresent())
		{
		IncomeEntity dbac = op.get(); 
			dbac.setTitle(incomeEntity.getTitle());
			dbac.setStatus(incomeEntity.getStatus());
			dbac.setAmount(incomeEntity.getAmount());
			dbac.setTranscationDate(incomeEntity.getTranscationDate());
			dbac.setDescription(incomeEntity.getDescription());
			repositoryincome.save(dbac);
		}
		return "redirect:/ListIncome";
	}
	
}
