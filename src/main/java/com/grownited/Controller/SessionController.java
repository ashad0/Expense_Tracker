package com.grownited.Controller;


import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.userentity;
import com.grownited.repository.UserRepository;
import com.grownited.service.MailService;

import jakarta.servlet.http.HttpSession;

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
	@PostMapping("authenticate")
	public String authenticate(String email, String password, Model model, HttpSession session) {// sakira@yopmail.com
																									// sakira
		System.out.println(email);
		System.out.println(password);

		// users -> email,password
		Optional<userentity> op = repouseRepository.findByEmail(email);
		// select * from users where email = :email and password = :password
		if (op.isPresent()) {
			// true
			// email
			userentity dbUser = op.get();

			boolean ans = encoder.matches(password, dbUser.getPassword());

			if (ans == true) {
				session.setAttribute("user", dbUser); // session -> user set
				if (dbUser.getRole().equals("ADMIN")) {

					return "redirect:/AdminDashboard";
				} else if (dbUser.getRole().equals("USER")) {

					return "redirect:/Home";
				} else {
					model.addAttribute("error", "Please contact Admin with Error Code #0991");
					return "Login";
				}

			}
		}
		model.addAttribute("error", "Invalid Credentials");
		return "Login";
	}


	@GetMapping("Home")
	public String showHome() {
		return "Home";
	}
	

	@GetMapping("logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/login";// login url
	}
}

























