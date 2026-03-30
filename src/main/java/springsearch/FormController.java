package springsearch;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import model.User;

@Controller
public class FormController 
{
	@RequestMapping("/form")
	public String form()
	{
		return "complex_form";
	}
	
	@RequestMapping(path="/ghar", method=RequestMethod.POST)
	public String ghar(@ModelAttribute User user, Model model)
	{
		System.out.println(user.getSkills());
		return "success";
	}

}
