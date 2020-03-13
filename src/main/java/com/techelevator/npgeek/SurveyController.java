package com.techelevator.npgeek;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.techeevator.model.SurveyResults;
import com.techelevator.npgeek.DAO.ParkDao;
import com.techelevator.npgeek.DAO.SurveyDAO;

@Controller
public class SurveyController {
	
	@Autowired
	private SurveyDAO surveyDao;
	private ParkDao parkDao;
		
	@RequestMapping(path="/survey", method=RequestMethod.GET)
	public String showLoginForm(Model modelHolder) {
		if(!modelHolder.containsAttribute("survey")) {
			modelHolder.addAttribute("survey", new SurveyResults());
		}
		return "survey";
	}
	
	@RequestMapping(value={"/survey"}, method=RequestMethod.POST)
	public String insertSurveyToDB(@Valid @ModelAttribute("survey") SurveyResults theSurvey, BindingResult result,
			RedirectAttributes flash) {
		if(result.hasErrors()){
			flash.addFlashAttribute("survey", theSurvey);
			flash.addFlashAttribute(BindingResult.MODEL_KEY_PREFIX + "survey", result);
			return "survey";
		}
		surveyDao.addSurvey(theSurvey);
		
		return "redirect:/surveyResults";
	}

	@RequestMapping(path = "/surveyResults", method = RequestMethod.GET)
	public String showSurveyResults(Model modelHolder) {
		List<SurveyResults> surveyList = surveyDao.getSurveyResults();
		modelHolder.addAttribute("surveyList", surveyList);
		return "surveyResults";
	}

}
