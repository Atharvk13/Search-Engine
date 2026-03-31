package springsearch;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@ControllerAdvice
public class MyExceptionHandler 
{
	@ExceptionHandler(value=Exception.class)
	public String exceptionHandler(Model m)
	{
		m.addAttribute("message","Exception has occured");
		return "errorPage";
	}

}
