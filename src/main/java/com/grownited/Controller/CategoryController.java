package com.grownited.Controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.CategoryEntity;
import com.grownited.repository.CategoryRepository;

@Controller
public class CategoryController {
	
	@Autowired
	CategoryRepository repositorycategory;
	
	@GetMapping("Category")
	public String category() {
		return "Category";
	}
	
	@PostMapping("savecategory")
	public String savecategory(CategoryEntity entitycategory) {
		System.out.println(entitycategory.getTitle());
		
		repositorycategory.save(entitycategory);
		return "Category";
	}
	
	@GetMapping("ListCategory")
	public String listcategory(Model model) {
		List<CategoryEntity> categoryList = repositorycategory.findAll();
		model.addAttribute("categoryList", categoryList);
		return "ListCategory";
	}
	
	@GetMapping("deletecategory")
	public String deletecategory(Integer categoryid) {
		repositorycategory.deleteById(categoryid);
		return "redirect:/ListCategory";
	}
	
	@GetMapping("ViewCategory")
	public String viewcategory(Integer categoryid, Model model) {
		System.out.println("id ===>" + categoryid);
		Optional<CategoryEntity> op = repositorycategory.findById(categoryid);
		if (op.isEmpty()) {
			
		}else {
			CategoryEntity category = op.get();
			model.addAttribute("category", category);
		}
		return "ViewCategory";
	}
}
















