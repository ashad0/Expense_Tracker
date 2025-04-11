package com.grownited.Controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.CategoryEntity;
import com.grownited.entity.SubEntity;
import com.grownited.entity.userentity;
import com.grownited.repository.CategoryRepository;
import com.grownited.repository.SubRepository;

import jakarta.servlet.http.HttpSession;

@Controller
public class SubController {

	@Autowired
	SubRepository repositorysub;
	
	@Autowired
	CategoryRepository categoryRepository;
	
	@GetMapping("Sub")
	public String sub(Model model) {
		List<CategoryEntity> categoryList = categoryRepository.findAll();
		model.addAttribute("categoryList", categoryList);
		return "Sub";
	}
	
	@PostMapping("savesub")
	public String savesub(SubEntity entitysub, HttpSession session,Integer categoryId) {
		System.out.println(entitysub.getTitle());
		
		userentity user = (userentity)session.getAttribute("user");
		Integer userid = user.getUserid();
		entitysub.setUserid(userid);
		entitysub.setCategoryId(categoryId);
		
	
		repositorysub.save(entitysub);
		return "redirect:/Sub";
	}
	
	
	@GetMapping("ListSub")
	public String listsub(Model model) {
		List<SubEntity> subList = repositorysub.findAll();
		model.addAttribute("subList", subList);
		return "ListSub";
	}
	
	@GetMapping("deletesub")
	public String deletesub(Integer subid) {
		repositorysub.deleteById(subid);
		return "redirect:/ListSub";
	}
	
	
	@GetMapping("/ViewSub")
	public String viewsub( Integer subid, Model model) {
	    System.out.println("id ===> " + subid);
	    Optional<SubEntity> op = repositorysub.findById(subid);
	    if (op.isEmpty()) {
	        // Handle user not found scenario
	    } else {
	        SubEntity sub = op.get();
	        model.addAttribute("sub", sub);
	    }
	    return "ViewSub";
	}
	
	@GetMapping("EditSub")
	public String editSub(Integer subId,Model model) {
		Optional<SubEntity> op = repositorysub.findById(subId);
		if (op.isEmpty()) {
			return "redirect:/ListSub";
		} else {
			model.addAttribute("Sub",op.get());
			return "EditSub";

		}
	}
	
	@PostMapping("updatesub")
	public String updatesub(SubEntity subEntity) {
		
		System.out.println(subEntity.getTitle());
				Optional<SubEntity> op = repositorysub.findById(subEntity.getSubId());
		if(op.isPresent())
		{
		SubEntity dbac = op.get(); 
			dbac.setTitle(subEntity.getTitle());
			repositorysub.save(dbac);
		}
		return "redirect:/ListSub";
	}
	
	

	
}
