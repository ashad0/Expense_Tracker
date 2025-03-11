package com.grownited.Controller;


import java.util.List;
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
	public String saveUser (userentity userentity) {
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
	public String sendOtp(String email, Model model) {
		// email valid
		Optional<userentity> op = repouseRepository.findByEmail(email);
		if (op.isEmpty()) {
			// email invalid
			model.addAttribute("error", "Email not found");
			return "ForgetPassword";
		} else {
			String otp = "";
			otp = (int) (Math.random() * 1000000) + "";// 0.25875621458541

			userentity user = op.get();
			user.setOtp(otp);
			repouseRepository.save(user);// update otp for user
			serviceMail.sendOtpForForgetPassword(email, user.getFirstName(), otp);
			return "UpdatePassword";

		}
	}
	

	@PostMapping("updatepassword")
	public String updatePassword(String email, String password, String otp, Model model) {
		Optional<userentity> op = repouseRepository.findByEmail(email);
		if (op.isEmpty()) {
			model.addAttribute("error", "Invalid Data");
			return "ChangePassword";
		} else {
			userentity user = op.get();
			if (user.getOtp().equals(otp)) {
				String encPwd = encoder.encode(password);
				user.setPassword(encPwd);
				user.setOtp("");
				repouseRepository.save(user);// update
			} else {

				model.addAttribute("error", "Invalid Data");
				return "UpdatePassword";
			}
		}
		model.addAttribute("msg","Password updated");
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
	
	@GetMapping("/ViewUser")
	public String viewUser( Integer userid, Model model) {
	    System.out.println("id ===> " + userid);
	    Optional<userentity> op = repouseRepository.findById(userid);
	    if (op.isEmpty()) {
	        // Handle user not found scenario
	    } else {
	        userentity user = op.get();
	        model.addAttribute("user", user);
	    }
	    return "ViewUser";
	}
	
	@GetMapping("deleteuser")
	public String deleteuser(Integer userid) {
		repouseRepository.deleteById(userid);
		return "redirect:/ListUser";
	}
	

	@GetMapping("logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/login";// login url
	}
	
	@GetMapping("ListUser")
	public String listUser(Model model) {
		List<userentity> userList = repouseRepository.findAll();
		model.addAttribute("userList", userList);
		return "ListUser";
	}
}

























