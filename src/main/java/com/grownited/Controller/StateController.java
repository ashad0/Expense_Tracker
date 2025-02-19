package com.grownited.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.stateEntity;
import com.grownited.repository.StateRepository;

@Controller
public class StateController {
	
	@Autowired
	StateRepository repoState;
	
	@GetMapping ("/newstate")
	public String newstate() {
		return "Newstate";
	}
	
	@PostMapping ("/savestate")
	public String savestate (stateEntity state) {
		System.out.println(state.getstatename());
		repoState.save(state);
		return "Newstate";
	}
}
