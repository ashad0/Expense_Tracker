package com.grownited.Controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.SubEntity;
import com.grownited.repository.SubRepository;

@Controller
public class SubController {

	@Autowired
	SubRepository repositorysub;
	
	@GetMapping("Sub")
	public String sub() {
		return "Sub";
	}
	
	@PostMapping("savesub")
	public String savesub(SubEntity entitysub) {
		System.out.println(entitysub.getTitle());
		repositorysub.save(entitysub);
		return "Sub";
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
	
}
