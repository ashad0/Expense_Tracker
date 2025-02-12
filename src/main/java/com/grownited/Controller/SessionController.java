package com.grownited.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class SessionController {
	
	@GetMapping ("/signup")
	public String signup() {
		return "Signup";
	}
	
	@GetMapping ("/login")
	public String login() {
		return "Login";
	}
	
	@PostMapping ("/saveuser")
	public String saveuser () {
		return "Login";
	}
	
	@GetMapping ("/forgetpassword")
	public String forgetpassword() {
		return "ForgetPassword";
	}
	
	@PostMapping ("/updatepassword")
	public String updatepassword() {
		return "Login";
	}
}
