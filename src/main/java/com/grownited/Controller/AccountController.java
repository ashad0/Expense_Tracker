package com.grownited.Controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.AccountEntity;
import com.grownited.repository.AccountRepository;

@Controller
public class AccountController {
	
	@Autowired
	AccountRepository repositoryaccount;
	
	@GetMapping("Account")
	public String Account() {
		
		return "Account";
	}
	
	@PostMapping("saveaccount")
	public String saveaccount(AccountEntity entityaccount) {
		System.out.println(entityaccount.getTitle());
		System.out.println(entityaccount.getAmount());
		System.out.println(entityaccount.getDescription());
		
		repositoryaccount.save(entityaccount);
		return "Account";
	}
	
	
	@GetMapping("/ViewAccount")
	public String viewaccount( Integer accountid, Model model) {
	    System.out.println("id ===> " + accountid);
	    Optional<AccountEntity> op = repositoryaccount.findById(accountid);
	    if (op.isEmpty()) {
	        // Handle user not found scenario
	    } else {
	        AccountEntity account = op.get();
	        model.addAttribute("account", account);
	    }
	    return "ViewAccount";
	}
	
	
	
	@GetMapping("deleteaccount")
	public String deleteaccount(Integer accountid) {
		repositoryaccount.deleteById(accountid);
		return "redirect:/ListAccount";
	}
	

	@GetMapping("ListAccount")
	public String listaccount(Model model) {
		List<AccountEntity> accountList = repositoryaccount.findAll();
		model.addAttribute("accountList", accountList);
		return "ListAccount";
	}
}
