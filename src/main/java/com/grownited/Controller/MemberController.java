package com.grownited.Controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.MemberEntity;
import com.grownited.repository.MemberRepository;

@Controller
public class MemberController {
	
	@Autowired
	MemberRepository repositoryMember;
	
	@GetMapping("newmember")
	public String newMember() {
		return "NewMember";
	}
	
	@PostMapping("savemember")
	public String saveMember(MemberEntity entityMember) {
		repositoryMember.save(entityMember);
		return "NewMember";
	}
	
	@GetMapping("listmember")
	public String listMember(Model model) {
		List<MemberEntity> memberlist = repositoryMember.findAll();
		
		model.addAttribute("memberlist", memberlist);
		
		return "ListMember";
	}

	@GetMapping("viewmember")
	public String viewMember(Integer memberId,Model model) {
		
		System.out.println("id ===> " + memberId);
		Optional<MemberEntity> op = repositoryMember.findById(memberId);
		if (op.isEmpty()) {
			
		}else {
			MemberEntity member = op.get();
			
			model.addAttribute("member", member);
			
		}
		
		return "ViewMember";
	}
	
	@GetMapping("deletemember")
	public String deleteMember(Integer memberId) {
		repositoryMember.deleteById(memberId);
		return "redirect:/listmember";
	}
	
}
















