package co.grandcircus.relationshipsdemo;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import co.grandcircus.relationshipsdemo.Entities.Trainer;
import co.grandcircus.relationshipsdemo.Repos.TrainerRepo;

@Controller
@RequestMapping("/login")
public class LoginController {

	@Autowired
	private TrainerRepo tRepo;
	
	@Autowired
	private HttpSession sesh;
	
	@RequestMapping("/")
	public ModelAndView login() {
		return new ModelAndView("login-form");
	}
	
	@PostMapping("/")
	public ModelAndView loginSubmit(
			@RequestParam("username") String username,
			@RequestParam("password") String password,
			RedirectAttributes redir
			) {
		
		Trainer trainer = tRepo.findByUsernameIgnoreCase(username);
		
		if(trainer == null || !password.equals(trainer.getPassword())) {
			ModelAndView mav = new ModelAndView("login-form");
			mav.addObject("message", "Incorrect username or password");
			return mav;
		}
		sesh.setAttribute("user", trainer);
		redir.addFlashAttribute("message", "Welcome back " + trainer.getUsername());
		
		return new ModelAndView("redirect:/trainer/");
	}
	
	@RequestMapping("/logout")
	public ModelAndView logout(RedirectAttributes redir) {
		sesh.invalidate();
		redir.addFlashAttribute("message", "Successfully Logged Out");
		return new ModelAndView("redirect:/login/");
	}
}
