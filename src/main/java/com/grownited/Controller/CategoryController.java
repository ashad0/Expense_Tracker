package com.grownited.Controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.CategoryEntity;
import com.grownited.entity.userentity;
import com.grownited.repository.CategoryRepository;

import jakarta.servlet.http.HttpSession;

@Controller
public class CategoryController {
	
	@Autowired
	CategoryRepository repositorycategory;
	
	@GetMapping("Category")
	public String category() {
		return "Category";
	}
	
	@PostMapping("savecategory")
	public String savecategory(CategoryEntity entitycategory, HttpSession session) {
		System.out.println(entitycategory.getTitle());
		
		userentity user = (userentity)session.getAttribute("user");
		Integer userid = user.getUserid();
		entitycategory.setUserid(userid);
		
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
	
	@GetMapping("EditCategory")
	public String editCategory(Integer categoryId,Model model) {
		Optional<CategoryEntity> op = repositorycategory.findById(categoryId);
		if (op.isEmpty()) {
			return "redirect:/ListCategory";
		} else {
			model.addAttribute("Category",op.get());
			return "EditCategory";

		}
	}
	
	@PostMapping("updatecategory")
	public String updatecategory(CategoryEntity categoryEntity) {
		
		System.out.println(categoryEntity.getTitle());
				Optional<CategoryEntity> op = repositorycategory.findById(categoryEntity.getCategoryId());
		if(op.isPresent())
		{
		CategoryEntity dbac = op.get(); 
			dbac.setTitle(categoryEntity.getTitle());
			repositorycategory.save(dbac);
		}
		return "redirect:/ListCategory";
	}
	
}
















