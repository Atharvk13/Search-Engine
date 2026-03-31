package springsearch;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.view.RedirectView;

@Controller
public class SearchController 
{
	@RequestMapping("/home")
	public String home()
	{
		return "home";
	}
	
	@RequestMapping("/search")
	public RedirectView search(@RequestParam("search") String query)
	{
		RedirectView rv=new RedirectView();
		String url="https://www.google.com/search?q="+query;
		rv.setUrl(url);
		return rv;
	}
	@RequestMapping("/user/{userId}")
	public String getUserDetails(@PathVariable("userId") int userId)
	{
		System.out.println("The userId is : "+userId);
		return "home";
	}

}
