package com.example.artcity.controllers;

import java.nio.file.Path;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.example.artcity.models.Art;
import com.example.artcity.models.User;
import com.example.artcity.services.ArtService;
import com.example.artcity.services.FileService;
import com.example.artcity.services.UserService;

@Controller
public class HomeController {

	@Autowired
	FileService fileService;

	@Autowired
	ArtService artService;

	@Autowired
	UserService userService;

	@GetMapping("/")
	public String welcome(Model model) {
		return "welcome.jsp";
	}

	@GetMapping("/create-art")
	public String artForm(Model model, @ModelAttribute("art") Art art, HttpSession session) {
		if (session.getAttribute("userId") == null) {
			return "redirect:/login";
		}
		return "artForm.jsp";
	}

	@PostMapping("/uploadFile")
	public String uploadFile(@RequestParam("file") MultipartFile file, @ModelAttribute("art") Art art,
			HttpSession session) {
		if (session.getAttribute("userId") == null) {
			return "redirect:/login";
		}

		int leftLimit = 97; // letter 'a'
		int rightLimit = 122; // letter 'z'
		int targetStringLength = 10;
		Random random = new Random();

		String generatedString = random.ints(leftLimit, rightLimit + 1).limit(targetStringLength)
				.collect(StringBuilder::new, StringBuilder::appendCodePoint, StringBuilder::append).toString();

		String newName = generatedString + "_" + file.getOriginalFilename();

		System.out.println(newName);
		Path copyLocation = fileService.uploadFile(file, newName);
		fileService.uploadFile(file, newName);

		art.setArtwork(copyLocation.toString());
		return "artForm.jsp";
	}

	@PostMapping("/submitArtForm")
	public String submitArtForm(@Valid @ModelAttribute("art") Art art, BindingResult result) {
		if (result.hasErrors()) {
			System.out.println("Error");
			return "artForm.jsp";
		} else {
			art.setCollector(art.getArtist());
			artService.createArt(art);
			System.out.println("Saved Art");
			return "redirect:/dashboard";
		}
	}

	@GetMapping("/dashboard")
	public String dashboard(Model model) {
		List<Art> allArts = artService.findAllToSale();
		model.addAttribute("allArts", allArts);
		return "dashboard.jsp";
	}

	@GetMapping("/dashboard/mostExpensive")
	public String mostExpensive(Model model) {
		List<Art> allArts=artService.findByOrderByPriceDesc();

		model.addAttribute("allArts", allArts);
		return "mostExpensive.jsp";
	}

	
	@GetMapping("/dashboard/anime")
	public String dashboardAnime(Model model) {
		List<Art> allArts=artService.findAllArt();
		model.addAttribute("allArts", allArts);
		return "dashboardAnime.jsp";
	}
	
	@GetMapping("/dashboard/people")
	public String dashboardPeople(Model model) {
		List<Art> allArts=artService.findAllArt();
		model.addAttribute("allArts", allArts);
		return "dashboardPeople.jsp";
	}
	
	@GetMapping("/dashboard/digitalArt")
	public String dashboardDigitalArt(Model model) {
		List<Art> allArts=artService.findAllArt();
		model.addAttribute("allArts", allArts);
		return "dashboardDigitalArt.jsp";
	}
	
	@GetMapping("/dashboard/sport")
	public String dashboardSport(Model model) {
		List<Art> allArts=artService.findAllArt();
		model.addAttribute("allArts", allArts);
		return "dashboardSport.jsp";
	}

	
	@GetMapping("/dashboard/abstract")
	public String dashboardAbstract(Model model) {
		List<Art> allArts=artService.findAllArt();
		model.addAttribute("allArts", allArts);
		return "dashboardAbstract.jsp";
	}
	
	@GetMapping("/dashboard/buy/{id}")
	public String buyArt(@PathVariable("id") Long id) {
		Art artTobuy=artService.findArtById(id);
		
		return null;
	}




	@GetMapping("/profilePageMain/{userid}")
	public String profilePageMain(@PathVariable("userid") Long id, Model model, HttpSession session) {
		if (session.getAttribute("userId") == null) {
			return "redirect:/login";
		}
		User user = userService.findUser((Long) session.getAttribute("userId"));
		model.addAttribute("user", user);
		return "profilePageMain.jsp";
	}

	@GetMapping("/profilePageCreated/{userid}")
	public String profilePageCreated(@PathVariable("userid") Long id, Model model, HttpSession session) {
		if (session.getAttribute("userId") == null) {
			return "redirect:/login";
		}
		User user = userService.findUser((Long) session.getAttribute("userId"));
		model.addAttribute("user", user);
		return "profilePageCreated.jsp";
	}

	@GetMapping("/artDetails/{id}")
	public String artDetails(@PathVariable("id") Long id, Model model, HttpSession session) {
		if (session.getAttribute("userId") == null) {
			return "redirect:/login";
		}
		System.out.println("In artDetails");
		Art art = artService.oneArt(id);
		model.addAttribute("art", art);
		return "artDetails.jsp";
	}

	@GetMapping("/editProfile/{id}")
	public String profileForm(Model model, @ModelAttribute("user") User user, HttpSession session) {
		if (session.getAttribute("userId") == null) {
			return "redirect:/login";
		}
		User oneUser = userService.findUser((Long) session.getAttribute("userId"));
		model.addAttribute("oneUser", oneUser);
		return "profileForm.jsp";
	}

	@PostMapping("/uploadProfilePicture")
	public String uploadProfilePicture(@RequestParam("file") MultipartFile file, HttpSession session) {
		if (session.getAttribute("userId") == null) {
			return "redirect:/login";
		}

		System.out.println("IN uploadProfilePicture method:");
		int leftLimit = 97; // letter 'a'
		int rightLimit = 122; // letter 'z'
		int targetStringLength = 10;
		Random random = new Random();

		String generatedString = random.ints(leftLimit, rightLimit + 1).limit(targetStringLength)
				.collect(StringBuilder::new, StringBuilder::appendCodePoint, StringBuilder::append).toString();

		String newName = generatedString + "_" + file.getOriginalFilename();

		System.out.println(newName);
		Path copyLocation = fileService.uploadProfilePicture(file, newName);
		fileService.uploadProfilePicture(file, newName);
		User user = userService.findUser((Long) session.getAttribute("userId"));
		user.setUserPicture(copyLocation.toString());
		userService.updateUser(user);
		return "redirect:/editProfile/"+user.getId().toString();
	}

	@PutMapping("/submitProfileForm")
	public String submitProfileForm(@RequestParam("description") String description, HttpSession session) {
		if (session.getAttribute("userId") == null) {
			return "redirect:/login";
		}
		User user = userService.findUser((Long) session.getAttribute("userId"));
		System.out.println(user.getUserPicture());
		user.setDescription(description);
		userService.updateUser(user);
		return "redirect:/dashboard";

	}

	@GetMapping("/art/buy/{id}")
	public String buyArt(@PathVariable("id") Long id, HttpSession session) {
		System.out.println("In Art/buy");
		Art artToBuy = artService.findArtById(id);
		User buyer = userService.findUser((Long) session.getAttribute("userId"));
		User seller = userService.findUser(artToBuy.getArtist().getId());
		userService.updateUserWallet(artToBuy.getPrice(), seller, buyer);
		artToBuy.setCollector(buyer);
		artToBuy.setInMarket(false);
		artService.updateArt(artToBuy);
		return "redirect:/dashboard";
	}
	
	@PutMapping("/resell")
	public String resell(Model model,@RequestParam("id") Long id, @RequestParam("price") Double price) {
		Art artToBuy = artService.findArtById(id);
		artToBuy.setInMarket(true);
		artToBuy.setPrice(price);
		artService.updateArt(artToBuy);
		System.out.println("Saved Art");
		return "redirect:/dashboard";
	}
	@PutMapping("/cancel-sell")
	public String cancelSell(Model model, HttpSession session ,@RequestParam("id") Long id) {
		Art art = artService.findArtById(id);
		art.setInMarket(false);
		artService.updateArt(art);
		System.out.println("Edit Art");
		return "redirect:/profilePageMain/"+session.getAttribute("userId");
	}
	
	@GetMapping("/cancel-edit")
	public String cancelEdit(Model model, HttpSession session) {
			return "redirect:/profilePageMain/"+session.getAttribute("userId");
	}
	
//	@GetMapping("/showCollection")
//	public String showCollection(Model model) {
//		return "showCollection.jsp";
//	}
	
	
}
