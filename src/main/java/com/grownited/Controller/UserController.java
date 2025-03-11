package com.grownited.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class UserController {




	@GetMapping("Home")
	public String showHome() {
		return "Home";
	}
}
