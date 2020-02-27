package co.grandcircus.relationshipsdemo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import co.grandcircus.relationshipsdemo.Entities.Trainer;
import co.grandcircus.relationshipsdemo.Repos.TrainerRepo;

@Controller
@RequestMapping("/trainer")
public class TrainerController {
	@Autowired
	private TrainerRepo tRepo;
	
	@RequestMapping("/")
	public ModelAndView show() {
		return new ModelAndView("trainer-list", "trainers", tRepo.findAll());
	}
	
	@RequestMapping("/add")
	public ModelAndView addTrainer() {
		return new ModelAndView("trainer-add");
	}
	
	@PostMapping("/add")
	public ModelAndView addTrainer(Trainer trainer) {
		tRepo.save(trainer);
		return new ModelAndView("redirect:/trainer/");
	}
	
	@RequestMapping("/{id}")
	public ModelAndView showDetails(@PathVariable("id") Trainer trainer) {
		return new ModelAndView("trainer-show", "trainer", trainer);
	}
}
