package com.grownited.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.cityEntity;
import com.grownited.repository.CityRepository;

	
@Controller
public class CityController {
	

@Autowired
CityRepository repoCity;
	
	@GetMapping ("/newcity")
	public String newcity() {
		return "Newcity";
	}
	
	@PostMapping ("/savecity")
	public String savecity (cityEntity city) {
		System.out.println(city.getCityName());
		repoCity.save(city);
		return "Newcity";
	}
}
