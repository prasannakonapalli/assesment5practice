package co.grandcircus.assessment5practice;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class CareerController {
	
	@RequestMapping("/")
	public String index() {
		return "year-selection";
	}
	
	@RequestMapping("/year-selection")
	public String showDetails1() {
		
		return "year-selection";
	}
	
	@RequestMapping("/submit-details")
	public String showUserDetails(Model model, @RequestParam("name") String Name, @RequestParam("year") int Year) {
		
		
		if(Year<1943) {
			
			model.addAttribute("message","Sorry, your birth year is out of range");
			return"sorry";
		}
		else if(Year>2003) {
			
			model.addAttribute("message","Sorry, you're too young");
			return"sorry";
		}
		char firstChar = Name.charAt(0);
		if(Character.isLowerCase(firstChar) || firstChar==' ') {
			
			model.addAttribute("nameGuidelines","Sorry, your name does not follow guidelines ");
			return"sorry";
		}
		model.addAttribute("Name", Name);
		model.addAttribute("Year", Year);
		return "career-selection";
	}
	/*
	@RequestMapping("/career-selection")
	public String showCareerDetails() {
		

		return "/career-selection";
	}*/
	@RequestMapping("/career")
	
	public String showCareerChoice(Model model, @RequestParam("careerDisplay") String careerDisplay
		//	, @RequestParam("scrumMaster") String master, @RequestParam("qaAnalyst") String qAnalyst, @RequestParam("businessAnalyst") String bAnalyst
			) {
		
		model.addAttribute("careerDisplay", careerDisplay);
//		model.addAttribute("sMaster", master);
//		model.addAttribute("qAnalyst", qAnalyst);
//		model.addAttribute("bAnalyst", bAnalyst);
		return "career-display";
	}

}
