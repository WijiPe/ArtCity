package com.example.artcity.controllers;




import java.util.Random;

import java.nio.file.Path;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.example.artcity.models.Art;
import com.example.artcity.services.ArtService;
import com.example.artcity.services.FileService;

@Controller
public class HomeController {
	
    @Autowired
    FileService fileService;
    
    @Autowired
    ArtService artService;
	
	@GetMapping("/art-city")
	public String welcome(Model model) {
		return "welcome.jsp";
	}
	
	@GetMapping("/art-city/create-art")
	public String artForm(Model model, @ModelAttribute("art")Art art) {
		
		return "artForm.jsp";
	}
	
	 @PostMapping("/uploadFile")
	    public String uploadFile(@RequestParam("file") MultipartFile file, @ModelAttribute("art")Art art) {
		 
		 int leftLimit = 97; // letter 'a'
		    int rightLimit = 122; // letter 'z'
		    int targetStringLength = 10;
		    Random random = new Random();

		    String generatedString = random.ints(leftLimit, rightLimit + 1)
		      .limit(targetStringLength)
		      .collect(StringBuilder::new, StringBuilder::appendCodePoint, StringBuilder::append)
		      .toString();
		    
		    String newName = generatedString+"_"+file.getOriginalFilename();

		    System.out.println(newName);
		    Path copyLocation = fileService.uploadFile(file, newName);
	        fileService.uploadFile(file, newName);
	        
	        art.setArtwork(copyLocation.toString());
	        return "artForm.jsp";
	    }
	 
	    @PostMapping("/submitArtForm")
		public String submitArtForm(@Valid @ModelAttribute("art")Art art, BindingResult result) {
			if(result.hasErrors()) {
				return "artForm.jsp";
			}else {
				artService.createArt(art);
				return "redirect:/art-city/create-art";
			}
		}
	 
}


