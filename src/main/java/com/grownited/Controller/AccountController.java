package com.grownited.Controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.AccountEntity;
import com.grownited.entity.userentity;
import com.grownited.repository.AccountRepository;

import jakarta.servlet.http.HttpSession;

@Controller
public class AccountController {
	
	@Autowired
	AccountRepository repositoryaccount;
	
	@GetMapping("Account")
	public String Account() {
		
		return "Account";
	}
	
	@PostMapping("saveaccount")
	public String saveaccount(AccountEntity entityaccount,HttpSession session) {
		System.out.println(entityaccount.getTitle());
		System.out.println(entityaccount.getAmount());
		System.out.println(entityaccount.getDescription());
		
		
		userentity user = (userentity)session.getAttribute("user");
		Integer userid = user.getUserid();
	    entityaccount.setUserid(userid);
		
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
		// 🔥 Add total expense calculation here
	    double totalAccount = 0;
	    for (AccountEntity acc : accountList) {
	        if (acc.getAmount() != null) {
	        	totalAccount += Double.parseDouble(acc.getAmount());
	        }
	    }
	    
	 // send data to JSP
	    model.addAttribute("accountList", accountList);
	    model.addAttribute("totalAccount", totalAccount); // 👈 add this

		
//		List<Object[]> accountList = repositoryaccount.getAll();
		model.addAttribute("accountList", accountList);
		return "ListAccount";
	}
	
	@GetMapping("EditAccount")
	public String editAccount(Integer accountId,Model model) {
		Optional<AccountEntity> op = repositoryaccount.findById(accountId);
		if (op.isEmpty()) {
			return "redirect:/ListAccount";
		} else {
			model.addAttribute("Account",op.get());
			return "EditAccount";

		}
	}
	@PostMapping("updateaccount")
	public String updateaccount(AccountEntity accountEntity) {
		
		System.out.println(accountEntity.getAmount());
				Optional<AccountEntity> op = repositoryaccount.findById(accountEntity.getAccountId());
		if(op.isPresent())
		{
		AccountEntity dbac = op.get(); 
			dbac.setTitle(accountEntity.getTitle());
			dbac.setAmount(accountEntity.getAmount());
			dbac.setDescription(accountEntity.getDescription());
			repositoryaccount.save(dbac);
		}
		return "redirect:/ListAccount";
	}
}
