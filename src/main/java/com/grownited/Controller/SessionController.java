package com.grownited.Controller;


import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
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
	
	
	@Autowired
	Cloudinary cloudinary;
	
	@GetMapping ("signup")
	public String signup() {
		return "Signup";
	}
	
	@GetMapping ("login")
	public String login(String email, String password) {
		return "Login";
	}
	
	@PostMapping ("/saveuser")
	public String saveUser (userentity userentity, MultipartFile profilePic) {
	
		// Check if the file is provided
	    if (profilePic == null || profilePic.isEmpty()) {
	        System.out.println("Profile picture is missing!");
	        return "Signup"; // Redirect back to signup page
	    }

	    try {
	        // Upload to Cloudinary
	        Map result = cloudinary.uploader().upload(profilePic.getBytes(), ObjectUtils.emptyMap());
	        userentity.setProfilePicPath(result.get("url").toString());
	    } catch (IOException e) {
	        e.printStackTrace();
	        return "Signup"; // Return to signup page on failure
	    }
		
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
	
	@GetMapping ("/changepassword")
	public String changepassword() {
		return "changepassword";
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
	public String updatepassword(String email, String password, String otp, Model model) {
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
				return "redirect:/updatepassword";
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
		return "redirect:/Login";// login url
	}
	
	@GetMapping("ListUser")
	public String listUser(Model model) {
		List<userentity> userList = repouseRepository.findAll();
		model.addAttribute("userList", userList);
		return "ListUser";
	}
	
	@GetMapping("EditUser")
	public String editUser(Integer userid,Model model) {
		Optional<userentity> op = repouseRepository.findById(userid);
		if (op.isEmpty()) {
			return "redirect:/ListUser";
		} else {
			model.addAttribute("user",op.get());
			return "EditUser";

		}
	}
	@PostMapping("updateuser")
	public String updateUser(userentity userentity) {
		
		System.out.println(userentity.getUserid());
				Optional<userentity> op = repouseRepository.findById(userentity.getUserid());
		if(op.isPresent())
		{
		userentity dbac = op.get(); 
			dbac.setFirstName(userentity.getFirstName());
			dbac.setLastName(userentity.getLastName());
			dbac.setEmail(userentity.getEmail());
			dbac.setMobileNumber(userentity.getMobileNumber());

			repouseRepository.save(dbac);
		}
		return "redirect:/ListUser";
	}
	
	@GetMapping("MyProfile")
	public String MyProfile(HttpSession session, Model model) {
	    // Fetch the logged-in user from the session
	    userentity loggedInUser = (userentity) session.getAttribute("user");

	    if (loggedInUser == null) {
	        return "redirect:/login";  // Redirect to login page if no user is logged in
	    }

	    // Add user data to the model for displaying on the profile page
	    model.addAttribute("user", loggedInUser);

	    return "MyProfile";  // Return the profile page
	}
	
	@GetMapping("AdminProfile")
	public String AdminProfile(HttpSession session, Model model) {
	    // Fetch the logged-in user from the session
	    userentity loggedInUser = (userentity) session.getAttribute("user");

	    if (loggedInUser == null) {
	        return "redirect:/login";  // Redirect to login page if no user is logged in
	    }

	    // Add user data to the model for displaying on the profile page
	    model.addAttribute("user", loggedInUser);

	    return "AdminProfile";  // Return the profile page
	}
	

	@PostMapping("updateprofile")
	public String updateProfile(userentity userentity, HttpSession session) {
	    Optional<userentity> op = repouseRepository.findById(userentity.getUserid());
	    if (op.isPresent()) {
	        userentity dbUser = op.get();
	        dbUser.setFirstName(userentity.getFirstName());
	        dbUser.setLastName(userentity.getLastName());
	        dbUser.setEmail(userentity.getEmail());
	        dbUser.setMobileNumber(userentity.getMobileNumber());

	        repouseRepository.save(dbUser);
	        session.setAttribute("user", dbUser); // session bhi update karo
	    }
	    return "redirect:/MyProfile";
	}

	@GetMapping("EditProfile")
	public String editProfile(Integer userid, Model model) {
	    Optional<userentity> op = repouseRepository.findById(userid);
	    if (op.isPresent()) {
	        model.addAttribute("user", op.get());
	        return "EditProfile";
	    } else {
	        return "redirect:/MyProfile";
	    }
	}
	


}

























