package com.grownited.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.userentity;
import com.grownited.repository.UserRepository;
import com.grownited.service.MailService;

@Controller
public class SessionController {
	
	@Autowired
	MailService serviceMail;
	
	
	@Autowired
	UserRepository repouseRepository;
	
	@Autowired
	PasswordEncoder encoder;
	
	@GetMapping ("signup")
	public String signup() {
		return "Signup";
	}
	
	@GetMapping ("login")
	public String login(String email, String password) {
		return "Login";
	}
	
	@PostMapping ("/saveuser")
	public String saveuser (userentity userentity) {
		System.out.println(userentity.getFirstName());
		System.out.println(userentity.getLastName());
		System.out.println(userentity.getGender());
		System.out.println(userentity.getEmail());
		System.out.println(userentity.getPassword());
		System.out.println(userentity.getRole());
		
		String encPassword = encoder.encode(userentity.getPassword());
		userentity.setPassword(encPassword);
		
		userentity.setRole("USER");
		repouseRepository.save(userentity);
		
		repouseRepository.save(userentity);
		serviceMail.sendWelcomeMail(userentity.getEmail(), userentity.getFirstName());

		return "Login";
	}
	
	@GetMapping ("/forgetpassword")
	public String forgetpassword() {
		return "ForgetPassword";
		
	}
	
	@PostMapping("sendotp")
	public String sendotp() {
		return "UpdatePassword";
	}
	
	@PostMapping ("/updatepassword")
	public String updatepassword() {
		return "Login";
	}
	
	@PostMapping ("signup")
	public String signup(userentity entityuser) {
		repouseRepository.save(entityuser);
		return "Signup";
	}
	
	@GetMapping ("listsignup")
	public String listsignup(Model model) {
		List<userentity> userlist = repouseRepository.findAll();
		model.addAttribute("userlist", userlist);
		
		return "ListSignup";
	}
	

}
