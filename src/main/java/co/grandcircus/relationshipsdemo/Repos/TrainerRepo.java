package co.grandcircus.relationshipsdemo.Repos;

import org.springframework.data.jpa.repository.JpaRepository;

import co.grandcircus.relationshipsdemo.Entities.Trainer;


public interface TrainerRepo extends JpaRepository<Trainer,Long>{
// leave empty, automagically inherits JPA stuff
	
	Trainer findByUsernameIgnoreCase(String username);
	
}
