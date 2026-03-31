package springsearch;

import java.io.File;
import java.io.FileOutputStream;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

@Controller
public class FileUploadController 
{
	@RequestMapping("/fileform")
	public String showUploadForm()
	{
		System.out.println("Inside showUploadMethod");
		return "fileform";
	}
	
	@RequestMapping(path="/uploadimage", method=RequestMethod.POST)
	public String uploadimage(@RequestParam("myfile") CommonsMultipartFile file, HttpSession s, Model model)
	{
		System.out.println(file.getStorageDescription());
		System.out.println(file.getOriginalFilename());
		System.out.println(file.getBytes());
		byte[] data=file.getBytes();
		//we have to save this file to server....
		String path=s.getServletContext().getRealPath("/")+"WEB-INF"+File.separator+"resources"+File.separator+"files"+File.separator+file.getOriginalFilename();
		System.out.println(path);
		try
		{
			FileOutputStream fos=new FileOutputStream(path);
			fos.write(data);
			fos.close();
			System.out.println("Uploaded Successfully");
			model.addAttribute("filename", file.getOriginalFilename());
		}
		catch(Exception e)
		{
			System.out.println("Uploading Error :"+e);
		}
		
		return "filesuccess";
	}
}
